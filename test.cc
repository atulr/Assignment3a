#include "trax.hpp"
#include "main.h"


// Only include stdio for printf on the non-trax version
#if TRAX==0
#include <stdio.h>
#include <curses.h>
#endif

inline Trigonum loadTriangleFromMemory(const int &addr) {
	Vector e1( loadf( addr, 0 ), loadf( addr, 1 ), loadf(addr, 2 ) );
	Vector e2( loadf(addr, 3 ), loadf(addr, 4 ), loadf(addr, 5 ) );
	Vector e3( loadf(addr, 6 ), loadf(addr, 7 ), loadf(addr, 8 ) );
	Trigonum triangle(e1, e2, e3, loadi(addr, 9), loadi(addr, 10));
	return triangle;
}

inline Vector loadFooFromMemory(const int &address) {
	float x, y, z;
	x = loadf(address, 0);
	y = loadf(address, 1);
	z = loadf(address, 2);
	return Vector(x, y, z);
}


inline PointLight loadLightFromMemory(int addr) {
  return PointLight(loadFooFromMemory(addr), Color(1.f, 1.f, 1.f));
}

int main()
{
	trax_setup();
	int xres = loadi( 0, 1 );
	int yres = loadi( 0, 4 );
	int start_fb = GetFrameBuffer();
	float t;
	
	PointLight light = loadLightFromMemory(loadi(0, 12));

	Color ambient_light(0.4f, 0.4f, 0.4f);
	Color result;

	Image image(xres, yres, start_fb);
	
	PinHoleCamera camera(loadi(0, 10));
	Ray ray;

	int start_tris = loadi(0, 28);
	int num_tris = loadi(0, 29);
	Shader shade;

	for(int pix = atomicinc(0); pix < xres*yres; pix = atomicinc(0)){
		int i = pix / xres;
		int j = pix % xres;

		float x = (float)(2.0f * (j - xres/2.0f + 0.5f)/xres);
		float y = (float)(2.0f * (i - yres/2.0f + 0.5f)/yres);

		camera.make_ray(ray, x, y);
		HitRecord hit_record;
		 for(int k = 0; k < num_tris; k++) {
		  Trigonum tri = loadTriangleFromMemory(start_tris + (k * 11));
		  tri.intersects(hit_record, ray, start_tris + (k * 11));
		  result = shade.lambertian(hit_record, ray, light, ambient_light);
		  image.set(i, j, result);
		 }
	}
	trax_cleanup();
}
