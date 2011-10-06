; ModuleID = 'rt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.1"

%0 = type { double, float }
%struct.Box = type { %struct.Color, %struct.Color }
%struct.Color = type { float, float, float }
%struct.HitRecord = type { float, %struct.Trigonum }
%struct.Image = type { i32, i32, i32 }
%struct.Material = type { %struct.Color, float, float }
%struct.PinHoleCamera = type { %struct.Color, %struct.Color, %struct.Color, %struct.Color, %struct.Color, float, float }
%struct.PointLight = type { %struct.Color, %struct.Color }
%struct.Ray = type { %struct.Color, %struct.Color }
%struct.Shader = type <{ i8 }>
%struct.Sphere = type { float, float, float, float, %struct.Material }
%struct.Trigonum = type { %struct.Color, %struct.Color, %struct.Color, i32, %struct.Material }
%struct.Vector = type { float, float, float }

define internal fastcc void @_ZN8TrigonumC1E6VectorS0_S0_ii(%struct.Trigonum* %this, double %point1.0, float %point1.1, double %point2.0, float %point2.1, double %point3.0, float %point3.1, i32 %i, i32 %mat_id) nounwind ssp align 2 {
return:
  %tmp80 = bitcast double %point1.0 to i64
  %tmp58 = bitcast double %point2.0 to i64
  %tmp36 = bitcast double %point3.0 to i64
  %0 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 0, i32 0
  %1 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 0
  %2 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 1
  %3 = bitcast %struct.Trigonum* %this to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %2, align 4
  %4 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %4, align 4
  %5 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 0
  %6 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 1
  store float 0.000000e+00, float* %6, align 4
  %7 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 2
  store float 0.000000e+00, float* %7, align 4
  %8 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 0
  store float 0.000000e+00, float* %8, align 4
  %9 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 1
  store float 0.000000e+00, float* %9, align 4
  %10 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 2
  store float 0.000000e+00, float* %10, align 4
  %tmp93 = trunc i64 %tmp80 to i32
  %tmp94 = bitcast i32 %tmp93 to float
  store float %tmp94, float* %0, align 4
  %11 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 0, i32 1
  %tmp89 = lshr i64 %tmp80, 32
  %tmp90 = trunc i64 %tmp89 to i32
  %tmp91 = bitcast i32 %tmp90 to float
  store float %tmp91, float* %11, align 4
  %12 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 0, i32 2
  store float %point1.1, float* %12, align 4
  %tmp71 = trunc i64 %tmp58 to i32
  %tmp72 = bitcast i32 %tmp71 to float
  store float %tmp72, float* %1, align 4
  %13 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 1
  %tmp67 = lshr i64 %tmp58, 32
  %tmp68 = trunc i64 %tmp67 to i32
  %tmp69 = bitcast i32 %tmp68 to float
  store float %tmp69, float* %13, align 4
  %14 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 2
  store float %point2.1, float* %14, align 4
  %tmp49 = trunc i64 %tmp36 to i32
  %tmp50 = bitcast i32 %tmp49 to float
  store float %tmp50, float* %5, align 4
  %15 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 1
  %tmp45 = lshr i64 %tmp36, 32
  %tmp46 = trunc i64 %tmp45 to i32
  %tmp47 = bitcast i32 %tmp46 to float
  store float %tmp47, float* %15, align 4
  %16 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 2
  store float %point3.1, float* %16, align 4
  %17 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 3
  store i32 %i, i32* %17, align 4
  %18 = call i32 @llvm.trax.loadi(i32 0, i32 9)
  %19 = mul nsw i32 %mat_id, 25
  %20 = add nsw i32 %19, %18
  %21 = call float @llvm.trax.loadf(i32 %20, i32 6)
  %22 = call float @llvm.trax.loadf(i32 %20, i32 5)
  %23 = call float @llvm.trax.loadf(i32 %20, i32 4)
  store float %23, float* %8, align 4
  %24 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 1
  store float %22, float* %24, align 4
  %25 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 2
  store float %21, float* %25, align 4
  %26 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 1
  store float 0x3FD3333340000000, float* %26, align 4
  %27 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 2
  store float 0x3FE6666660000000, float* %27, align 4
  ret void
}

declare i32 @llvm.trax.loadi(i32, i32) nounwind

declare float @llvm.trax.loadf(i32, i32) nounwind

declare void @llvm.trax.storef(float, i32, i32) nounwind

declare float @llvm.trax.invsqrt(float) nounwind

