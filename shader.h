/*
 * shader.h
 *
 *  Created on: Oct 4, 2011
 *      Author: atulrungta
 */

#ifndef SHADER_H_
#define SHADER_H_

#include "hit_record.h"
#include "trigonum.h"
#include "ray.h"
#include "color.h"
#include "point_light.h"

class Shader{

public:
	Color lambertian(HitRecord hit_record, Ray ray, PointLight lights, Color ambient_light);
};

#endif /* SHADER_H_ */
