/*
 * hit_record.h
 *
 *  Created on: Oct 3, 2011
 *      Author: atulrungta
 */

#ifndef HIT_RECORD_H_
#define HIT_RECORD_H_

const float max_t = 9999999999.f;
const float eps = 0.001f;

#include "vector.h"
#include "trigonum.h"
//class Trigonum;

class HitRecord {
	float distance;
	Trigonum object;
public:
	HitRecord() {
		distance = max_t;
	}
	void set_t(float t);
	float min_t();
	bool hit(float t, const int &address);
	Trigonum obj_id();
	Trigonum loadTriangleFromMemory(const int &address);
};

#endif /* HIT_RECORD_H_ */