define i32 @main() nounwind ssp {
entry:
  %0 = alloca %struct.Color, align 8
  %1 = alloca %struct.Color, align 8
  %edge1.i.i = alloca %struct.Color, align 8
  %n.i.i = alloca %struct.Color, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %tri.i.i = alloca %struct.Trigonum, align 8
  %ray_to_light_source42.i = alloca %struct.Box, align 8
  %hit_record40.i = alloca %struct.HitRecord, align 8
  %4 = alloca %struct.Color, align 8
  %5 = alloca %struct.Color, align 8
  %6 = alloca %struct.Color, align 8
  %L.i = alloca %struct.Color, align 8
  %7 = alloca %struct.Color, align 8
  %V.i = alloca %struct.Color, align 8
  %ln.i = alloca %struct.Color, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %ray = alloca %struct.Box, align 8
  %hit_record = alloca %struct.HitRecord, align 8
  %tri = alloca %struct.Trigonum, align 8
  %10 = call i32 @llvm.trax.loadi(i32 0, i32 1)
  %11 = call i32 @llvm.trax.loadi(i32 0, i32 4)
  %12 = call i32 @llvm.trax.loadi(i32 0, i32 7) nounwind
  %13 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %14 = call float @llvm.trax.loadf(i32 %13, i32 0) nounwind
  %15 = call float @llvm.trax.loadf(i32 %13, i32 1) nounwind
  %16 = call float @llvm.trax.loadf(i32 %13, i32 2) nounwind
  %tmp434 = bitcast float %15 to i32
  %tmp435 = zext i32 %tmp434 to i96
  %17 = call i32 @llvm.trax.loadi(i32 0, i32 10)
  %18 = call float @llvm.trax.loadf(i32 %17, i32 0) nounwind
  %19 = call float @llvm.trax.loadf(i32 %17, i32 1) nounwind
  %20 = call float @llvm.trax.loadf(i32 %17, i32 2) nounwind
  %21 = add nsw i32 %17, 9
  %22 = call float @llvm.trax.loadf(i32 %21, i32 0) nounwind
  %23 = call float @llvm.trax.loadf(i32 %21, i32 1) nounwind
  %24 = call float @llvm.trax.loadf(i32 %21, i32 2) nounwind
  %25 = add nsw i32 %17, 12
  %26 = call float @llvm.trax.loadf(i32 %25, i32 0) nounwind
  %27 = call float @llvm.trax.loadf(i32 %25, i32 1) nounwind
  %28 = call float @llvm.trax.loadf(i32 %25, i32 2) nounwind
  %29 = add nsw i32 %17, 15
  %30 = call float @llvm.trax.loadf(i32 %29, i32 0) nounwind
  %31 = call float @llvm.trax.loadf(i32 %29, i32 1) nounwind
  %32 = call float @llvm.trax.loadf(i32 %29, i32 2) nounwind
  %33 = add nsw i32 %17, 18
  %34 = call float @llvm.trax.loadf(i32 %33, i32 0) nounwind
  %35 = call float @llvm.trax.loadf(i32 %33, i32 1) nounwind
  %36 = call float @llvm.trax.loadf(i32 %33, i32 2) nounwind
  %37 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %38 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %39 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %40 = bitcast %struct.Box* %ray to i8*
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %39, align 4
  %41 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %41, align 4
  %42 = call i32 @llvm.trax.loadi(i32 0, i32 28)
  %43 = call i32 @llvm.trax.loadi(i32 0, i32 29)
  %44 = call i32 @llvm.trax.atominc(i32 0)
  %45 = mul nsw i32 %10, %11
  %46 = sitofp i32 %10 to float
  %47 = fdiv float %46, -2.000000e+00
  %48 = sitofp i32 %11 to float
  %49 = fdiv float %48, -2.000000e+00
  %50 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 0
  %51 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 1
  %52 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 2
  %53 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 0
  %54 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 1
  %55 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 2
  %56 = getelementptr inbounds %struct.Color* %7, i64 0, i32 0
  %57 = getelementptr inbounds %struct.Color* %7, i64 0, i32 1
  %58 = getelementptr inbounds %struct.Color* %7, i64 0, i32 2
  %59 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %60 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %61 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %62 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %63 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 0
  %64 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 1
  %65 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 2
  %66 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 0
  %67 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 1
  %68 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 2
  %69 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 0
  %70 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 1
  %71 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 2
  %72 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 0
  %73 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 1
  %74 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 2
  %75 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 0
  %hit_record.0 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 0
  %hit_record.11075.0 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 0
  %hit_record.11075.1 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 1
  %hit_record.11075.2 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 2
  %hit_record.1.1.0 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 0
  %hit_record.1.1.1 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 1
  %hit_record.1.1.2 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 2
  %hit_record.1.2.0 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 0
  %hit_record.1.2.1 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 1
  %hit_record.1.2.2 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 2
  %hit_record.1.3 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 3
  %hit_record.1.41037.0 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 0
  %hit_record.1.41037.1 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 1
  %hit_record.1.41037.2 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 2
  %hit_record.1.4.1 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 1
  %hit_record.1.4.2 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 2
  %ray1085.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %ray1085.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %ray1085.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %ray.1.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %ray.1.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %ray.1.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %76 = getelementptr inbounds %struct.Color* %6, i64 0, i32 0
  %77 = getelementptr inbounds %struct.Color* %6, i64 0, i32 1
  %78 = getelementptr inbounds %struct.Color* %6, i64 0, i32 2
  %79 = getelementptr inbounds %struct.Color* %1, i64 0, i32 0
  %80 = getelementptr inbounds %struct.Color* %1, i64 0, i32 1
  %81 = getelementptr inbounds %struct.Color* %1, i64 0, i32 2
  %82 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 0
  %83 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 1
  %84 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 2
  %85 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  %86 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  %87 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  %88 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 0
  %89 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 1
  %90 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 2
  %91 = getelementptr inbounds %struct.Color* %5, i64 0, i32 0
  %92 = getelementptr inbounds %struct.Color* %5, i64 0, i32 1
  %93 = getelementptr inbounds %struct.Color* %5, i64 0, i32 2
  %tmp2508 = bitcast float %14 to i32
  %tmp2509 = zext i32 %tmp2508 to i96
  %tmp2504 = shl nuw nsw i96 %tmp435, 32
  %tmp2496 = bitcast float %16 to i32
  %tmp1259 = zext i32 %tmp2496 to i128
  %tmp1260 = shl nuw nsw i128 %tmp1259, 64
  %94 = getelementptr inbounds %struct.Color* %4, i64 0, i32 0
  %95 = getelementptr inbounds %struct.Color* %4, i64 0, i32 1
  %96 = getelementptr inbounds %struct.Color* %4, i64 0, i32 2
  %97 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 0
  %98 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 1
  %99 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 2
  %hit_record40.i.0 = getelementptr inbounds %struct.HitRecord* %hit_record40.i, i64 0, i32 0
  %hit_record40.i.11067.0 = getelementptr inbounds %struct.HitRecord* %hit_record40.i, i64 0, i32 1, i32 0, i32 0
  %hit_record40.i.11067.1 = getelementptr inbounds %struct.HitRecord* %hit_record40.i, i64 0, i32 1, i32 0, i32 1
  %hit_record40.i.11067.2 = getelementptr inbounds %struct.HitRecord* %hit_record40.i, i64 0, i32 1, i32 0, i32 2
  %hit_record40.i.1.1.0 = getelementptr inbounds %struct.HitRecord* %hit_record40.i, i64 0, i32 1, i32 1, i32 0
  %hit_record40.i.1.1.1 = getelementptr inbounds %struct.HitRecord* %hit_record40.i, i64 0, i32 1, i32 1, i32 1
  %hit_record40.i.1.1.2 = getelementptr inbounds %struct.HitRecord* %hit_record40.i, i64 0, i32 1, i32 1, i32 2
  %hit_record40.i.1.2.0 = getelementptr inbounds %struct.HitRecord* %hit_record40.i, i64 0, i32 1, i32 2, i32 0
  %hit_record40.i.1.2.1 = getelementptr inbounds %struct.HitRecord* %hit_record40.i, i64 0, i32 1, i32 2, i32 1
  %hit_record40.i.1.2.2 = getelementptr inbounds %struct.HitRecord* %hit_record40.i, i64 0, i32 1, i32 2, i32 2
  %hit_record40.i.1.3 = getelementptr inbounds %struct.HitRecord* %hit_record40.i, i64 0, i32 1, i32 3
  %hit_record40.i.1.41045.0 = getelementptr inbounds %struct.HitRecord* %hit_record40.i, i64 0, i32 1, i32 4, i32 0, i32 0
  %hit_record40.i.1.41045.1 = getelementptr inbounds %struct.HitRecord* %hit_record40.i, i64 0, i32 1, i32 4, i32 0, i32 1
  %hit_record40.i.1.41045.2 = getelementptr inbounds %struct.HitRecord* %hit_record40.i, i64 0, i32 1, i32 4, i32 0, i32 2
  %hit_record40.i.1.4.1 = getelementptr inbounds %struct.HitRecord* %hit_record40.i, i64 0, i32 1, i32 4, i32 1
  %hit_record40.i.1.4.2 = getelementptr inbounds %struct.HitRecord* %hit_record40.i, i64 0, i32 1, i32 4, i32 2
  %ray_to_light_source42.i1553.0 = getelementptr inbounds %struct.Box* %ray_to_light_source42.i, i64 0, i32 0, i32 0
  %ray_to_light_source42.i1553.1 = getelementptr inbounds %struct.Box* %ray_to_light_source42.i, i64 0, i32 0, i32 1
  %ray_to_light_source42.i1553.2 = getelementptr inbounds %struct.Box* %ray_to_light_source42.i, i64 0, i32 0, i32 2
  %ray_to_light_source42.i.1.0 = getelementptr inbounds %struct.Box* %ray_to_light_source42.i, i64 0, i32 1, i32 0
  %ray_to_light_source42.i.1.1 = getelementptr inbounds %struct.Box* %ray_to_light_source42.i, i64 0, i32 1, i32 1
  %ray_to_light_source42.i.1.2 = getelementptr inbounds %struct.Box* %ray_to_light_source42.i, i64 0, i32 1, i32 2
  %100 = getelementptr inbounds %struct.HitRecord* %hit_record40.i, i64 0, i32 0
  br label %bb13

bb:                                               ; preds = %bb13
  %101 = sdiv i32 %storemerge, %10
  %102 = srem i32 %storemerge, %10
  %103 = sitofp i32 %102 to float
  %104 = fadd float %103, %47
  %105 = fadd float %104, 5.000000e-01
  %106 = fmul float %105, 2.000000e+00
  %107 = fdiv float %106, %46
  %108 = sitofp i32 %101 to float
  %109 = fadd float %108, %49
  %110 = fadd float %109, 5.000000e-01
  %111 = fmul float %110, 2.000000e+00
  %112 = fdiv float %111, %48
  store float %26, float* %53, align 8
  store float %27, float* %54, align 4
  store float %28, float* %55, align 8
  %113 = fmul float %34, %112
  %114 = fmul float %35, %112
  %115 = fmul float %36, %112
  %tmp901 = bitcast float %113 to i32
  %tmp902 = zext i32 %tmp901 to i64
  %tmp895 = bitcast float %114 to i32
  %tmp896 = zext i32 %tmp895 to i64
  %tmp897 = shl nuw i64 %tmp896, 32
  %ins899 = or i64 %tmp902, %tmp897
  %116 = fmul float %30, %107
  %117 = fmul float %31, %107
  %118 = fmul float %32, %107
  store float %116, float* %56, align 8
  store float %117, float* %57, align 4
  store float %118, float* %58, align 8
  %tmp887 = bitcast i64 %ins899 to double
  %119 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %7, double %tmp887, float %115) nounwind
  %mrv_gr14.i60 = extractvalue %0 %119, 0
  %mrv_gr16.i = extractvalue %0 %119, 1
  %120 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %ln.i, double %mrv_gr14.i60, float %mrv_gr16.i) nounwind
  %mrv_gr24.i62 = extractvalue %0 %120, 0
  %tmp791 = bitcast double %mrv_gr24.i62 to i64
  %mrv_gr26.i64 = extractvalue %0 %120, 1
  %tmp778 = trunc i64 %tmp791 to i32
  %tmp779 = bitcast i32 %tmp778 to float
  store float %tmp779, float* %50, align 8
  %tmp781 = lshr i64 %tmp791, 32
  %tmp782 = trunc i64 %tmp781 to i32
  %tmp783 = bitcast i32 %tmp782 to float
  store float %tmp783, float* %51, align 4
  store float %mrv_gr26.i64, float* %52, align 8
  %121 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %V.i) nounwind
  %mrv_gr30.i = extractvalue %0 %121, 0
  %tmp769 = bitcast double %mrv_gr30.i to i64
  %mrv_gr32.i = extractvalue %0 %121, 1
  %tmp759 = lshr i64 %tmp769, 32
  %tmp946 = trunc i64 %tmp769 to i32
  %tmp947 = bitcast i32 %tmp946 to float
  %tmp943 = trunc i64 %tmp759 to i32
  %tmp944 = bitcast i32 %tmp943 to float
  store float %18, float* %37, align 8
  store float %19, float* %59, align 4
  store float %20, float* %60, align 8
  store float %tmp947, float* %38, align 4
  store float %tmp944, float* %61, align 4
  store float %mrv_gr32.i, float* %62, align 4
  store float 0.000000e+00, float* %63, align 4
  store float 0.000000e+00, float* %64, align 4
  store float 0.000000e+00, float* %65, align 4
  store float 0.000000e+00, float* %66, align 4
  store float 0.000000e+00, float* %67, align 4
  store float 0.000000e+00, float* %68, align 4
  store float 0.000000e+00, float* %69, align 4
  store float 0.000000e+00, float* %70, align 4
  store float 0.000000e+00, float* %71, align 4
  store float 0.000000e+00, float* %72, align 4
  store float 0.000000e+00, float* %73, align 4
  store float 0.000000e+00, float* %74, align 4
  store float 1.000000e+10, float* %75, align 8
  %122 = mul nsw i32 %10, %101
  %123 = add nsw i32 %122, %102
  %124 = mul nsw i32 %123, 3
  %125 = add nsw i32 %12, %124
  br label %bb11

