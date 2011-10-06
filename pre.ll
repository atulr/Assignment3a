; ModuleID = 'rt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.1"

%0 = type { double, float }
%struct.Box = type { %struct.Color, %struct.Color }
%struct.Color = type { float, float, float }
%struct.HitRecord = type { float, %struct.Trigonum }
%struct.Image = type { i32, i32, i32 }
%struct.Mat = type { %struct.Color, float, float }
%struct.PinHoleCamera = type { %struct.Color, %struct.Color, %struct.Color, %struct.Color, %struct.Color, float, float }
%struct.PointLight = type { %struct.Color, %struct.Color }
%struct.Ray = type { %struct.Color, %struct.Color }
%struct.Shader = type <{ i8 }>
%struct.Sphere = type { float, float, float, float, %struct.Mat }
%struct.Trigonum = type { %struct.Color, %struct.Color, %struct.Color, i32, %struct.Mat }
%struct.Vector = type { float, float, float }

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

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
  %ray_to_light_source40.i = alloca %struct.Box, align 8
  %4 = alloca %struct.Color, align 8
  %5 = alloca %struct.Color, align 8
  %6 = alloca %struct.Color, align 8
  %L.i = alloca %struct.Color, align 8
  %hit_record70 = alloca %struct.HitRecord, align 8
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
  %tmp440 = bitcast float %15 to i32
  %tmp441 = zext i32 %tmp440 to i96
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
  %tmp = bitcast %struct.HitRecord* %hit_record70 to i8*
  %tmp71 = bitcast %struct.HitRecord* %hit_record to i8*
  %ray1039.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %ray1039.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %ray1039.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %ray.1.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %ray.1.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %ray.1.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %.01508 = getelementptr inbounds %struct.HitRecord* %hit_record70, i64 0, i32 1, i32 0, i32 0
  %.11510 = getelementptr inbounds %struct.HitRecord* %hit_record70, i64 0, i32 1, i32 0, i32 1
  %.21512 = getelementptr inbounds %struct.HitRecord* %hit_record70, i64 0, i32 1, i32 0, i32 2
  %.11481.0 = getelementptr inbounds %struct.HitRecord* %hit_record70, i64 0, i32 1, i32 1, i32 0
  %.11481.1 = getelementptr inbounds %struct.HitRecord* %hit_record70, i64 0, i32 1, i32 1, i32 1
  %.11481.2 = getelementptr inbounds %struct.HitRecord* %hit_record70, i64 0, i32 1, i32 1, i32 2
  %.21482.0 = getelementptr inbounds %struct.HitRecord* %hit_record70, i64 0, i32 1, i32 2, i32 0
  %.21482.1 = getelementptr inbounds %struct.HitRecord* %hit_record70, i64 0, i32 1, i32 2, i32 1
  %.21482.2 = getelementptr inbounds %struct.HitRecord* %hit_record70, i64 0, i32 1, i32 2, i32 2
  %.41492.0 = getelementptr inbounds %struct.HitRecord* %hit_record70, i64 0, i32 1, i32 4, i32 0, i32 0
  %.41492.1 = getelementptr inbounds %struct.HitRecord* %hit_record70, i64 0, i32 1, i32 4, i32 0, i32 1
  %.41492.2 = getelementptr inbounds %struct.HitRecord* %hit_record70, i64 0, i32 1, i32 4, i32 0, i32 2
  %.4.1 = getelementptr inbounds %struct.HitRecord* %hit_record70, i64 0, i32 1, i32 4, i32 1
  %.4.2 = getelementptr inbounds %struct.HitRecord* %hit_record70, i64 0, i32 1, i32 4, i32 2
  %76 = getelementptr inbounds %struct.HitRecord* %hit_record70, i64 0, i32 0
  %77 = getelementptr inbounds %struct.Color* %6, i64 0, i32 0
  %78 = getelementptr inbounds %struct.Color* %6, i64 0, i32 1
  %79 = getelementptr inbounds %struct.Color* %6, i64 0, i32 2
  %80 = getelementptr inbounds %struct.Color* %1, i64 0, i32 0
  %81 = getelementptr inbounds %struct.Color* %1, i64 0, i32 1
  %82 = getelementptr inbounds %struct.Color* %1, i64 0, i32 2
  %83 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 0
  %84 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 1
  %85 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 2
  %86 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  %87 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  %88 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  %89 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 0
  %90 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 1
  %91 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 2
  %92 = getelementptr inbounds %struct.Color* %5, i64 0, i32 0
  %93 = getelementptr inbounds %struct.Color* %5, i64 0, i32 1
  %94 = getelementptr inbounds %struct.Color* %5, i64 0, i32 2
  %tmp2480 = bitcast float %14 to i32
  %tmp2481 = zext i32 %tmp2480 to i96
  %tmp2476 = shl nuw nsw i96 %tmp441, 32
  %tmp2468 = bitcast float %16 to i32
  %tmp1213 = zext i32 %tmp2468 to i128
  %tmp1214 = shl nuw nsw i128 %tmp1213, 64
  %95 = getelementptr inbounds %struct.Color* %4, i64 0, i32 0
  %96 = getelementptr inbounds %struct.Color* %4, i64 0, i32 1
  %97 = getelementptr inbounds %struct.Color* %4, i64 0, i32 2
  %98 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 0
  %99 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 1
  %100 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 2
  %ray_to_light_source40.i1525.0 = getelementptr inbounds %struct.Box* %ray_to_light_source40.i, i64 0, i32 0, i32 0
  %ray_to_light_source40.i1525.1 = getelementptr inbounds %struct.Box* %ray_to_light_source40.i, i64 0, i32 0, i32 1
  %ray_to_light_source40.i1525.2 = getelementptr inbounds %struct.Box* %ray_to_light_source40.i, i64 0, i32 0, i32 2
  %ray_to_light_source40.i.1.0 = getelementptr inbounds %struct.Box* %ray_to_light_source40.i, i64 0, i32 1, i32 0
  %ray_to_light_source40.i.1.1 = getelementptr inbounds %struct.Box* %ray_to_light_source40.i, i64 0, i32 1, i32 1
  %ray_to_light_source40.i.1.2 = getelementptr inbounds %struct.Box* %ray_to_light_source40.i, i64 0, i32 1, i32 2
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
  %tmp907 = bitcast float %113 to i32
  %tmp908 = zext i32 %tmp907 to i64
  %tmp901 = bitcast float %114 to i32
  %tmp902 = zext i32 %tmp901 to i64
  %tmp903 = shl nuw i64 %tmp902, 32
  %ins905 = or i64 %tmp908, %tmp903
  %116 = fmul float %30, %107
  %117 = fmul float %31, %107
  %118 = fmul float %32, %107
  store float %116, float* %56, align 8
  store float %117, float* %57, align 4
  store float %118, float* %58, align 8
  %tmp893 = bitcast i64 %ins905 to double
  %119 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %7, double %tmp893, float %115) nounwind
  %mrv_gr14.i60 = extractvalue %0 %119, 0
  %mrv_gr16.i = extractvalue %0 %119, 1
  %120 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %ln.i, double %mrv_gr14.i60, float %mrv_gr16.i) nounwind
  %mrv_gr24.i62 = extractvalue %0 %120, 0
  %tmp797 = bitcast double %mrv_gr24.i62 to i64
  %mrv_gr26.i64 = extractvalue %0 %120, 1
  %tmp784 = trunc i64 %tmp797 to i32
  %tmp785 = bitcast i32 %tmp784 to float
  store float %tmp785, float* %50, align 8
  %tmp787 = lshr i64 %tmp797, 32
  %tmp788 = trunc i64 %tmp787 to i32
  %tmp789 = bitcast i32 %tmp788 to float
  store float %tmp789, float* %51, align 4
  store float %mrv_gr26.i64, float* %52, align 8
  %121 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %V.i) nounwind
  %mrv_gr30.i = extractvalue %0 %121, 0
  %tmp775 = bitcast double %mrv_gr30.i to i64
  %mrv_gr32.i = extractvalue %0 %121, 1
  %tmp765 = lshr i64 %tmp775, 32
  %tmp952 = trunc i64 %tmp775 to i32
  %tmp953 = bitcast i32 %tmp952 to float
  %tmp949 = trunc i64 %tmp765 to i32
  %tmp950 = bitcast i32 %tmp949 to float
  store float %18, float* %37, align 8
  store float %19, float* %59, align 4
  store float %20, float* %60, align 8
  store float %tmp953, float* %38, align 4
  store float %tmp950, float* %61, align 4
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
  call fastcc void @_ZN8Trigonum10intersectsER9HitRecord3RayRKi(%struct.Trigonum* %tri, %struct.HitRecord* %hit_record, %struct.Box* byval %ray, i32* %8)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp, i8* %tmp71, i64 64, i32 8, i1 false)
  %tmp1040 = load float* %ray1039.0, align 8
  %tmp1041 = load float* %ray1039.1, align 4
  %tmp1042 = load float* %ray1039.2, align 8
  %tmp1036 = load float* %ray.1.0, align 4
  %tmp1037 = load float* %ray.1.1, align 4
  %tmp1038 = load float* %ray.1.2, align 4
  %tmp1509 = load float* %.01508, align 4
  %tmp1511 = load float* %.11510, align 4
  %tmp1513 = load float* %.21512, align 4
  %tmp1502 = load float* %.11481.0, align 4
  %tmp1503 = load float* %.11481.1, align 4
  %tmp1504 = load float* %.11481.2, align 4
  %tmp1496 = load float* %.21482.0, align 4
  %tmp1497 = load float* %.21482.1, align 4
  %tmp1498 = load float* %.21482.2, align 4
  %tmp1493 = load float* %.41492.0, align 4
  %tmp1494 = load float* %.41492.1, align 4
  %tmp1495 = load float* %.41492.2, align 4
  %tmp1484 = load float* %.4.1, align 4
  %tmp1485 = load float* %.4.2, align 4
  %128 = load float* %76, align 8
  %tmp1887 = bitcast float %tmp1036 to i32
  %tmp1888 = zext i32 %tmp1887 to i96
  %tmp1881 = bitcast float %tmp1037 to i32
  %tmp1882 = zext i32 %tmp1881 to i96
  %tmp1883 = shl nuw nsw i96 %tmp1882, 32
  %ins1885 = or i96 %tmp1888, %tmp1883
  %tmp1875 = bitcast float %tmp1038 to i32
  %tmp1417 = zext i96 %ins1885 to i128
  %mask1418 = and i128 %memtmp.i91.0, -79228162514264337593543950336
  %tmp1411 = zext i32 %tmp1875 to i128
  %tmp1412 = shl nuw nsw i128 %tmp1411, 64
  %mask1413 = or i128 %mask1418, %tmp1417
  %ins1414 = or i128 %mask1413, %tmp1412
  %tmp1399 = lshr i128 %ins1414, 64
  %tmp1400 = trunc i128 %tmp1399 to i32
  %tmp1401 = bitcast i32 %tmp1400 to float
  %129 = fmul float %tmp1036, %128
  %130 = fmul float %tmp1037, %128
  %131 = fmul float %tmp1401, %128
  %tmp1910 = bitcast float %129 to i32
  %tmp1911 = zext i32 %tmp1910 to i96
  %tmp1904 = bitcast float %130 to i32
  %tmp1905 = zext i32 %tmp1904 to i96
  %tmp1906 = shl nuw nsw i96 %tmp1905, 32
  %ins1908 = or i96 %tmp1911, %tmp1906
  %tmp1898 = bitcast float %131 to i32
  %tmp1395 = zext i96 %ins1908 to i128
  %mask1396 = and i128 %memtmp4.i92.0, -79228162514264337593543950336
  %tmp1389 = zext i32 %tmp1898 to i128
  %tmp1390 = shl nuw nsw i128 %tmp1389, 64
  %mask1391 = or i128 %mask1396, %tmp1395
  %ins1392 = or i128 %mask1391, %tmp1390
  %tmp1549 = bitcast float %129 to i32
  %tmp1550 = zext i32 %tmp1549 to i64
  %tmp1543 = bitcast float %130 to i32
  %tmp1544 = zext i32 %tmp1543 to i64
  %tmp1545 = shl nuw i64 %tmp1544, 32
  %ins1547 = or i64 %tmp1550, %tmp1545
  %ins1392.tr = trunc i128 %ins1392 to i96
  %tmp1933 = bitcast float %tmp1040 to i32
  %tmp1934 = zext i32 %tmp1933 to i96
  %tmp1927 = bitcast float %tmp1041 to i32
  %tmp1928 = zext i32 %tmp1927 to i96
  %tmp1929 = shl nuw nsw i96 %tmp1928, 32
  %ins1931 = or i96 %tmp1934, %tmp1929
  %tmp1921 = bitcast float %tmp1042 to i32
  %tmp1373 = zext i96 %ins1931 to i128
  %mask1374 = and i128 %memtmp10.i93.0, -79228162514264337593543950336
  %tmp1367 = zext i32 %tmp1921 to i128
  %tmp1368 = shl nuw nsw i128 %tmp1367, 64
  %mask1369 = or i128 %mask1374, %tmp1373
  %ins1370 = or i128 %mask1369, %tmp1368
  store float %tmp1040, float* %77, align 8
  store float %tmp1041, float* %78, align 4
  %tmp1355 = lshr i128 %ins1370, 64
  %tmp1356 = trunc i128 %tmp1355 to i32
  %tmp1357 = bitcast i32 %tmp1356 to float
  store float %tmp1357, float* %79, align 8
  %tmp1535 = bitcast i64 %ins1547 to double
  %tmp1530 = lshr i96 %ins1392.tr, 64
  %tmp1531 = trunc i96 %tmp1530 to i32
  %tmp1532 = bitcast i32 %tmp1531 to float
  %132 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %6, double %tmp1535, float %tmp1532) nounwind
  %mrv_gr20.i117 = extractvalue %0 %132, 0
  %tmp1350 = bitcast double %mrv_gr20.i117 to i64
  %mrv_gr22.i = extractvalue %0 %132, 1
  %tmp1340 = lshr i64 %tmp1350, 32
  %tmp2231 = bitcast float %tmp1502 to i32
  %tmp2232 = zext i32 %tmp2231 to i96
  %tmp2225 = bitcast float %tmp1503 to i32
  %tmp2226 = zext i32 %tmp2225 to i96
  %tmp2227 = shl nuw nsw i96 %tmp2226, 32
  %ins2229 = or i96 %tmp2232, %tmp2227
  %tmp2219 = bitcast float %tmp1504 to i32
  %tmp2118 = zext i96 %ins2229 to i128
  %mask2119 = and i128 %memtmp.i78.i.0, -79228162514264337593543950336
  %tmp2112 = zext i32 %tmp2219 to i128
  %tmp2113 = shl nuw nsw i128 %tmp2112, 64
  %mask2114 = or i128 %mask2119, %tmp2118
  %ins2115 = or i128 %mask2114, %tmp2113
  %tmp2161 = bitcast float %tmp1502 to i32
  %tmp2162 = zext i32 %tmp2161 to i64
  %tmp2155 = bitcast float %tmp1503 to i32
  %tmp2156 = zext i32 %tmp2155 to i64
  %tmp2157 = shl nuw i64 %tmp2156, 32
  %ins2159 = or i64 %tmp2162, %tmp2157
  %ins2115.tr = trunc i128 %ins2115 to i96
  %tmp2254 = bitcast float %tmp1509 to i32
  %tmp2255 = zext i32 %tmp2254 to i96
  %tmp2248 = bitcast float %tmp1511 to i32
  %tmp2249 = zext i32 %tmp2248 to i96
  %tmp2250 = shl nuw nsw i96 %tmp2249, 32
  %ins2252 = or i96 %tmp2255, %tmp2250
  %tmp2242 = bitcast float %tmp1513 to i32
  %tmp2096 = zext i96 %ins2252 to i128
  %mask2097 = and i128 %memtmp4.i.i.0, -79228162514264337593543950336
  %tmp2090 = zext i32 %tmp2242 to i128
  %tmp2091 = shl nuw nsw i128 %tmp2090, 64
  %mask2092 = or i128 %mask2097, %tmp2096
  %ins2093 = or i128 %mask2092, %tmp2091
  store float %tmp1509, float* %80, align 8
  store float %tmp1511, float* %81, align 4
  %tmp2078 = lshr i128 %ins2093, 64
  %tmp2079 = trunc i128 %tmp2078 to i32
  %tmp2080 = bitcast i32 %tmp2079 to float
  store float %tmp2080, float* %82, align 8
  %tmp2147 = bitcast i64 %ins2159 to double
  %tmp2142 = lshr i96 %ins2115.tr, 64
  %tmp2143 = trunc i96 %tmp2142 to i32
  %tmp2144 = bitcast i32 %tmp2143 to float
  %133 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %1, double %tmp2147, float %tmp2144) nounwind
  %mrv_gr14.i.i = extractvalue %0 %133, 0
  %tmp2073 = bitcast double %mrv_gr14.i.i to i64
  %mrv_gr16.i.i = extractvalue %0 %133, 1
  %tmp2060 = trunc i64 %tmp2073 to i32
  %tmp2061 = bitcast i32 %tmp2060 to float
  store float %tmp2061, float* %83, align 8
  %tmp2063 = lshr i64 %tmp2073, 32
  %tmp2064 = trunc i64 %tmp2063 to i32
  %tmp2065 = bitcast i32 %tmp2064 to float
  store float %tmp2065, float* %84, align 4
  store float %mrv_gr16.i.i, float* %85, align 8
  %tmp2277 = bitcast float %tmp1496 to i32
  %tmp2278 = zext i32 %tmp2277 to i96
  %tmp2271 = bitcast float %tmp1497 to i32
  %tmp2272 = zext i32 %tmp2271 to i96
  %tmp2273 = shl nuw nsw i96 %tmp2272, 32
  %ins2275 = or i96 %tmp2278, %tmp2273
  %tmp2265 = bitcast float %tmp1498 to i32
  %tmp2052 = zext i96 %ins2275 to i128
  %mask2053 = and i128 %memtmp18.i.i.0, -79228162514264337593543950336
  %tmp2046 = zext i32 %tmp2265 to i128
  %tmp2047 = shl nuw nsw i128 %tmp2046, 64
  %mask2048 = or i128 %mask2053, %tmp2052
  %ins2049 = or i128 %mask2048, %tmp2047
  %tmp2185 = bitcast float %tmp1496 to i32
  %tmp2186 = zext i32 %tmp2185 to i64
  %tmp2179 = bitcast float %tmp1497 to i32
  %tmp2180 = zext i32 %tmp2179 to i64
  %tmp2181 = shl nuw i64 %tmp2180, 32
  %ins2183 = or i64 %tmp2186, %tmp2181
  %ins2049.tr = trunc i128 %ins2049 to i96
  %ins2298 = or i96 %tmp2232, %tmp2227
  %tmp2030 = zext i96 %ins2298 to i128
  %mask2031 = and i128 %memtmp24.i.i.0, -79228162514264337593543950336
  %mask2026 = or i128 %mask2031, %tmp2030
  %ins2027 = or i128 %mask2026, %tmp2113
  store float %tmp1502, float* %86, align 8
  store float %tmp1503, float* %87, align 4
  %tmp2012 = lshr i128 %ins2027, 64
  %tmp2013 = trunc i128 %tmp2012 to i32
  %tmp2014 = bitcast i32 %tmp2013 to float
  store float %tmp2014, float* %88, align 8
  %tmp2171 = bitcast i64 %ins2183 to double
  %tmp2166 = lshr i96 %ins2049.tr, 64
  %tmp2167 = trunc i96 %tmp2166 to i32
  %tmp2168 = bitcast i32 %tmp2167 to float
  %134 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %0, double %tmp2171, float %tmp2168) nounwind
  %mrv_gr36.i.i = extractvalue %0 %134, 0
  %mrv_gr38.i.i = extractvalue %0 %134, 1
  %135 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %edge1.i.i, double %mrv_gr36.i.i, float %mrv_gr38.i.i) nounwind
  %mrv_gr46.i.i = extractvalue %0 %135, 0
  %tmp1985 = bitcast double %mrv_gr46.i.i to i64
  %mrv_gr48.i.i = extractvalue %0 %135, 1
  %tmp1972 = trunc i64 %tmp1985 to i32
  %tmp1973 = bitcast i32 %tmp1972 to float
  store float %tmp1973, float* %89, align 8
  %tmp1975 = lshr i64 %tmp1985, 32
  %tmp1976 = trunc i64 %tmp1975 to i32
  %tmp1977 = bitcast i32 %tmp1976 to float
  store float %tmp1977, float* %90, align 4
  store float %mrv_gr48.i.i, float* %91, align 8
  %136 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %n.i.i) nounwind
  %mrv_gr52.i.i = extractvalue %0 %136, 0
  %tmp1963 = bitcast double %mrv_gr52.i.i to i64
  %mrv_gr54.i.i = extractvalue %0 %136, 1
  %tmp1957 = bitcast float %mrv_gr54.i.i to i32
  %tmp1953 = lshr i64 %tmp1963, 32
  %tmp2209 = zext i64 %tmp1963 to i96
  %tmp2203 = zext i64 %tmp1953 to i96
  %tmp2204 = shl nuw nsw i96 %tmp2203, 32
  %tmp2209.masked = and i96 %tmp2209, 4294967295
  %ins2206 = or i96 %tmp2209.masked, %tmp2204
  %tmp1329 = zext i96 %ins2206 to i128
  %mask1330 = and i128 %memtmp24.i.0, -79228162514264337593543950336
  %tmp1323 = zext i32 %tmp1957 to i128
  %tmp1324 = shl nuw nsw i128 %tmp1323, 64
  %mask1325 = or i128 %mask1330, %tmp1329
  %ins1326 = or i128 %mask1325, %tmp1324
  %tmp1315 = trunc i64 %tmp1963 to i32
  %tmp1316 = bitcast i32 %tmp1315 to float
  %tmp1319 = trunc i64 %tmp1953 to i32
  %tmp1320 = bitcast i32 %tmp1319 to float
  %tmp1311 = lshr i128 %ins1326, 64
  %tmp1312 = trunc i128 %tmp1311 to i32
  %tmp1313 = bitcast i32 %tmp1312 to float
  %ins2321 = or i96 %tmp1888, %tmp1883
  %tmp1307 = zext i96 %ins2321 to i128
  %mask1308 = and i128 %memtmp30.i.0, -79228162514264337593543950336
  %mask1303 = or i128 %mask1308, %tmp1307
  %ins1304 = or i128 %mask1303, %tmp1412
  store float %tmp1036, float* %92, align 8
  store float %tmp1037, float* %93, align 4
  %tmp1289 = lshr i128 %ins1304, 64
  %tmp1290 = trunc i128 %tmp1289 to i32
  %tmp1291 = bitcast i32 %tmp1290 to float
  store float %tmp1291, float* %94, align 8
  %137 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %5) nounwind
  %mrv_gr38.i = extractvalue %0 %137, 0
  %tmp1284 = bitcast double %mrv_gr38.i to i64
  %mrv_gr40.i = extractvalue %0 %137, 1
  %tmp1274 = lshr i64 %tmp1284, 32
  %tmp2336 = trunc i64 %tmp1284 to i32
  %tmp2337 = bitcast i32 %tmp2336 to float
  %138 = fmul float %tmp2337, %tmp1316
  %139 = fadd float %138, 0.000000e+00
  %tmp2333 = trunc i64 %tmp1274 to i32
  %tmp2334 = bitcast i32 %tmp2333 to float
  %140 = fmul float %tmp2334, %tmp1320
  %141 = fadd float %140, %139
  %142 = fmul float %mrv_gr40.i, %tmp1313
  %143 = fadd float %142, %141
  %144 = fcmp ogt float %143, 0.000000e+00
  br i1 %144, label %bb.i, label %bb52.i

