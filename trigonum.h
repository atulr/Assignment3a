/*
 * trigonum.h
 *
 *  Created on: Sep 27, 2011
 *      Author: atulrungta
 */
#ifndef TRIGONUM_H_
#define TRIGONUM_H_

#include "ray.h"
#include "color.h"
#include "vector.h"
#include "point_light.h"
#include "material.h"
//#include "hit_record.h"

class HitRecord;

class Trigonum {
	Vector p1, p2, p3;
	int id;
	Mat mat;
public:
	Trigonum(){};
	Trigonum(Vector point1, Vector point2, Vector point3, int i, int mat_id) {
		p1 = point1;
		p2 = point2;
		p3 = point3;
		id = i;
		int start_matls = loadi(0, 9);
		int shader_addr = start_matls + (mat_id * 25);
		float Ka = 0.3f, Kd = 0.7f;
		Color matl (loadf(shader_addr, 4), loadf(shader_addr, 5), loadf(shader_addr, 6));
		Mat material(matl, Ka, Kd);
		mat = material;
	}

	Color surface_color();
	float Ka();
	float Kd();
	int get_id();
	Vector vertex1(){ return p1;}
	Vector vertex2(){ return p2;}
	Vector vertex3(){ return p3;}
	void intersects(HitRecord &record, Ray ray, const int &address);
	bool intersects_other_triangles(HitRecord &record, Ray ray, float distance);
};


#endif /* TRIGONUM_H_ */
