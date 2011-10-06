/*
 * shader.cc
 *
 *  Created on: Oct 4, 2011
 *      Author: atulrungta
 */
#include "trax.hpp"
#include "shader.h"
// #include "vector.cc"

// Only include stdio for printf on the non-trax version
#if TRAX==0
#include <stdio.h>
#endif

inline Vector normal(Trigonum triangle) {
	Vector edge1 = triangle.vertex1().sub(triangle.vertex2());
	Vector edge2 = triangle.vertex2().sub(triangle.vertex3());;

	Vector n = edge1.cross(edge2);
	return n.normalize();
}

Color Shader::lambertian(HitRecord hit_record, Ray ray, PointLight point_light, Color ambient_light) {

	float costheta, cosphi;
	Ray ray_to_light_source;
	Trigonum tri = hit_record.obj_id();
	Vector hit_position = ray.get_origin().add((ray.get_direction().scmult(hit_record.min_t())));
	Vector N = normal(tri);
	costheta = N.dot(ray.get_direction().normalize());
	if (costheta > 0.f)
		N = N.scmult(-1.f);

	Color light = ambient_light.times(tri.Ka());

	Vector L = point_light.get_position().sub(hit_position);
	Vector Ln = L.normalize();
	cosphi = N.dot(Ln);
	ray_to_light_source.set_origin(hit_position);
	ray_to_light_source.set_direction(Ln);
	if (cosphi > 0.f) {
		if (!tri.intersects_other_triangles(hit_record, ray_to_light_source, L.length())) {
			light = light.add(point_light.get_color().times((float)(tri.Kd() * cosphi)));
		}else{
			 //it's a shadow with ambient lighting :D:D:D
		}
	}
	light = light.times(tri.surface_color());
	return light;
}