bb.i:                                             ; preds = %bb1
  %145 = fmul float %tmp1316, -1.000000e+00
  %146 = fmul float %tmp1320, -1.000000e+00
  %147 = fmul float %tmp1313, -1.000000e+00
  %tmp2368 = bitcast float %145 to i32
  %tmp2369 = zext i32 %tmp2368 to i96
  %tmp2362 = bitcast float %146 to i32
  %tmp2363 = zext i32 %tmp2362 to i96
  %tmp2364 = shl nuw nsw i96 %tmp2363, 32
  %ins2366 = or i96 %tmp2369, %tmp2364
  %tmp2356 = bitcast float %147 to i32
  %tmp1263 = zext i96 %ins2366 to i128
  %mask1264 = and i128 %memtmp46.i.1, -79228162514264337593543950336
  %tmp1257 = zext i32 %tmp2356 to i128
  %tmp1258 = shl nuw nsw i128 %tmp1257, 64
  %mask1259 = or i128 %mask1264, %tmp1263
  %ins1260 = or i128 %mask1259, %tmp1258
  %tmp1245 = lshr i128 %ins1260, 64
  %tmp1246 = trunc i128 %tmp1245 to i32
  %tmp1247 = bitcast i32 %tmp1246 to float
  br label %bb52.i