bb1:                                              ; preds = %bb11
  %126 = mul nsw i32 %storemerge1, 11
  %127 = add nsw i32 %126, %42
  store i32 %127, i32* %9, align 4
  call fastcc void @_Z22loadTriangleFromMemoryRKi(%struct.Trigonum* noalias sret %tri, i32* %9)
  store i32 %127, i32* %8, align 4
  call fastcc void @_ZN8Trigonum10intersectsE9HitRecord3RayRKi(%struct.Trigonum* %tri, %struct.HitRecord* byval %hit_record, %struct.Box* byval %ray, i32* %8)
  %tmp1028 = load float* %hit_record.0, align 8
  %tmp1076 = load float* %hit_record.11075.0, align 4
  %tmp1077 = load float* %hit_record.11075.1, align 4
  %tmp1078 = load float* %hit_record.11075.2, align 4
  %tmp1064 = load float* %hit_record.1.1.0, align 4
  %tmp1065 = load float* %hit_record.1.1.1, align 4
  %tmp1066 = load float* %hit_record.1.1.2, align 4
  %tmp1055 = load float* %hit_record.1.2.0, align 4
  %tmp1056 = load float* %hit_record.1.2.1, align 4
  %tmp1057 = load float* %hit_record.1.2.2, align 4
  %tmp = load i32* %hit_record.1.3, align 4
  %tmp1038 = load float* %hit_record.1.41037.0, align 4
  %tmp1039 = load float* %hit_record.1.41037.1, align 4
  %tmp1040 = load float* %hit_record.1.41037.2, align 4
  %tmp1035 = load float* %hit_record.1.4.1, align 4
  %tmp1036 = load float* %hit_record.1.4.2, align 4
  %tmp1086 = load float* %ray1085.0, align 8
  %tmp1087 = load float* %ray1085.1, align 4
  %tmp1088 = load float* %ray1085.2, align 8
  %tmp1082 = load float* %ray.1.0, align 4
  %tmp1083 = load float* %ray.1.1, align 4
  %tmp1084 = load float* %ray.1.2, align 4
  %tmp1915 = bitcast float %tmp1082 to i32
  %tmp1916 = zext i32 %tmp1915 to i96
  %tmp1909 = bitcast float %tmp1083 to i32
  %tmp1910 = zext i32 %tmp1909 to i96
  %tmp1911 = shl nuw nsw i96 %tmp1910, 32
  %ins1913 = or i96 %tmp1916, %tmp1911
  %tmp1903 = bitcast float %tmp1084 to i32
  %tmp1463 = zext i96 %ins1913 to i128
  %mask1464 = and i128 %memtmp.i90.0, -79228162514264337593543950336
  %tmp1457 = zext i32 %tmp1903 to i128
  %tmp1458 = shl nuw nsw i128 %tmp1457, 64
  %mask1459 = or i128 %mask1464, %tmp1463
  %ins1460 = or i128 %mask1459, %tmp1458
  %tmp1445 = lshr i128 %ins1460, 64
  %tmp1446 = trunc i128 %tmp1445 to i32
  %tmp1447 = bitcast i32 %tmp1446 to float
  %128 = fmul float %tmp1082, %tmp1028
  %129 = fmul float %tmp1083, %tmp1028
  %130 = fmul float %tmp1447, %tmp1028
  %tmp1938 = bitcast float %128 to i32
  %tmp1939 = zext i32 %tmp1938 to i96
  %tmp1932 = bitcast float %129 to i32
  %tmp1933 = zext i32 %tmp1932 to i96
  %tmp1934 = shl nuw nsw i96 %tmp1933, 32
  %ins1936 = or i96 %tmp1939, %tmp1934
  %tmp1926 = bitcast float %130 to i32
  %tmp1441 = zext i96 %ins1936 to i128
  %mask1442 = and i128 %memtmp4.i91.0, -79228162514264337593543950336
  %tmp1435 = zext i32 %tmp1926 to i128
  %tmp1436 = shl nuw nsw i128 %tmp1435, 64
  %mask1437 = or i128 %mask1442, %tmp1441
  %ins1438 = or i128 %mask1437, %tmp1436
  %tmp1577 = bitcast float %128 to i32
  %tmp1578 = zext i32 %tmp1577 to i64
  %tmp1571 = bitcast float %129 to i32
  %tmp1572 = zext i32 %tmp1571 to i64
  %tmp1573 = shl nuw i64 %tmp1572, 32
  %ins1575 = or i64 %tmp1578, %tmp1573
  %ins1438.tr = trunc i128 %ins1438 to i96
  %tmp1961 = bitcast float %tmp1086 to i32
  %tmp1962 = zext i32 %tmp1961 to i96
  %tmp1955 = bitcast float %tmp1087 to i32
  %tmp1956 = zext i32 %tmp1955 to i96
  %tmp1957 = shl nuw nsw i96 %tmp1956, 32
  %ins1959 = or i96 %tmp1962, %tmp1957
  %tmp1949 = bitcast float %tmp1088 to i32
  %tmp1419 = zext i96 %ins1959 to i128
  %mask1420 = and i128 %memtmp10.i92.0, -79228162514264337593543950336
  %tmp1413 = zext i32 %tmp1949 to i128
  %tmp1414 = shl nuw nsw i128 %tmp1413, 64
  %mask1415 = or i128 %mask1420, %tmp1419
  %ins1416 = or i128 %mask1415, %tmp1414
  store float %tmp1086, float* %76, align 8
  store float %tmp1087, float* %77, align 4
  %tmp1401 = lshr i128 %ins1416, 64
  %tmp1402 = trunc i128 %tmp1401 to i32
  %tmp1403 = bitcast i32 %tmp1402 to float
  store float %tmp1403, float* %78, align 8
  %tmp1563 = bitcast i64 %ins1575 to double
  %tmp1558 = lshr i96 %ins1438.tr, 64
  %tmp1559 = trunc i96 %tmp1558 to i32
  %tmp1560 = bitcast i32 %tmp1559 to float
  %131 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %6, double %tmp1563, float %tmp1560) nounwind
  %mrv_gr20.i111 = extractvalue %0 %131, 0
  %tmp1396 = bitcast double %mrv_gr20.i111 to i64
  %mrv_gr22.i = extractvalue %0 %131, 1
  %tmp1386 = lshr i64 %tmp1396, 32
  %tmp2259 = bitcast float %tmp1064 to i32
  %tmp2260 = zext i32 %tmp2259 to i96
  %tmp2253 = bitcast float %tmp1065 to i32
  %tmp2254 = zext i32 %tmp2253 to i96
  %tmp2255 = shl nuw nsw i96 %tmp2254, 32
  %ins2257 = or i96 %tmp2260, %tmp2255
  %tmp2247 = bitcast float %tmp1066 to i32
  %tmp2146 = zext i96 %ins2257 to i128
  %mask2147 = and i128 %memtmp.i81.i.0, -79228162514264337593543950336
  %tmp2140 = zext i32 %tmp2247 to i128
  %tmp2141 = shl nuw nsw i128 %tmp2140, 64
  %mask2142 = or i128 %mask2147, %tmp2146
  %ins2143 = or i128 %mask2142, %tmp2141
  %tmp2189 = bitcast float %tmp1064 to i32
  %tmp2190 = zext i32 %tmp2189 to i64
  %tmp2183 = bitcast float %tmp1065 to i32
  %tmp2184 = zext i32 %tmp2183 to i64
  %tmp2185 = shl nuw i64 %tmp2184, 32
  %ins2187 = or i64 %tmp2190, %tmp2185
  %ins2143.tr = trunc i128 %ins2143 to i96
  %tmp2282 = bitcast float %tmp1076 to i32
  %tmp2283 = zext i32 %tmp2282 to i96
  %tmp2276 = bitcast float %tmp1077 to i32
  %tmp2277 = zext i32 %tmp2276 to i96
  %tmp2278 = shl nuw nsw i96 %tmp2277, 32
  %ins2280 = or i96 %tmp2283, %tmp2278
  %tmp2270 = bitcast float %tmp1078 to i32
  %tmp2124 = zext i96 %ins2280 to i128
  %mask2125 = and i128 %memtmp4.i.i.0, -79228162514264337593543950336
  %tmp2118 = zext i32 %tmp2270 to i128
  %tmp2119 = shl nuw nsw i128 %tmp2118, 64
  %mask2120 = or i128 %mask2125, %tmp2124
  %ins2121 = or i128 %mask2120, %tmp2119
  store float %tmp1076, float* %79, align 8
  store float %tmp1077, float* %80, align 4
  %tmp2106 = lshr i128 %ins2121, 64
  %tmp2107 = trunc i128 %tmp2106 to i32
  %tmp2108 = bitcast i32 %tmp2107 to float
  store float %tmp2108, float* %81, align 8
  %tmp2175 = bitcast i64 %ins2187 to double
  %tmp2170 = lshr i96 %ins2143.tr, 64
  %tmp2171 = trunc i96 %tmp2170 to i32
  %tmp2172 = bitcast i32 %tmp2171 to float
  %132 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %1, double %tmp2175, float %tmp2172) nounwind
  %mrv_gr14.i.i = extractvalue %0 %132, 0
  %tmp2101 = bitcast double %mrv_gr14.i.i to i64
  %mrv_gr16.i.i = extractvalue %0 %132, 1
  %tmp2088 = trunc i64 %tmp2101 to i32
  %tmp2089 = bitcast i32 %tmp2088 to float
  store float %tmp2089, float* %82, align 8
  %tmp2091 = lshr i64 %tmp2101, 32
  %tmp2092 = trunc i64 %tmp2091 to i32
  %tmp2093 = bitcast i32 %tmp2092 to float
  store float %tmp2093, float* %83, align 4
  store float %mrv_gr16.i.i, float* %84, align 8
  %tmp2305 = bitcast float %tmp1055 to i32
  %tmp2306 = zext i32 %tmp2305 to i96
  %tmp2299 = bitcast float %tmp1056 to i32
  %tmp2300 = zext i32 %tmp2299 to i96
  %tmp2301 = shl nuw nsw i96 %tmp2300, 32
  %ins2303 = or i96 %tmp2306, %tmp2301
  %tmp2293 = bitcast float %tmp1057 to i32
  %tmp2080 = zext i96 %ins2303 to i128
  %mask2081 = and i128 %memtmp18.i.i.0, -79228162514264337593543950336
  %tmp2074 = zext i32 %tmp2293 to i128
  %tmp2075 = shl nuw nsw i128 %tmp2074, 64
  %mask2076 = or i128 %mask2081, %tmp2080
  %ins2077 = or i128 %mask2076, %tmp2075
  %tmp2213 = bitcast float %tmp1055 to i32
  %tmp2214 = zext i32 %tmp2213 to i64
  %tmp2207 = bitcast float %tmp1056 to i32
  %tmp2208 = zext i32 %tmp2207 to i64
  %tmp2209 = shl nuw i64 %tmp2208, 32
  %ins2211 = or i64 %tmp2214, %tmp2209
  %ins2077.tr = trunc i128 %ins2077 to i96
  %ins2326 = or i96 %tmp2260, %tmp2255
  %tmp2058 = zext i96 %ins2326 to i128
  %mask2059 = and i128 %memtmp24.i.i.0, -79228162514264337593543950336
  %mask2054 = or i128 %mask2059, %tmp2058
  %ins2055 = or i128 %mask2054, %tmp2141
  store float %tmp1064, float* %85, align 8
  store float %tmp1065, float* %86, align 4
  %tmp2040 = lshr i128 %ins2055, 64
  %tmp2041 = trunc i128 %tmp2040 to i32
  %tmp2042 = bitcast i32 %tmp2041 to float
  store float %tmp2042, float* %87, align 8
  %tmp2199 = bitcast i64 %ins2211 to double
  %tmp2194 = lshr i96 %ins2077.tr, 64
  %tmp2195 = trunc i96 %tmp2194 to i32
  %tmp2196 = bitcast i32 %tmp2195 to float
  %133 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %0, double %tmp2199, float %tmp2196) nounwind
  %mrv_gr36.i.i = extractvalue %0 %133, 0
  %mrv_gr38.i.i = extractvalue %0 %133, 1
  %134 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %edge1.i.i, double %mrv_gr36.i.i, float %mrv_gr38.i.i) nounwind
  %mrv_gr46.i.i = extractvalue %0 %134, 0
  %tmp2013 = bitcast double %mrv_gr46.i.i to i64
  %mrv_gr48.i.i = extractvalue %0 %134, 1
  %tmp2000 = trunc i64 %tmp2013 to i32
  %tmp2001 = bitcast i32 %tmp2000 to float
  store float %tmp2001, float* %88, align 8
  %tmp2003 = lshr i64 %tmp2013, 32
  %tmp2004 = trunc i64 %tmp2003 to i32
  %tmp2005 = bitcast i32 %tmp2004 to float
  store float %tmp2005, float* %89, align 4
  store float %mrv_gr48.i.i, float* %90, align 8
  %135 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %n.i.i) nounwind
  %mrv_gr52.i.i = extractvalue %0 %135, 0
  %tmp1991 = bitcast double %mrv_gr52.i.i to i64
  %mrv_gr54.i.i = extractvalue %0 %135, 1
  %tmp1985 = bitcast float %mrv_gr54.i.i to i32
  %tmp1981 = lshr i64 %tmp1991, 32
  %tmp2237 = zext i64 %tmp1991 to i96
  %tmp2231 = zext i64 %tmp1981 to i96
  %tmp2232 = shl nuw nsw i96 %tmp2231, 32
  %tmp2237.masked = and i96 %tmp2237, 4294967295
  %ins2234 = or i96 %tmp2237.masked, %tmp2232
  %tmp1375 = zext i96 %ins2234 to i128
  %mask1376 = and i128 %memtmp24.i.0, -79228162514264337593543950336
  %tmp1369 = zext i32 %tmp1985 to i128
  %tmp1370 = shl nuw nsw i128 %tmp1369, 64
  %mask1371 = or i128 %mask1376, %tmp1375
  %ins1372 = or i128 %mask1371, %tmp1370
  %tmp1361 = trunc i64 %tmp1991 to i32
  %tmp1362 = bitcast i32 %tmp1361 to float
  %tmp1365 = trunc i64 %tmp1981 to i32
  %tmp1366 = bitcast i32 %tmp1365 to float
  %tmp1357 = lshr i128 %ins1372, 64
  %tmp1358 = trunc i128 %tmp1357 to i32
  %tmp1359 = bitcast i32 %tmp1358 to float
  %ins2349 = or i96 %tmp1916, %tmp1911
  %tmp1353 = zext i96 %ins2349 to i128
  %mask1354 = and i128 %memtmp30.i.0, -79228162514264337593543950336
  %mask1349 = or i128 %mask1354, %tmp1353
  %ins1350 = or i128 %mask1349, %tmp1458
  store float %tmp1082, float* %91, align 8
  store float %tmp1083, float* %92, align 4
  %tmp1335 = lshr i128 %ins1350, 64
  %tmp1336 = trunc i128 %tmp1335 to i32
  %tmp1337 = bitcast i32 %tmp1336 to float
  store float %tmp1337, float* %93, align 8
  %136 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %5) nounwind
  %mrv_gr38.i = extractvalue %0 %136, 0
  %tmp1330 = bitcast double %mrv_gr38.i to i64
  %mrv_gr40.i = extractvalue %0 %136, 1
  %tmp1320 = lshr i64 %tmp1330, 32
  %tmp2364 = trunc i64 %tmp1330 to i32
  %tmp2365 = bitcast i32 %tmp2364 to float
  %137 = fmul float %tmp2365, %tmp1362
  %138 = fadd float %137, 0.000000e+00
  %tmp2361 = trunc i64 %tmp1320 to i32
  %tmp2362 = bitcast i32 %tmp2361 to float
  %139 = fmul float %tmp2362, %tmp1366
  %140 = fadd float %139, %138
  %141 = fmul float %mrv_gr40.i, %tmp1359
  %142 = fadd float %141, %140
  %143 = fcmp ogt float %142, 0.000000e+00
  br i1 %143, label %bb.i, label %bb52.i

