#ifndef __PINHOLECAMERA_H__
#define __PINHOLECAMERA_H__

#include "vector.h"
#include "ray.h"
#include "math.h"

inline Vector loadVectorFromMemory(const int &address) {
	float x, y, z;
	x = loadf(address, 0);
	y = loadf(address, 1);
	z = loadf(address, 2);
	return Vector(x, y, z);
}


class PinHoleCamera {
	Vector position;
	Vector look_at_point;
	Vector up;
	Vector u, v;
	float aspect_ratio;
	float ulen;
public:
	PinHoleCamera(int address){
		position = loadVectorFromMemory(address);
		up = loadVectorFromMemory(address + 9);
		look_at_point = loadVectorFromMemory(address + 12);

		u = loadVectorFromMemory(address + 15);
		v = loadVectorFromMemory(address + 18);
		ulen = 0.194f;
		aspect_ratio = 1.f;
	}
	void make_ray(Ray& ray, float x, float y);
};

#endif
