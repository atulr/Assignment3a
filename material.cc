#include "trax.hpp"
#include "material.h"

// Only include stdio for printf on the non-trax version
#if TRAX==0
#include <stdio.h>
#endif

float Mat::Ka() {
	return ka;
}

float Mat::Kd() {
	return kd;
}

Color Mat::get_color() {
	return color_of_material;
}