bb.i:                                             ; preds = %bb1
  %144 = fmul float %tmp1362, -1.000000e+00
  %145 = fmul float %tmp1366, -1.000000e+00
  %146 = fmul float %tmp1359, -1.000000e+00
  %tmp2396 = bitcast float %144 to i32
  %tmp2397 = zext i32 %tmp2396 to i96
  %tmp2390 = bitcast float %145 to i32
  %tmp2391 = zext i32 %tmp2390 to i96
  %tmp2392 = shl nuw nsw i96 %tmp2391, 32
  %ins2394 = or i96 %tmp2397, %tmp2392
  %tmp2384 = bitcast float %146 to i32
  %tmp1309 = zext i96 %ins2394 to i128
  %mask1310 = and i128 %memtmp46.i.1, -79228162514264337593543950336
  %tmp1303 = zext i32 %tmp2384 to i128
  %tmp1304 = shl nuw nsw i128 %tmp1303, 64
  %mask1305 = or i128 %mask1310, %tmp1309
  %ins1306 = or i128 %mask1305, %tmp1304
  %tmp1291 = lshr i128 %ins1306, 64
  %tmp1292 = trunc i128 %tmp1291 to i32
  %tmp1293 = bitcast i32 %tmp1292 to float
  br label %bb52.i