bb52.i:                                           ; preds = %bb.i, %bb1
  %N.i.0.0 = phi float [ %145, %bb.i ], [ %tmp1316, %bb1 ]
  %N.i.1.0 = phi float [ %146, %bb.i ], [ %tmp1320, %bb1 ]
  %N.i.2.0 = phi float [ %tmp1247, %bb.i ], [ %tmp1313, %bb1 ]
  %memtmp46.i.0 = phi i128 [ %ins1260, %bb.i ], [ %memtmp46.i.1, %bb1 ]
  %148 = fmul float %tmp1484, 0x3FD99999A0000000
  %tmp2457 = bitcast float %148 to i32
  %tmp2458 = zext i32 %tmp2457 to i96
  %tmp2453 = shl nuw nsw i96 %tmp2458, 32
  %ins2455 = or i96 %tmp2458, %tmp2453
  %tmp1241 = zext i96 %ins2455 to i128
  %mask1242 = and i128 %memtmp53.i.0, -79228162514264337593543950336
  %tmp1235 = zext i32 %tmp2457 to i128
  %tmp1236 = shl nuw nsw i128 %tmp1235, 64
  %mask1237 = or i128 %mask1242, %tmp1241
  %ins1238 = or i128 %mask1237, %tmp1236
  %tmp1223 = lshr i128 %ins1238, 64
  %tmp1224 = trunc i128 %tmp1223 to i32
  %tmp1225 = bitcast i32 %tmp1224 to float
  %ins2478 = or i96 %tmp2481, %tmp2476
  %tmp1219 = zext i96 %ins2478 to i128
  %mask1220 = and i128 %memtmp59.i.0, -79228162514264337593543950336
  %mask1215 = or i128 %mask1220, %tmp1219
  %ins1216 = or i128 %mask1215, %tmp1214
  store float %14, float* %95, align 8
  store float %15, float* %96, align 4
  %tmp1201 = lshr i128 %ins1216, 64
  %tmp1202 = trunc i128 %tmp1201 to i32
  %tmp1203 = bitcast i32 %tmp1202 to float
  store float %tmp1203, float* %97, align 8
  %149 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %4, double %mrv_gr20.i117, float %mrv_gr22.i) nounwind
  %mrv_gr71.i = extractvalue %0 %149, 0
  %tmp1196 = bitcast double %mrv_gr71.i to i64
  %mrv_gr73.i = extractvalue %0 %149, 1
  %tmp1183 = trunc i64 %tmp1196 to i32
  %tmp1184 = bitcast i32 %tmp1183 to float
  store float %tmp1184, float* %98, align 8
  %tmp1186 = lshr i64 %tmp1196, 32
  %tmp1187 = trunc i64 %tmp1186 to i32
  %tmp1188 = bitcast i32 %tmp1187 to float
  store float %tmp1188, float* %99, align 4
  store float %mrv_gr73.i, float* %100, align 8
  %150 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %L.i) nounwind
  %mrv_gr77.i = extractvalue %0 %150, 0
  %tmp1174 = bitcast double %mrv_gr77.i to i64
  %mrv_gr79.i = extractvalue %0 %150, 1
  %tmp1164 = lshr i64 %tmp1174, 32
  %tmp2425 = trunc i64 %tmp1174 to i32
  %tmp2426 = bitcast i32 %tmp2425 to float
  %151 = fmul float %tmp2426, %N.i.0.0
  %152 = fadd float %151, 0.000000e+00
  %tmp2422 = trunc i64 %tmp1164 to i32
  %tmp2423 = bitcast i32 %tmp2422 to float
  %153 = fmul float %tmp2423, %N.i.1.0
  %154 = fadd float %153, %152
  %155 = fmul float %mrv_gr79.i, %N.i.2.0
  %156 = fadd float %155, %154
  %157 = fcmp ogt float %156, 0.000000e+00
  br i1 %157, label %bb93.i, label %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit

bb93.i:                                           ; preds = %bb52.i
  %tmp2378 = trunc i64 %tmp1164 to i32
  %tmp2381 = trunc i64 %tmp1174 to i32
  %tmp2400 = trunc i64 %tmp1340 to i32
  %tmp2403 = trunc i64 %tmp1350 to i32
  %tmp2379 = bitcast i32 %tmp2378 to float
  %tmp2382 = bitcast i32 %tmp2381 to float
  %tmp2401 = bitcast i32 %tmp2400 to float
  %tmp2404 = bitcast i32 %tmp2403 to float
  %158 = load float* %98, align 8
  %159 = fmul float %158, %158
  %160 = load float* %99, align 4
  %161 = fmul float %160, %160
  %162 = fadd float %159, %161
  %163 = load float* %100, align 8
  %164 = fmul float %163, %163
  %165 = fadd float %162, %164
  %166 = call float @llvm.trax.invsqrt(float %165) nounwind
  %167 = fdiv float 1.000000e+00, %166
  store float %tmp2404, float* %ray_to_light_source40.i1525.0, align 8
  store float %tmp2401, float* %ray_to_light_source40.i1525.1, align 4
  store float %mrv_gr22.i, float* %ray_to_light_source40.i1525.2, align 8
  store float %tmp2382, float* %ray_to_light_source40.i.1.0, align 4
  store float %tmp2379, float* %ray_to_light_source40.i.1.1, align 4
  store float %mrv_gr79.i, float* %ray_to_light_source40.i.1.2, align 4
  %168 = call i32 @llvm.trax.loadi(i32 0, i32 28) nounwind
  %169 = call i32 @llvm.trax.loadi(i32 0, i32 29) nounwind
  br label %bb7.i.i

