/*
 * hit_record.cpp
 *
 *  Created on: Sep 26, 2011
 *      Author: atulrungta
 */

#include "trax.hpp"
#include "hit_record.h"

// Only include stdio for printf on the non-trax version
#if TRAX==0
#include <stdio.h>
#endif

Trigonum HitRecord::loadTriangleFromMemory(const int &addr) {
	Vector e1( loadf( addr, 0 ), loadf( addr, 1 ), loadf(addr, 2 ) );
	Vector e2( loadf(addr, 3 ), loadf(addr, 4 ), loadf(addr, 5 ) );
	Vector e3( loadf(addr, 6 ), loadf(addr, 7 ), loadf(addr, 8 ) );
	Trigonum triangle(e1, e2, e3, loadi(addr, 9), loadi(addr, 10));
	return triangle;
}

bool HitRecord::hit(float t, const int &tri_address) {
	if (t < eps || t == max_t) return false;

	if (t < distance) {
		distance = t;
		object = loadTriangleFromMemory(tri_address);

		return true;
	}
	return false;
}

float HitRecord::min_t() {
	return distance;
}

Trigonum HitRecord::obj_id() {
	return object;
}