bb52.i:                                           ; preds = %bb.i, %bb1
  %N.i.0.0 = phi float [ %144, %bb.i ], [ %tmp1362, %bb1 ]
  %N.i.1.0 = phi float [ %145, %bb.i ], [ %tmp1366, %bb1 ]
  %N.i.2.0 = phi float [ %tmp1293, %bb.i ], [ %tmp1359, %bb1 ]
  %memtmp46.i.0 = phi i128 [ %ins1306, %bb.i ], [ %memtmp46.i.1, %bb1 ]
  %147 = fmul float %tmp1035, 0x3FD99999A0000000
  %tmp2485 = bitcast float %147 to i32
  %tmp2486 = zext i32 %tmp2485 to i96
  %tmp2481 = shl nuw nsw i96 %tmp2486, 32
  %ins2483 = or i96 %tmp2486, %tmp2481
  %tmp1287 = zext i96 %ins2483 to i128
  %mask1288 = and i128 %memtmp53.i.0, -79228162514264337593543950336
  %tmp1281 = zext i32 %tmp2485 to i128
  %tmp1282 = shl nuw nsw i128 %tmp1281, 64
  %mask1283 = or i128 %mask1288, %tmp1287
  %ins1284 = or i128 %mask1283, %tmp1282
  %tmp1269 = lshr i128 %ins1284, 64
  %tmp1270 = trunc i128 %tmp1269 to i32
  %tmp1271 = bitcast i32 %tmp1270 to float
  %ins2506 = or i96 %tmp2509, %tmp2504
  %tmp1265 = zext i96 %ins2506 to i128
  %mask1266 = and i128 %memtmp59.i.0, -79228162514264337593543950336
  %mask1261 = or i128 %mask1266, %tmp1265
  %ins1262 = or i128 %mask1261, %tmp1260
  store float %14, float* %94, align 8
  store float %15, float* %95, align 4
  %tmp1247 = lshr i128 %ins1262, 64
  %tmp1248 = trunc i128 %tmp1247 to i32
  %tmp1249 = bitcast i32 %tmp1248 to float
  store float %tmp1249, float* %96, align 8
  %148 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %4, double %mrv_gr20.i111, float %mrv_gr22.i) nounwind
  %mrv_gr71.i = extractvalue %0 %148, 0
  %tmp1242 = bitcast double %mrv_gr71.i to i64
  %mrv_gr73.i = extractvalue %0 %148, 1
  %tmp1229 = trunc i64 %tmp1242 to i32
  %tmp1230 = bitcast i32 %tmp1229 to float
  store float %tmp1230, float* %97, align 8
  %tmp1232 = lshr i64 %tmp1242, 32
  %tmp1233 = trunc i64 %tmp1232 to i32
  %tmp1234 = bitcast i32 %tmp1233 to float
  store float %tmp1234, float* %98, align 4
  store float %mrv_gr73.i, float* %99, align 8
  %149 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %L.i) nounwind
  %mrv_gr77.i = extractvalue %0 %149, 0
  %tmp1220 = bitcast double %mrv_gr77.i to i64
  %mrv_gr79.i = extractvalue %0 %149, 1
  %tmp1210 = lshr i64 %tmp1220, 32
  %tmp2453 = trunc i64 %tmp1220 to i32
  %tmp2454 = bitcast i32 %tmp2453 to float
  %150 = fmul float %tmp2454, %N.i.0.0
  %151 = fadd float %150, 0.000000e+00
  %tmp2450 = trunc i64 %tmp1210 to i32
  %tmp2451 = bitcast i32 %tmp2450 to float
  %152 = fmul float %tmp2451, %N.i.1.0
  %153 = fadd float %152, %151
  %154 = fmul float %mrv_gr79.i, %N.i.2.0
  %155 = fadd float %154, %153
  %156 = fcmp ogt float %155, 0.000000e+00
  br i1 %156, label %bb93.i, label %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit

bb93.i:                                           ; preds = %bb52.i
  %tmp2406 = trunc i64 %tmp1210 to i32
  %tmp2409 = trunc i64 %tmp1220 to i32
  %tmp2428 = trunc i64 %tmp1386 to i32
  %tmp2431 = trunc i64 %tmp1396 to i32
  %tmp2407 = bitcast i32 %tmp2406 to float
  %tmp2410 = bitcast i32 %tmp2409 to float
  %tmp2429 = bitcast i32 %tmp2428 to float
  %tmp2432 = bitcast i32 %tmp2431 to float
  %157 = load float* %97, align 8
  %158 = fmul float %157, %157
  %159 = load float* %98, align 4
  %160 = fmul float %159, %159
  %161 = fadd float %158, %160
  %162 = load float* %99, align 8
  %163 = fmul float %162, %162
  %164 = fadd float %161, %163
  %165 = call float @llvm.trax.invsqrt(float %164) nounwind
  %166 = fdiv float 1.000000e+00, %165
  store float %tmp1028, float* %hit_record40.i.0, align 8
  store float %tmp1076, float* %hit_record40.i.11067.0, align 4
  store float %tmp1077, float* %hit_record40.i.11067.1, align 4
  store float %tmp1078, float* %hit_record40.i.11067.2, align 4
  store float %tmp1064, float* %hit_record40.i.1.1.0, align 4
  store float %tmp1065, float* %hit_record40.i.1.1.1, align 4
  store float %tmp1066, float* %hit_record40.i.1.1.2, align 4
  store float %tmp1055, float* %hit_record40.i.1.2.0, align 4
  store float %tmp1056, float* %hit_record40.i.1.2.1, align 4
  store float %tmp1057, float* %hit_record40.i.1.2.2, align 4
  store i32 %tmp, i32* %hit_record40.i.1.3, align 4
  store float %tmp1038, float* %hit_record40.i.1.41045.0, align 4
  store float %tmp1039, float* %hit_record40.i.1.41045.1, align 4
  store float %tmp1040, float* %hit_record40.i.1.41045.2, align 4
  store float %tmp1035, float* %hit_record40.i.1.4.1, align 4
  store float %tmp1036, float* %hit_record40.i.1.4.2, align 4
  store float %tmp2432, float* %ray_to_light_source42.i1553.0, align 8
  store float %tmp2429, float* %ray_to_light_source42.i1553.1, align 4
  store float %mrv_gr22.i, float* %ray_to_light_source42.i1553.2, align 8
  store float %tmp2410, float* %ray_to_light_source42.i.1.0, align 4
  store float %tmp2407, float* %ray_to_light_source42.i.1.1, align 4
  store float %mrv_gr79.i, float* %ray_to_light_source42.i.1.2, align 4
  %167 = call i32 @llvm.trax.loadi(i32 0, i32 28) nounwind
  %168 = call i32 @llvm.trax.loadi(i32 0, i32 29) nounwind
  br label %bb7.i.i

