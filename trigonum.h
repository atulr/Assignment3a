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

class Trigonum {
	Vector p1, p2, p3;
	int id;
	Material mat;
	Color surface_color();
	float Ka();
	float Kd();
	Vector normal();
public:
	Trigonum();
	Trigonum(Vector point1, Vector point2, Vector point3, int i, int mat_id) {
		p1 = point1;
		p2 = point2;
		p3 = point3;
		id = i;
		//this can probably go somewhere else..
		int start_matls = loadi(0, 9);
		int shader_addr = start_matls + (mat_id * 25);
		float Ka = 0.7f, Kd = 0.3f;
		Color matl (loadf(shader_addr, 4), loadf(shader_addr, 5), loadf(shader_addr, 6));
		Material material(matl, Ka, Kd);
		mat = material;

	}
	Vector vertex1(){ return p1;}
	Vector vertex2(){ return p2;}
	Vector vertex3(){ return p3;}
	float intersects(Ray ray);
	Color lambertian_shader(Ray ray, float t, PointLight lights, Color ambient_light); //think of parameters
};


#endif /* TRIGONUM_H_ */
