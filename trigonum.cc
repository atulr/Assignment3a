/*
 * trigonum.cc
 *
 *  Created on: Sep 27, 2011
 *      Author: atulrungta
 */
#include "trax.hpp"
#include "hit_record.h"
#include "trigonum.h"
#include <stdlib.h>

// Only include stdio for printf on the non-trax version
#if TRAX==0
#include <stdio.h>
#endif

inline Trigonum loadTriangleFromMemory(const int &addr) {
	Vector e1( loadf( addr, 0 ), loadf( addr, 1 ), loadf(addr, 2 ) );
	Vector e2( loadf(addr, 3 ), loadf(addr, 4 ), loadf(addr, 5 ) );
	Vector e3( loadf(addr, 6 ), loadf(addr, 7 ), loadf(addr, 8 ) );
	Trigonum triangle(e1, e2, e3, loadi(addr, 9), loadi(addr, 10));
	return triangle;
}

int Trigonum::get_id(){
	return id;
}

float Trigonum::Ka(){
	return mat.Ka();
}

float Trigonum::Kd(){
	return mat.Kd();
}

Color Trigonum::surface_color() {
	return mat.get_color();
}

void Trigonum::intersects(HitRecord &hit_record, Ray ray, const int &tri_address) {
	Vector edge1 = p1.sub(p2);
	Vector edge2 = p2.sub(p3);

	Vector r1 = ray.get_direction().cross(edge2);
	float denom = edge1.dot(r1);
	float t = 0.f;
	if (abs(denom) < eps) t = max_t;

	float inv_denom = (float)1.f/denom;

	Vector s = ray.get_origin().sub(p3);
	float b1 = (float)(s.dot(r1)) * inv_denom;
	if (b1 < 0.f || b1 > 1.f)
		t = max_t;
	Vector r2 = s.cross(edge1);
	float b2 = (float)(ray.get_direction().dot(r2)) * inv_denom;

	if( b2 < 0.f || (float)(b1 + b2) > 1.f)
		t = max_t;

	if (t != max_t) {
		t = (float)((edge2.dot(r2)) * inv_denom);
		hit_record.hit(t, tri_address);
	}
}

bool Trigonum::intersects_other_triangles(HitRecord &hit_record, Ray ray, float distance) {
	int start_tris = loadi(0, 28);
	int num_tris = loadi(0, 29);
	float t;
	for(int k = 0; k < num_tris; k++) {
		Trigonum tri = loadTriangleFromMemory(start_tris + (k * 11));
		tri.intersects(hit_record, ray, start_tris + (k * 11));
		if ( hit_record.min_t() < distance && hit_record.min_t() > 0.01f){
			return true;
		}
	}
	return false;
}