bb.i.i:                                           ; preds = %bb7.i.i
  %169 = mul nsw i32 %storemerge.i.i, 11
  %170 = add nsw i32 %169, %167
  store i32 %170, i32* %3, align 4
  call fastcc void @_Z22loadTriangleFromMemoryRKi(%struct.Trigonum* noalias sret %tri.i.i, i32* %3) nounwind
  store i32 %170, i32* %2, align 4
  call fastcc void @_ZN8Trigonum10intersectsE9HitRecord3RayRKi(%struct.Trigonum* %tri.i.i, %struct.HitRecord* byval %hit_record40.i, %struct.Box* byval %ray_to_light_source42.i, i32* %2) nounwind
  %171 = load float* %100, align 8
  %172 = fcmp uge float %171, %166
  %173 = fcmp ule float %171, 0x3F847AE140000000
  %or.cond = or i1 %172, %173
  br i1 %or.cond, label %bb6.i.i, label %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit

bb6.i.i:                                          ; preds = %bb.i.i
  %174 = add nsw i32 %storemerge.i.i, 1
  br label %bb7.i.i

bb7.i.i:                                          ; preds = %bb6.i.i, %bb93.i
  %storemerge.i.i = phi i32 [ 0, %bb93.i ], [ %174, %bb6.i.i ]
  %175 = icmp slt i32 %storemerge.i.i, %168
  br i1 %175, label %bb.i.i, label %bb96.i

bb96.i:                                           ; preds = %bb7.i.i
  %176 = fmul float %tmp1036, %155
  %tmp1869 = bitcast float %176 to i32
  %tmp1870 = zext i32 %tmp1869 to i96
  %tmp1863 = bitcast float %176 to i32
  %tmp1864 = zext i32 %tmp1863 to i96
  %tmp1865 = shl nuw nsw i96 %tmp1864, 32
  %ins1867 = or i96 %tmp1870, %tmp1865
  %tmp1857 = bitcast float %176 to i32
  %tmp1177 = zext i96 %ins1867 to i128
  %mask1178 = and i128 %memtmp103.i.1, -79228162514264337593543950336
  %tmp1171 = zext i32 %tmp1857 to i128
  %tmp1172 = shl nuw nsw i128 %tmp1171, 64
  %mask1173 = or i128 %mask1178, %tmp1177
  %ins1174 = or i128 %mask1173, %tmp1172
  %ins1174.tr = trunc i128 %ins1174 to i96
  %177 = fadd float %176, %147
  %178 = fadd float %176, %147
  %tmp1829 = lshr i96 %ins1174.tr, 64
  %tmp1830 = trunc i96 %tmp1829 to i32
  %tmp1831 = bitcast i32 %tmp1830 to float
  %179 = fadd float %tmp1831, %tmp1271
  %tmp1824 = bitcast float %177 to i32
  %tmp1825 = zext i32 %tmp1824 to i96
  %tmp1818 = bitcast float %178 to i32
  %tmp1819 = zext i32 %tmp1818 to i96
  %tmp1820 = shl nuw nsw i96 %tmp1819, 32
  %ins1822 = or i96 %tmp1825, %tmp1820
  %tmp1812 = bitcast float %179 to i32
  %tmp1155 = zext i96 %ins1822 to i128
  %mask1156 = and i128 %memtmp113.i.1, -79228162514264337593543950336
  %tmp1149 = zext i32 %tmp1812 to i128
  %tmp1150 = shl nuw nsw i128 %tmp1149, 64
  %mask1151 = or i128 %mask1156, %tmp1155
  %ins1152 = or i128 %mask1151, %tmp1150
  %tmp1137 = lshr i128 %ins1152, 64
  %tmp1138 = trunc i128 %tmp1137 to i32
  %tmp1139 = bitcast i32 %tmp1138 to float
  br label %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit

_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit: ; preds = %bb96.i, %bb.i.i, %bb52.i
  %light.i.0.0 = phi float [ %177, %bb96.i ], [ %147, %bb52.i ], [ %147, %bb.i.i ]
  %light.i.1.0 = phi float [ %178, %bb96.i ], [ %147, %bb52.i ], [ %147, %bb.i.i ]
  %light.i.2.0 = phi float [ %tmp1139, %bb96.i ], [ %tmp1271, %bb52.i ], [ %tmp1271, %bb.i.i ]
  %memtmp113.i.0 = phi i128 [ %ins1152, %bb96.i ], [ %memtmp113.i.1, %bb52.i ], [ %memtmp113.i.1, %bb.i.i ]
  %memtmp103.i.0 = phi i128 [ %ins1174, %bb96.i ], [ %memtmp103.i.1, %bb52.i ], [ %memtmp103.i.1, %bb.i.i ]
  %tmp1801 = bitcast float %tmp1038 to i32
  %tmp1802 = zext i32 %tmp1801 to i96
  %tmp1795 = bitcast float %tmp1039 to i32
  %tmp1796 = zext i32 %tmp1795 to i96
  %tmp1797 = shl nuw nsw i96 %tmp1796, 32
  %ins1799 = or i96 %tmp1802, %tmp1797
  %tmp1789 = bitcast float %tmp1040 to i32
  %tmp1756 = zext i96 %ins1799 to i128
  %mask1757 = and i128 %memtmp.i.i.0, -79228162514264337593543950336
  %tmp1750 = zext i32 %tmp1789 to i128
  %tmp1751 = shl nuw nsw i128 %tmp1750, 64
  %mask1752 = or i128 %mask1757, %tmp1756
  %ins1753 = or i128 %mask1752, %tmp1751
  %tmp1778 = bitcast float %tmp1038 to i32
  %tmp1779 = zext i32 %tmp1778 to i96
  %tmp1772 = bitcast float %tmp1039 to i32
  %tmp1773 = zext i32 %tmp1772 to i96
  %tmp1774 = shl nuw nsw i96 %tmp1773, 32
  %ins1776 = or i96 %tmp1779, %tmp1774
  %tmp1133 = zext i96 %ins1776 to i128
  %mask1134 = and i128 %memtmp120.i.0, -79228162514264337593543950336
  %tmp1128 = and i128 %ins1753, 79228162495817593519834398720
  %mask1129 = or i128 %mask1134, %tmp1133
  %ins1130 = or i128 %mask1129, %tmp1128
  %ins1130.tr = trunc i128 %ins1130 to i96
  %180 = fmul float %tmp1038, %light.i.0.0
  %181 = fmul float %tmp1039, %light.i.1.0
  %tmp1716 = lshr i96 %ins1130.tr, 64
  %tmp1717 = trunc i96 %tmp1716 to i32
  %tmp1718 = bitcast i32 %tmp1717 to float
  %182 = fmul float %tmp1718, %light.i.2.0
  %tmp1711 = bitcast float %180 to i32
  %tmp1712 = zext i32 %tmp1711 to i96
  %tmp1705 = bitcast float %181 to i32
  %tmp1706 = zext i32 %tmp1705 to i96
  %tmp1707 = shl nuw nsw i96 %tmp1706, 32
  %ins1709 = or i96 %tmp1712, %tmp1707
  %tmp1699 = bitcast float %182 to i32
  %tmp1111 = zext i96 %ins1709 to i128
  %mask1112 = and i128 %memtmp130.i.0, -79228162514264337593543950336
  %tmp1105 = zext i32 %tmp1699 to i128
  %tmp1106 = shl nuw nsw i128 %tmp1105, 64
  %mask1107 = or i128 %mask1112, %tmp1111
  %ins1108 = or i128 %mask1107, %tmp1106
  %tmp1666 = bitcast float %180 to i32
  %tmp1667 = zext i32 %tmp1666 to i96
  %tmp1660 = bitcast float %181 to i32
  %tmp1661 = zext i32 %tmp1660 to i96
  %tmp1662 = shl nuw nsw i96 %tmp1661, 32
  %ins1664 = or i96 %tmp1667, %tmp1662
  %tmp140 = zext i96 %ins1664 to i128
  %mask141 = and i128 %memtmp.0, -79228162514264337593543950336
  %tmp137 = and i128 %ins1108, 79228162495817593519834398720
  %mask = or i128 %mask141, %tmp140
  %ins = or i128 %mask, %tmp137
  %ins.tr = trunc i128 %ins to i96
  call void @llvm.trax.storef(float %180, i32 %125, i32 0) nounwind
  call void @llvm.trax.storef(float %181, i32 %125, i32 1) nounwind
  %tmp365 = lshr i96 %ins.tr, 64
  %tmp366 = trunc i96 %tmp365 to i32
  %tmp367 = bitcast i32 %tmp366 to float
  call void @llvm.trax.storef(float %tmp367, i32 %125, i32 2) nounwind
  %183 = add nsw i32 %storemerge1, 1
  br label %bb11