bb.i.i:                                           ; preds = %bb7.i.i
  %170 = mul nsw i32 %storemerge.i.i, 11
  %171 = add nsw i32 %170, %168
  store i32 %171, i32* %3, align 4
  call fastcc void @_Z22loadTriangleFromMemoryRKi(%struct.Trigonum* noalias sret %tri.i.i, i32* %3) nounwind
  store i32 %171, i32* %2, align 4
  call fastcc void @_ZN8Trigonum10intersectsER9HitRecord3RayRKi(%struct.Trigonum* %tri.i.i, %struct.HitRecord* %hit_record70, %struct.Box* byval %ray_to_light_source40.i, i32* %2) nounwind
  %172 = load float* %76, align 8
  %173 = fcmp uge float %172, %167
  %174 = fcmp ule float %172, 0x3F847AE140000000
  %or.cond = or i1 %173, %174
  br i1 %or.cond, label %bb6.i.i, label %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit

bb6.i.i:                                          ; preds = %bb.i.i
  %175 = add nsw i32 %storemerge.i.i, 1
  br label %bb7.i.i

bb7.i.i:                                          ; preds = %bb6.i.i, %bb93.i
  %storemerge.i.i = phi i32 [ 0, %bb93.i ], [ %175, %bb6.i.i ]
  %176 = icmp slt i32 %storemerge.i.i, %169
  br i1 %176, label %bb.i.i, label %bb96.i

bb96.i:                                           ; preds = %bb7.i.i
  %177 = fmul float %tmp1485, %156
  %tmp1841 = bitcast float %177 to i32
  %tmp1842 = zext i32 %tmp1841 to i96
  %tmp1835 = bitcast float %177 to i32
  %tmp1836 = zext i32 %tmp1835 to i96
  %tmp1837 = shl nuw nsw i96 %tmp1836, 32
  %ins1839 = or i96 %tmp1842, %tmp1837
  %tmp1829 = bitcast float %177 to i32
  %tmp1131 = zext i96 %ins1839 to i128
  %mask1132 = and i128 %memtmp103.i.1, -79228162514264337593543950336
  %tmp1125 = zext i32 %tmp1829 to i128
  %tmp1126 = shl nuw nsw i128 %tmp1125, 64
  %mask1127 = or i128 %mask1132, %tmp1131
  %ins1128 = or i128 %mask1127, %tmp1126
  %ins1128.tr = trunc i128 %ins1128 to i96
  %178 = fadd float %177, %148
  %179 = fadd float %177, %148
  %tmp1801 = lshr i96 %ins1128.tr, 64
  %tmp1802 = trunc i96 %tmp1801 to i32
  %tmp1803 = bitcast i32 %tmp1802 to float
  %180 = fadd float %tmp1803, %tmp1225
  %tmp1796 = bitcast float %178 to i32
  %tmp1797 = zext i32 %tmp1796 to i96
  %tmp1790 = bitcast float %179 to i32
  %tmp1791 = zext i32 %tmp1790 to i96
  %tmp1792 = shl nuw nsw i96 %tmp1791, 32
  %ins1794 = or i96 %tmp1797, %tmp1792
  %tmp1784 = bitcast float %180 to i32
  %tmp1109 = zext i96 %ins1794 to i128
  %mask1110 = and i128 %memtmp113.i.1, -79228162514264337593543950336
  %tmp1103 = zext i32 %tmp1784 to i128
  %tmp1104 = shl nuw nsw i128 %tmp1103, 64
  %mask1105 = or i128 %mask1110, %tmp1109
  %ins1106 = or i128 %mask1105, %tmp1104
  %tmp1091 = lshr i128 %ins1106, 64
  %tmp1092 = trunc i128 %tmp1091 to i32
  %tmp1093 = bitcast i32 %tmp1092 to float
  br label %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit

_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit: ; preds = %bb96.i, %bb.i.i, %bb52.i
  %light.i.0.0 = phi float [ %178, %bb96.i ], [ %148, %bb52.i ], [ %148, %bb.i.i ]
  %light.i.1.0 = phi float [ %179, %bb96.i ], [ %148, %bb52.i ], [ %148, %bb.i.i ]
  %light.i.2.0 = phi float [ %tmp1093, %bb96.i ], [ %tmp1225, %bb52.i ], [ %tmp1225, %bb.i.i ]
  %memtmp113.i.0 = phi i128 [ %ins1106, %bb96.i ], [ %memtmp113.i.1, %bb52.i ], [ %memtmp113.i.1, %bb.i.i ]
  %memtmp103.i.0 = phi i128 [ %ins1128, %bb96.i ], [ %memtmp103.i.1, %bb52.i ], [ %memtmp103.i.1, %bb.i.i ]
  %tmp1773 = bitcast float %tmp1493 to i32
  %tmp1774 = zext i32 %tmp1773 to i96
  %tmp1767 = bitcast float %tmp1494 to i32
  %tmp1768 = zext i32 %tmp1767 to i96
  %tmp1769 = shl nuw nsw i96 %tmp1768, 32
  %ins1771 = or i96 %tmp1774, %tmp1769
  %tmp1761 = bitcast float %tmp1495 to i32
  %tmp1728 = zext i96 %ins1771 to i128
  %mask1729 = and i128 %memtmp.i.i.0, -79228162514264337593543950336
  %tmp1722 = zext i32 %tmp1761 to i128
  %tmp1723 = shl nuw nsw i128 %tmp1722, 64
  %mask1724 = or i128 %mask1729, %tmp1728
  %ins1725 = or i128 %mask1724, %tmp1723
  %tmp1750 = bitcast float %tmp1493 to i32
  %tmp1751 = zext i32 %tmp1750 to i96
  %tmp1744 = bitcast float %tmp1494 to i32
  %tmp1745 = zext i32 %tmp1744 to i96
  %tmp1746 = shl nuw nsw i96 %tmp1745, 32
  %ins1748 = or i96 %tmp1751, %tmp1746
  %tmp1087 = zext i96 %ins1748 to i128
  %mask1088 = and i128 %memtmp120.i.0, -79228162514264337593543950336
  %tmp1082 = and i128 %ins1725, 79228162495817593519834398720
  %mask1083 = or i128 %mask1088, %tmp1087
  %ins1084 = or i128 %mask1083, %tmp1082
  %ins1084.tr = trunc i128 %ins1084 to i96
  %181 = fmul float %tmp1493, %light.i.0.0
  %182 = fmul float %tmp1494, %light.i.1.0
  %tmp1688 = lshr i96 %ins1084.tr, 64
  %tmp1689 = trunc i96 %tmp1688 to i32
  %tmp1690 = bitcast i32 %tmp1689 to float
  %183 = fmul float %tmp1690, %light.i.2.0
  %tmp1683 = bitcast float %181 to i32
  %tmp1684 = zext i32 %tmp1683 to i96
  %tmp1677 = bitcast float %182 to i32
  %tmp1678 = zext i32 %tmp1677 to i96
  %tmp1679 = shl nuw nsw i96 %tmp1678, 32
  %ins1681 = or i96 %tmp1684, %tmp1679
  %tmp1671 = bitcast float %183 to i32
  %tmp1065 = zext i96 %ins1681 to i128
  %mask1066 = and i128 %memtmp130.i.0, -79228162514264337593543950336
  %tmp1059 = zext i32 %tmp1671 to i128
  %tmp1060 = shl nuw nsw i128 %tmp1059, 64
  %mask1061 = or i128 %mask1066, %tmp1065
  %ins1062 = or i128 %mask1061, %tmp1060
  %tmp1638 = bitcast float %181 to i32
  %tmp1639 = zext i32 %tmp1638 to i96
  %tmp1632 = bitcast float %182 to i32
  %tmp1633 = zext i32 %tmp1632 to i96
  %tmp1634 = shl nuw nsw i96 %tmp1633, 32
  %ins1636 = or i96 %tmp1639, %tmp1634
  %tmp146 = zext i96 %ins1636 to i128
  %mask147 = and i128 %memtmp.0, -79228162514264337593543950336
  %tmp143 = and i128 %ins1062, 79228162495817593519834398720
  %mask = or i128 %mask147, %tmp146
  %ins = or i128 %mask, %tmp143
  %ins.tr = trunc i128 %ins to i96
  call void @llvm.trax.storef(float %181, i32 %125, i32 0) nounwind
  call void @llvm.trax.storef(float %182, i32 %125, i32 1) nounwind
  %tmp371 = lshr i96 %ins.tr, 64
  %tmp372 = trunc i96 %tmp371 to i32
  %tmp373 = bitcast i32 %tmp372 to float
  call void @llvm.trax.storef(float %tmp373, i32 %125, i32 2) nounwind
  %184 = add nsw i32 %storemerge1, 1
  br label %bb11

bb11:                                             ; preds = %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit, %bb
  %memtmp.0 = phi i128 [ %memtmp.1, %bb ], [ %ins, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp130.i.0 = phi i128 [ %memtmp130.i.1, %bb ], [ %ins1062, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp120.i.0 = phi i128 [ %memtmp120.i.1, %bb ], [ %ins1084, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp113.i.1 = phi i128 [ %memtmp113.i.2, %bb ], [ %memtmp113.i.0, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp103.i.1 = phi i128 [ %memtmp103.i.2, %bb ], [ %memtmp103.i.0, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp59.i.0 = phi i128 [ %memtmp59.i.1, %bb ], [ %ins1216, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp53.i.0 = phi i128 [ %memtmp53.i.1, %bb ], [ %ins1238, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp46.i.1 = phi i128 [ %memtmp46.i.2, %bb ], [ %memtmp46.i.0, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp30.i.0 = phi i128 [ %memtmp30.i.1, %bb ], [ %ins1304, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp24.i.0 = phi i128 [ %memtmp24.i.1, %bb ], [ %ins1326, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp10.i93.0 = phi i128 [ %memtmp10.i93.1, %bb ], [ %ins1370, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp4.i92.0 = phi i128 [ %memtmp4.i92.1, %bb ], [ %ins1392, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp.i91.0 = phi i128 [ %memtmp.i91.1, %bb ], [ %ins1414, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp.i.i.0 = phi i128 [ %memtmp.i.i.1, %bb ], [ %ins1725, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp24.i.i.0 = phi i128 [ %memtmp24.i.i.1, %bb ], [ %ins2027, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp18.i.i.0 = phi i128 [ %memtmp18.i.i.1, %bb ], [ %ins2049, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp4.i.i.0 = phi i128 [ %memtmp4.i.i.1, %bb ], [ %ins2093, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp.i78.i.0 = phi i128 [ %memtmp.i78.i.1, %bb ], [ %ins2115, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %storemerge1 = phi i32 [ 0, %bb ], [ %184, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %185 = icmp slt i32 %storemerge1, %43
  br i1 %185, label %bb1, label %bb12

bb12:                                             ; preds = %bb11
  %186 = call i32 @llvm.trax.atominc(i32 0)
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
  %memtmp10.i93.1 = phi i128 [ undef, %entry ], [ %memtmp10.i93.0, %bb12 ]
  %memtmp4.i92.1 = phi i128 [ undef, %entry ], [ %memtmp4.i92.0, %bb12 ]
  %memtmp.i91.1 = phi i128 [ undef, %entry ], [ %memtmp.i91.0, %bb12 ]
  %memtmp.i.i.1 = phi i128 [ undef, %entry ], [ %memtmp.i.i.0, %bb12 ]
  %memtmp24.i.i.1 = phi i128 [ undef, %entry ], [ %memtmp24.i.i.0, %bb12 ]
  %memtmp18.i.i.1 = phi i128 [ undef, %entry ], [ %memtmp18.i.i.0, %bb12 ]
  %memtmp4.i.i.1 = phi i128 [ undef, %entry ], [ %memtmp4.i.i.0, %bb12 ]
  %memtmp.i78.i.1 = phi i128 [ undef, %entry ], [ %memtmp.i78.i.0, %bb12 ]
  %storemerge = phi i32 [ %44, %entry ], [ %186, %bb12 ]
  %187 = icmp sgt i32 %45, %storemerge
  br i1 %187, label %bb, label %return

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

define internal fastcc void @_ZN8Trigonum10intersectsER9HitRecord3RayRKi(%struct.Trigonum* nocapture %this, %struct.HitRecord* nocapture %hit_record, %struct.Box* nocapture byval %ray, i32* nocapture %tri_address) nounwind ssp align 2 {
entry:
  %memtmp.i = alloca %struct.Trigonum, align 8
  %0 = alloca %struct.Color, align 8
  %1 = alloca %struct.Color, align 8
  %s = alloca %struct.Color, align 8
  %2 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 0
  %3 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1
  %elt = bitcast %struct.Color* %3 to double*
  %val = load double* %elt, align 8
  %4 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 2
  %val2 = load float* %4, align 4
  %5 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %2, double %val, float %val2)
  %mrv_gr = extractvalue %0 %5, 0
  %tmp198 = bitcast double %mrv_gr to i64
  %mrv_gr4 = extractvalue %0 %5, 1
  %tmp188 = lshr i64 %tmp198, 32
  %6 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2
  %elt6 = bitcast %struct.Color* %6 to double*
  %val7 = load double* %elt6, align 8
  %7 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 2
  %val9 = load float* %7, align 4
  %8 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %3, double %val7, float %val9)
  %mrv_gr12 = extractvalue %0 %8, 0
  %tmp176 = bitcast double %mrv_gr12 to i64
  %mrv_gr14 = extractvalue %0 %8, 1
  %tmp166 = lshr i64 %tmp176, 32
  %9 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %10 = load float* %9, align 4
  %11 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %12 = load float* %11, align 4
  %13 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %14 = load float* %13, align 4
  %15 = getelementptr inbounds %struct.Color* %1, i64 0, i32 0
  store float %10, float* %15, align 8
  %16 = getelementptr inbounds %struct.Color* %1, i64 0, i32 1
  store float %12, float* %16, align 4
  %17 = getelementptr inbounds %struct.Color* %1, i64 0, i32 2
  store float %14, float* %17, align 8
  %18 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %1, double %mrv_gr12, float %mrv_gr14)
  %mrv_gr28 = extractvalue %0 %18, 0
  %tmp132 = bitcast double %mrv_gr28 to i64
  %mrv_gr30 = extractvalue %0 %18, 1
  %tmp122 = lshr i64 %tmp132, 32
  %tmp434 = trunc i64 %tmp132 to i32
  %tmp435 = bitcast i32 %tmp434 to float
  %tmp296 = trunc i64 %tmp198 to i32
  %tmp297 = bitcast i32 %tmp296 to float
  %19 = fmul float %tmp435, %tmp297
  %20 = fadd float %19, 0.000000e+00
  %tmp431 = trunc i64 %tmp122 to i32
  %tmp432 = bitcast i32 %tmp431 to float
  %tmp300 = trunc i64 %tmp188 to i32
  %tmp301 = bitcast i32 %tmp300 to float
  %21 = fmul float %tmp432, %tmp301
  %22 = fadd float %21, %20
  %23 = fmul float %mrv_gr30, %mrv_gr4
  %24 = fadd float %23, %22
  %25 = fptosi float %24 to i32
  %26 = fdiv float 1.000000e+00, %24
  %27 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %28 = load float* %27, align 4
  %29 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %30 = load float* %29, align 4
  %31 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %32 = load float* %31, align 4
  %33 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  store float %28, float* %33, align 8
  %34 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  store float %30, float* %34, align 4
  %35 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  store float %32, float* %35, align 8
  %36 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %0, double %val7, float %val9)
  %mrv_gr50 = extractvalue %0 %36, 0
  %tmp88 = bitcast double %mrv_gr50 to i64
  %mrv_gr52 = extractvalue %0 %36, 1
  %37 = getelementptr inbounds %struct.Color* %s, i64 0, i32 0
  %tmp75 = trunc i64 %tmp88 to i32
  %tmp76 = bitcast i32 %tmp75 to float
  store float %tmp76, float* %37, align 8
  %38 = getelementptr inbounds %struct.Color* %s, i64 0, i32 1
  %tmp78 = lshr i64 %tmp88, 32
  %tmp79 = trunc i64 %tmp78 to i32
  %tmp80 = bitcast i32 %tmp79 to float
  store float %tmp80, float* %38, align 4
  %39 = getelementptr inbounds %struct.Color* %s, i64 0, i32 2
  store float %mrv_gr52, float* %39, align 8
  %tmp479 = trunc i64 %tmp132 to i32
  %tmp480 = bitcast i32 %tmp479 to float
  %40 = fmul float %tmp480, %tmp76
  %41 = fadd float %40, 0.000000e+00
  %tmp476 = trunc i64 %tmp122 to i32
  %tmp477 = bitcast i32 %tmp476 to float
  %42 = fmul float %tmp477, %tmp80
  %43 = fadd float %42, %41
  %44 = fmul float %mrv_gr30, %mrv_gr52
  %45 = fadd float %44, %43
  %46 = fmul float %45, %26
  %47 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %s, double %mrv_gr, float %mrv_gr4)
  %mrv_gr67 = extractvalue %0 %47, 0
  %tmp66 = bitcast double %mrv_gr67 to i64
  %mrv_gr69 = extractvalue %0 %47, 1
  %tmp524 = trunc i64 %tmp66 to i32
  %tmp525 = bitcast i32 %tmp524 to float
  %48 = fmul float %tmp525, %10
  %49 = fadd float %48, 0.000000e+00
  %tmp520 = lshr i64 %tmp66, 32
  %tmp521 = trunc i64 %tmp520 to i32
  %tmp522 = bitcast i32 %tmp521 to float
  %50 = fmul float %tmp522, %12
  %51 = fadd float %50, %49
  %52 = fmul float %mrv_gr69, %14
  %53 = fadd float %52, %51
  %54 = fmul float %53, %26
  %55 = fcmp olt float %54, 0.000000e+00
  br i1 %55, label %return, label %bb81

bb81:                                             ; preds = %entry
  %abscond = icmp sgt i32 %25, -1
  %neg = sub i32 0, %25
  %abs = select i1 %abscond, i32 %25, i32 %neg
  %56 = sitofp i32 %abs to float
  %57 = fadd float %46, %54
  %58 = fcmp ule float %57, 1.000000e+00
  %not. = fcmp uge float %56, 0x3F50624DE0000000
  %notlhs = fcmp uge float %46, 0.000000e+00
  %notrhs = fcmp ule float %46, 1.000000e+00
  %not.or.cond = and i1 %notrhs, %notlhs
  %59 = and i1 %not.or.cond, %not.
  %or.cond559 = and i1 %58, %59
  br i1 %or.cond559, label %bb84, label %return

bb84:                                             ; preds = %bb81
  %tmp261 = trunc i64 %tmp176 to i32
  %tmp262 = bitcast i32 %tmp261 to float
  %60 = fmul float %tmp525, %tmp262
  %61 = fadd float %60, 0.000000e+00
  %tmp265 = trunc i64 %tmp166 to i32
  %tmp266 = bitcast i32 %tmp265 to float
  %62 = fmul float %tmp522, %tmp266
  %63 = fadd float %62, %61
  %64 = fmul float %mrv_gr69, %mrv_gr14
  %65 = fadd float %64, %63
  %66 = fmul float %65, %26
  %67 = fcmp olt float %66, 0x3F50624DE0000000
  %68 = fcmp oeq float %66, 1.000000e+10
  %or.cond560 = or i1 %67, %68
  br i1 %or.cond560, label %return, label %bb2.i

bb2.i:                                            ; preds = %bb84
  %69 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 0
  %70 = load float* %69, align 4
  %71 = fcmp ogt float %70, %66
  br i1 %71, label %bb3.i, label %return

bb3.i:                                            ; preds = %bb2.i
  store float %66, float* %69, align 4
  %72 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1
  %73 = load i32* %tri_address, align 4
  %74 = call float @llvm.trax.loadf(i32 %73, i32 2) nounwind
  %75 = load i32* %tri_address, align 4
  %76 = call float @llvm.trax.loadf(i32 %75, i32 1) nounwind
  %77 = load i32* %tri_address, align 4
  %78 = call float @llvm.trax.loadf(i32 %77, i32 0) nounwind
  %tmp421 = bitcast float %78 to i32
  %tmp422 = zext i32 %tmp421 to i64
  %tmp402 = bitcast float %76 to i32
  %tmp403 = zext i32 %tmp402 to i64
  %tmp404 = shl nuw i64 %tmp403, 32
  %ins406 = or i64 %tmp422, %tmp404
  %79 = load i32* %tri_address, align 4
  %80 = call float @llvm.trax.loadf(i32 %79, i32 5) nounwind
  %81 = load i32* %tri_address, align 4
  %82 = call float @llvm.trax.loadf(i32 %81, i32 4) nounwind
  %83 = load i32* %tri_address, align 4
  %84 = call float @llvm.trax.loadf(i32 %83, i32 3) nounwind
  %tmp397 = bitcast float %84 to i32
  %tmp398 = zext i32 %tmp397 to i64
  %tmp378 = bitcast float %82 to i32
  %tmp379 = zext i32 %tmp378 to i64
  %tmp380 = shl nuw i64 %tmp379, 32
  %ins382 = or i64 %tmp398, %tmp380
  %85 = load i32* %tri_address, align 4
  %86 = call float @llvm.trax.loadf(i32 %85, i32 8) nounwind
  %87 = load i32* %tri_address, align 4
  %88 = call float @llvm.trax.loadf(i32 %87, i32 7) nounwind
  %89 = load i32* %tri_address, align 4
  %90 = call float @llvm.trax.loadf(i32 %89, i32 6) nounwind
  %tmp373 = bitcast float %90 to i32
  %tmp374 = zext i32 %tmp373 to i64
  %tmp354 = bitcast float %88 to i32
  %tmp355 = zext i32 %tmp354 to i64
  %tmp356 = shl nuw i64 %tmp355, 32
  %ins358 = or i64 %tmp374, %tmp356
  %91 = load i32* %tri_address, align 4
  %92 = call i32 @llvm.trax.loadi(i32 %91, i32 10) nounwind
  %93 = load i32* %tri_address, align 4
  %94 = call i32 @llvm.trax.loadi(i32 %93, i32 9) nounwind
  %tmp419 = bitcast i64 %ins406 to double
  %tmp395 = bitcast i64 %ins382 to double
  %tmp371 = bitcast i64 %ins358 to double
  call fastcc void @_ZN8TrigonumC1E6VectorS0_S0_ii(%struct.Trigonum* %memtmp.i, double %tmp419, float %74, double %tmp395, float %80, double %tmp371, float %86, i32 %94, i32 %92) nounwind ssp
  %95 = bitcast %struct.Trigonum* %72 to i8*
  %memtmp4.i = bitcast %struct.Trigonum* %memtmp.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %memtmp4.i, i64 60, i32 4, i1 false) nounwind
  br label %return

return:                                           ; preds = %bb3.i, %bb2.i, %bb84, %bb81, %entry
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
