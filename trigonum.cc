/*
 * trigonum.cc
 *
 *  Created on: Sep 27, 2011
 *      Author: atulrungta
 */
#include "trax.hpp"
#include "trigonum.h"

// Only include stdio for printf on the non-trax version
#if TRAX==0
#include <stdio.h>
#endif

float Trigonum::Ka(){
	return mat.Ka();
}

float Trigonum::Kd(){
	return mat.Kd();
}

Color Trigonum::surface_color() {
	return mat.get_color();
}

Vector Trigonum::normal() {
	Vector edge1 = p1.sub(p2);
	Vector edge2 = p2.sub(p3);

	Vector n = edge1.cross(edge2);
	return n.normalize();
}

float Trigonum::intersects(Ray ray) {
	Vector edge1 = p1.sub(p2);
	Vector edge2 = p2.sub(p3);
	Vector r1 = ray.get_direction().cross(edge2);
	float denom = edge1.dot(r1);

	float inv_denom = (float)1.f/denom;

	Vector s = ray.get_origin().sub(p3);
	float b1 = (float)(s.dot(r1)) * inv_denom;
	if (b1 < 0.f || b1 > 1)
		return 0.f;
	Vector r2 = s.cross(edge1);
	float b2 = (float)(ray.get_direction().dot(r2)) * inv_denom;

	if( b2 < 0.f || (b1 + b2) > 1.f)
		return 0.f;
	float t = (float)((edge2.dot(r2)) * inv_denom);
	return t;
}

Color Trigonum::lambertian_shader(Ray ray, float t, PointLight point_light, Color ambient_light) {
	float costheta, cosphi;
	Ray ray_to_light_source;
	Vector hit_position = ray.get_origin().add((ray.get_direction().scmult(t)));
	Vector N = normal();
	costheta = N.dot(ray.get_direction().normalize());
	if (costheta > 0.f)
		N = N.scmult(-1.f);

	Color light = ambient_light.times(Ka());

		Vector L = point_light.get_position().sub(hit_position);
		Vector Ln = L.normalize();
		cosphi = N.dot(Ln);
		ray_to_light_source.set_origin(hit_position);
		ray_to_light_source.set_direction(L);
		if (cosphi > 0.f) {
//			 if (!intersects(ray_to_light_source, L.length())) {
				light = light.add(point_light.get_color().times((float)(Kd() * cosphi)));
//			 }else{
//			 	//it's a shadow with ambient lighting :D:D:D
//			 }
		}
	light = light.times(surface_color());
	return light;
}