bb11:                                             ; preds = %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit, %bb
  %memtmp.0 = phi i128 [ %memtmp.1, %bb ], [ %ins, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp130.i.0 = phi i128 [ %memtmp130.i.1, %bb ], [ %ins1108, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp120.i.0 = phi i128 [ %memtmp120.i.1, %bb ], [ %ins1130, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp113.i.1 = phi i128 [ %memtmp113.i.2, %bb ], [ %memtmp113.i.0, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp103.i.1 = phi i128 [ %memtmp103.i.2, %bb ], [ %memtmp103.i.0, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp59.i.0 = phi i128 [ %memtmp59.i.1, %bb ], [ %ins1262, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp53.i.0 = phi i128 [ %memtmp53.i.1, %bb ], [ %ins1284, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp46.i.1 = phi i128 [ %memtmp46.i.2, %bb ], [ %memtmp46.i.0, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp30.i.0 = phi i128 [ %memtmp30.i.1, %bb ], [ %ins1350, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp24.i.0 = phi i128 [ %memtmp24.i.1, %bb ], [ %ins1372, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp10.i92.0 = phi i128 [ %memtmp10.i92.1, %bb ], [ %ins1416, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp4.i91.0 = phi i128 [ %memtmp4.i91.1, %bb ], [ %ins1438, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp.i90.0 = phi i128 [ %memtmp.i90.1, %bb ], [ %ins1460, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp.i.i.0 = phi i128 [ %memtmp.i.i.1, %bb ], [ %ins1753, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp24.i.i.0 = phi i128 [ %memtmp24.i.i.1, %bb ], [ %ins2055, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp18.i.i.0 = phi i128 [ %memtmp18.i.i.1, %bb ], [ %ins2077, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp4.i.i.0 = phi i128 [ %memtmp4.i.i.1, %bb ], [ %ins2121, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp.i81.i.0 = phi i128 [ %memtmp.i81.i.1, %bb ], [ %ins2143, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %storemerge1 = phi i32 [ 0, %bb ], [ %183, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %184 = icmp slt i32 %storemerge1, %43
  br i1 %184, label %bb1, label %bb12

bb12:                                             ; preds = %bb11
  %185 = call i32 @llvm.trax.atominc(i32 0)
  br label %bb13

bb13:                                             ; preds = %bb12, %entry
  %memtmp.1 = phi i128 [ undef, %entry ], [ %memtmp.0, %bb12 ]
  %memtmp130.i.1 = phi i128 [ undef, %entry ], [ %memtmp130.i.0, %bb12 ]
  %memtmp120.i.1 = phi i128 [ undef, %entry ], [ %memtmp120.i.0, %bb12 ]
  %memtmp113.i.2 = phi i128 [ undef, %entry ], [ %memtmp113.i.1, %bb12 ]
  %memtmp103.i.2 = phi i128 [ undef, %entry ], [ %memtmp103.i.1, %bb12 ]
  %memtmp59.i.1 = phi i128 [ undef, %entry ], [ %memtmp59.i.0, %bb12 ]
  %memtmp53.i.1 = phi i128 [ undef, %entry ], [ %memtmp53.i.0, %bb12 ]
  %memtmp46.i.2 = phi i128 [ undef, %entry ], [ %memtmp46.i.1, %bb12 ]
  %memtmp30.i.1 = phi i128 [ undef, %entry ], [ %memtmp30.i.0, %bb12 ]
  %memtmp24.i.1 = phi i128 [ undef, %entry ], [ %memtmp24.i.0, %bb12 ]
  %memtmp10.i92.1 = phi i128 [ undef, %entry ], [ %memtmp10.i92.0, %bb12 ]
  %memtmp4.i91.1 = phi i128 [ undef, %entry ], [ %memtmp4.i91.0, %bb12 ]
  %memtmp.i90.1 = phi i128 [ undef, %entry ], [ %memtmp.i90.0, %bb12 ]
  %memtmp.i.i.1 = phi i128 [ undef, %entry ], [ %memtmp.i.i.0, %bb12 ]
  %memtmp24.i.i.1 = phi i128 [ undef, %entry ], [ %memtmp24.i.i.0, %bb12 ]
  %memtmp18.i.i.1 = phi i128 [ undef, %entry ], [ %memtmp18.i.i.0, %bb12 ]
  %memtmp4.i.i.1 = phi i128 [ undef, %entry ], [ %memtmp4.i.i.0, %bb12 ]
  %memtmp.i81.i.1 = phi i128 [ undef, %entry ], [ %memtmp.i81.i.0, %bb12 ]
  %storemerge = phi i32 [ %44, %entry ], [ %185, %bb12 ]
  %186 = icmp sgt i32 %45, %storemerge
  br i1 %186, label %bb, label %return

return:                                           ; preds = %bb13
  ret i32 0
}

define internal fastcc void @_Z22loadTriangleFromMemoryRKi(%struct.Trigonum* noalias sret %agg.result, i32* nocapture %addr) nounwind inlinehint ssp {
return:
  %0 = load i32* %addr, align 4
  %1 = call float @llvm.trax.loadf(i32 %0, i32 2)
  %2 = load i32* %addr, align 4
  %3 = call float @llvm.trax.loadf(i32 %2, i32 1)
  %4 = load i32* %addr, align 4
  %5 = call float @llvm.trax.loadf(i32 %4, i32 0)
  %tmp64 = bitcast float %5 to i32
  %tmp65 = zext i32 %tmp64 to i64
  %tmp52 = bitcast float %3 to i32
  %tmp53 = zext i32 %tmp52 to i64
  %tmp54 = shl nuw i64 %tmp53, 32
  %ins56 = or i64 %tmp65, %tmp54
  %6 = load i32* %addr, align 4
  %7 = call float @llvm.trax.loadf(i32 %6, i32 5)
  %8 = load i32* %addr, align 4
  %9 = call float @llvm.trax.loadf(i32 %8, i32 4)
  %10 = load i32* %addr, align 4
  %11 = call float @llvm.trax.loadf(i32 %10, i32 3)
  %tmp40 = bitcast float %11 to i32
  %tmp41 = zext i32 %tmp40 to i64
  %tmp28 = bitcast float %9 to i32
  %tmp29 = zext i32 %tmp28 to i64
  %tmp30 = shl nuw i64 %tmp29, 32
  %ins32 = or i64 %tmp41, %tmp30
  %12 = load i32* %addr, align 4
  %13 = call float @llvm.trax.loadf(i32 %12, i32 8)
  %14 = load i32* %addr, align 4
  %15 = call float @llvm.trax.loadf(i32 %14, i32 7)
  %16 = load i32* %addr, align 4
  %17 = call float @llvm.trax.loadf(i32 %16, i32 6)
  %tmp16 = bitcast float %17 to i32
  %tmp17 = zext i32 %tmp16 to i64
  %tmp = bitcast float %15 to i32
  %tmp7 = zext i32 %tmp to i64
  %tmp8 = shl nuw i64 %tmp7, 32
  %ins = or i64 %tmp17, %tmp8
  %18 = load i32* %addr, align 4
  %19 = call i32 @llvm.trax.loadi(i32 %18, i32 10)
  %20 = load i32* %addr, align 4
  %21 = call i32 @llvm.trax.loadi(i32 %20, i32 9)
  %tmp74 = bitcast i64 %ins56 to double
  %tmp50 = bitcast i64 %ins32 to double
  %tmp26 = bitcast i64 %ins to double
  call fastcc void @_ZN8TrigonumC1E6VectorS0_S0_ii(%struct.Trigonum* %agg.result, double %tmp74, float %1, double %tmp50, float %7, double %tmp26, float %13, i32 %21, i32 %19) ssp
  ret void
}

declare i32 @llvm.trax.atominc(i32) nounwind

define internal fastcc void @_ZN8Trigonum10intersectsE9HitRecord3RayRKi(%struct.Trigonum* nocapture %this, %struct.HitRecord* nocapture byval %hit_record, %struct.Box* nocapture byval %ray, i32* nocapture %tri_address) nounwind ssp align 2 {
entry:
  %0 = alloca %struct.Color, align 8
  %1 = alloca %struct.Color, align 8
  %s = alloca %struct.Color, align 8
  %2 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2
  %elt6 = bitcast %struct.Color* %2 to double*
  %val7 = load double* %elt6, align 8
  %3 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 2
  %val9 = load float* %3, align 4
  %4 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %5 = load float* %4, align 4
  %6 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %7 = load float* %6, align 4
  %8 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %9 = load float* %8, align 4
  %10 = getelementptr inbounds %struct.Color* %1, i64 0, i32 0
  store float %5, float* %10, align 8
  %11 = getelementptr inbounds %struct.Color* %1, i64 0, i32 1
  store float %7, float* %11, align 4
  %12 = getelementptr inbounds %struct.Color* %1, i64 0, i32 2
  store float %9, float* %12, align 8
  %13 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %14 = load float* %13, align 4
  %15 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %16 = load float* %15, align 4
  %17 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %18 = load float* %17, align 4
  %19 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  store float %14, float* %19, align 8
  %20 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  store float %16, float* %20, align 4
  %21 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  store float %18, float* %21, align 8
  %22 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %0, double %val7, float %val9)
  %mrv_gr50 = extractvalue %0 %22, 0
  %tmp89 = bitcast double %mrv_gr50 to i64
  %mrv_gr52 = extractvalue %0 %22, 1
  %23 = getelementptr inbounds %struct.Color* %s, i64 0, i32 0
  %tmp76 = trunc i64 %tmp89 to i32
  %tmp77 = bitcast i32 %tmp76 to float
  store float %tmp77, float* %23, align 8
  %24 = getelementptr inbounds %struct.Color* %s, i64 0, i32 1
  %tmp79 = lshr i64 %tmp89, 32
  %tmp80 = trunc i64 %tmp79 to i32
  %tmp81 = bitcast i32 %tmp80 to float
  store float %tmp81, float* %24, align 4
  %25 = getelementptr inbounds %struct.Color* %s, i64 0, i32 2
  store float %mrv_gr52, float* %25, align 8
  ret void
}

define internal fastcc %0 @_ZN6Vector5crossES_(%struct.Color* nocapture %this, double %other.0, float %other.1) nounwind readonly ssp align 2 {
return:
  %tmp28 = bitcast double %other.0 to i64
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %1 = load float* %0, align 4
  %2 = fmul float %1, %other.1
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %4 = load float* %3, align 4
  %tmp47 = lshr i64 %tmp28, 32
  %tmp48 = trunc i64 %tmp47 to i32
  %tmp49 = bitcast i32 %tmp48 to float
  %5 = fmul float %4, %tmp49
  %6 = fsub float %2, %5
  %tmp44 = trunc i64 %tmp28 to i32
  %tmp45 = bitcast i32 %tmp44 to float
  %7 = fmul float %4, %tmp45
  %8 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %9 = load float* %8, align 4
  %10 = fmul float %9, %other.1
  %11 = fsub float %7, %10
  %12 = fmul float %9, %tmp49
  %13 = fmul float %1, %tmp45
  %14 = fsub float %12, %13
  %tmp17 = bitcast float %6 to i32
  %tmp18 = zext i32 %tmp17 to i64
  %tmp11 = bitcast float %11 to i32
  %tmp12 = zext i32 %tmp11 to i64
  %tmp13 = shl nuw i64 %tmp12, 32
  %ins15 = or i64 %tmp18, %tmp13
  %tmp6 = bitcast i64 %ins15 to double
  %mrv4 = insertvalue %0 undef, double %tmp6, 0
  %mrv5 = insertvalue %0 %mrv4, float %14, 1
  ret %0 %mrv5
}

define internal fastcc %0 @_ZN6Vector3addES_(%struct.Color* nocapture %this, double %other.0, float %other.1) nounwind readonly ssp align 2 {
return:
  %tmp28 = bitcast double %other.0 to i64
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %1 = load float* %0, align 4
  %tmp41 = trunc i64 %tmp28 to i32
  %tmp42 = bitcast i32 %tmp41 to float
  %2 = fadd float %1, %tmp42
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %4 = load float* %3, align 4
  %tmp37 = lshr i64 %tmp28, 32
  %tmp38 = trunc i64 %tmp37 to i32
  %tmp39 = bitcast i32 %tmp38 to float
  %5 = fadd float %4, %tmp39
  %6 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %7 = load float* %6, align 4
  %8 = fadd float %7, %other.1
  %tmp17 = bitcast float %2 to i32
  %tmp18 = zext i32 %tmp17 to i64
  %tmp11 = bitcast float %5 to i32
  %tmp12 = zext i32 %tmp11 to i64
  %tmp13 = shl nuw i64 %tmp12, 32
  %ins15 = or i64 %tmp18, %tmp13
  %tmp6 = bitcast i64 %ins15 to double
  %mrv4 = insertvalue %0 undef, double %tmp6, 0
  %mrv5 = insertvalue %0 %mrv4, float %8, 1
  ret %0 %mrv5
}

define internal fastcc %0 @_ZN6Vector3subES_(%struct.Color* nocapture %this, double %other.0, float %other.1) nounwind readonly ssp align 2 {
return:
  %tmp28 = bitcast double %other.0 to i64
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %1 = load float* %0, align 4
  %tmp41 = trunc i64 %tmp28 to i32
  %tmp42 = bitcast i32 %tmp41 to float
  %2 = fsub float %1, %tmp42
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %4 = load float* %3, align 4
  %tmp37 = lshr i64 %tmp28, 32
  %tmp38 = trunc i64 %tmp37 to i32
  %tmp39 = bitcast i32 %tmp38 to float
  %5 = fsub float %4, %tmp39
  %6 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %7 = load float* %6, align 4
  %8 = fsub float %7, %other.1
  %tmp17 = bitcast float %2 to i32
  %tmp18 = zext i32 %tmp17 to i64
  %tmp11 = bitcast float %5 to i32
  %tmp12 = zext i32 %tmp11 to i64
  %tmp13 = shl nuw i64 %tmp12, 32
  %ins15 = or i64 %tmp18, %tmp13
  %tmp6 = bitcast i64 %ins15 to double
  %mrv4 = insertvalue %0 undef, double %tmp6, 0
  %mrv5 = insertvalue %0 %mrv4, float %8, 1
  ret %0 %mrv5
}

define internal fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* nocapture %this) nounwind ssp align 2 {
return:
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %1 = load float* %0, align 4
  %2 = fmul float %1, %1
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %4 = load float* %3, align 4
  %5 = fmul float %4, %4
  %6 = fadd float %2, %5
  %7 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %8 = load float* %7, align 4
  %9 = fmul float %8, %8
  %10 = fadd float %6, %9
  %11 = call float @llvm.trax.invsqrt(float %10) nounwind
  %12 = fdiv float 1.000000e+00, %11
  %13 = load float* %7, align 4
  %14 = fdiv float %13, %12
  %15 = load float* %3, align 4
  %16 = fdiv float %15, %12
  %17 = load float* %0, align 4
  %18 = fdiv float %17, %12
  %tmp18 = bitcast float %18 to i32
  %tmp19 = zext i32 %tmp18 to i64
  %tmp12 = bitcast float %16 to i32
  %tmp13 = zext i32 %tmp12 to i64
  %tmp14 = shl nuw i64 %tmp13, 32
  %ins16 = or i64 %tmp19, %tmp14
  %tmp7 = bitcast i64 %ins16 to double
  %mrv4 = insertvalue %0 undef, double %tmp7, 0
  %mrv5 = insertvalue %0 %mrv4, float %14, 1
  ret %0 %mrv5
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind
