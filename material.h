#ifndef __MATERIAL_H__
#define __MATERIAL_H__

#include "color.h"

class Mat {
private:
	Color color_of_material;
	float ka;
	float kd;
public:
	Mat() {}
	Mat(Color material, float coefficient1, float coefficient2) {
		color_of_material = material;
		ka = coefficient1;
		kd = coefficient2;
	}

	Color get_color();
	float Ka(); 
	float Kd(); 
};

#endif
