; ModuleID = 'rt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.1"

declare i32 @llvm.trax.loadi(i32, i32) nounwind

declare float @llvm.trax.loadf(i32, i32) nounwind

declare void @llvm.trax.storef(float, i32, i32) nounwind

declare float @llvm.trax.invsqrt(float) nounwind

define i32 @main() nounwind ssp {
entry:
  %0 = tail call i32 @llvm.trax.loadi(i32 0, i32 1)
  %1 = tail call i32 @llvm.trax.loadi(i32 0, i32 4)
  %2 = tail call i32 @llvm.trax.loadi(i32 0, i32 7) nounwind
  %3 = tail call i32 @llvm.trax.loadi(i32 0, i32 12)
  %4 = tail call float @llvm.trax.loadf(i32 %3, i32 0) nounwind
  %5 = tail call float @llvm.trax.loadf(i32 %3, i32 1) nounwind
  %6 = tail call float @llvm.trax.loadf(i32 %3, i32 2) nounwind
  %7 = tail call i32 @llvm.trax.loadi(i32 0, i32 10)
  %8 = tail call float @llvm.trax.loadf(i32 %7, i32 0) nounwind
  %9 = tail call float @llvm.trax.loadf(i32 %7, i32 1) nounwind
  %10 = tail call float @llvm.trax.loadf(i32 %7, i32 2) nounwind
  %11 = add nsw i32 %7, 9
  %12 = tail call float @llvm.trax.loadf(i32 %11, i32 0) nounwind
  %13 = tail call float @llvm.trax.loadf(i32 %11, i32 1) nounwind
  %14 = tail call float @llvm.trax.loadf(i32 %11, i32 2) nounwind
  %15 = add nsw i32 %7, 12
  %16 = tail call float @llvm.trax.loadf(i32 %15, i32 0) nounwind
  %17 = tail call float @llvm.trax.loadf(i32 %15, i32 1) nounwind
  %18 = tail call float @llvm.trax.loadf(i32 %15, i32 2) nounwind
  %19 = add nsw i32 %7, 15
  %20 = tail call float @llvm.trax.loadf(i32 %19, i32 0) nounwind
  %21 = tail call float @llvm.trax.loadf(i32 %19, i32 1) nounwind
  %22 = tail call float @llvm.trax.loadf(i32 %19, i32 2) nounwind
  %23 = add nsw i32 %7, 18
  %24 = tail call float @llvm.trax.loadf(i32 %23, i32 0) nounwind
  %25 = tail call float @llvm.trax.loadf(i32 %23, i32 1) nounwind
  %26 = tail call float @llvm.trax.loadf(i32 %23, i32 2) nounwind
  %27 = tail call i32 @llvm.trax.loadi(i32 0, i32 28)
  %28 = tail call i32 @llvm.trax.loadi(i32 0, i32 29)
  %29 = tail call i32 @llvm.trax.atominc(i32 0)
  %30 = mul nsw i32 %1, %0
  %31 = sitofp i32 %0 to float
  %32 = fdiv float %31, -2.000000e+00
  %33 = sitofp i32 %1 to float
  %34 = fdiv float %33, -2.000000e+00
  %35 = icmp sgt i32 %30, %29
  br i1 %35, label %bb.lr.ph, label %return

bb.lr.ph:                                         ; preds = %entry
  %tmp298 = bitcast float %8 to i32
  %tmp299 = zext i32 %tmp298 to i192
  %tmp253 = bitcast float %9 to i32
  %tmp254 = zext i32 %tmp253 to i192
  %tmp255 = shl nuw nsw i192 %tmp254, 32
  %tmp243 = bitcast float %10 to i32
  %tmp244 = zext i32 %tmp243 to i192
  %tmp245 = shl nuw nsw i192 %tmp244, 64
  %mask246.masked.masked = or i192 %tmp255, %tmp299
  %mask292.masked = or i192 %mask246.masked.masked, %tmp245
  %36 = icmp sgt i32 %28, 0
  %tmp1962 = zext i32 %tmp298 to i96
  %tmp1957 = trunc i192 %tmp255 to i96
  %ins1959 = or i96 %tmp1957, %tmp1962
  %tmp1419 = zext i96 %ins1959 to i128
  %tmp442 = zext i32 %tmp243 to i128
  %tmp1414 = shl nuw nsw i128 %tmp442, 64
  %mask1415 = or i128 %tmp1419, %tmp1414
  br label %bb

bb:                                               ; preds = %bb12, %bb.lr.ph
  %storemerge499 = phi i32 [ %29, %bb.lr.ph ], [ %187, %bb12 ]
  %memtmp4.i91.1492 = phi i128 [ undef, %bb.lr.ph ], [ %memtmp4.i91.0.lcssa, %bb12 ]
  %memtmp46.i.2488 = phi i128 [ undef, %bb.lr.ph ], [ %memtmp46.i.1.lcssa, %bb12 ]
  %memtmp103.i.2485 = phi i128 [ undef, %bb.lr.ph ], [ %memtmp103.i.1.lcssa, %bb12 ]
  %memtmp113.i.2484 = phi i128 [ undef, %bb.lr.ph ], [ %memtmp113.i.1.lcssa, %bb12 ]
  %memtmp.1481 = phi i128 [ undef, %bb.lr.ph ], [ %memtmp.0.lcssa, %bb12 ]
  %37 = sdiv i32 %storemerge499, %0
  %38 = srem i32 %storemerge499, %0
  %39 = sitofp i32 %38 to float
  %40 = fadd float %39, %32
  %41 = fadd float %40, 5.000000e-01
  %42 = fmul float %41, 2.000000e+00
  %43 = fdiv float %42, %31
  %44 = sitofp i32 %37 to float
  %45 = fadd float %44, %34
  %46 = fadd float %45, 5.000000e-01
  %47 = fmul float %46, 2.000000e+00
  %48 = fdiv float %47, %33
  %49 = fmul float %24, %48
  %50 = fmul float %25, %48
  %51 = fmul float %26, %48
  %52 = fmul float %20, %43
  %53 = fmul float %21, %43
  %54 = fmul float %22, %43
  %55 = fadd float %49, %52
  %56 = fadd float %50, %53
  %57 = fadd float %54, %51
  %58 = fadd float %55, %16
  %59 = fadd float %56, %17
  %60 = fadd float %18, %57
  %61 = fmul float %58, %58
  %62 = fmul float %59, %59
  %63 = fadd float %61, %62
  %64 = fmul float %60, %60
  %65 = fadd float %63, %64
  %66 = tail call float @llvm.trax.invsqrt(float %65) nounwind
  %67 = fdiv float 1.000000e+00, %66
  %68 = fdiv float %59, %67
  %69 = fdiv float %58, %67
  %tmp289 = bitcast float %69 to i32
  %tmp277 = bitcast float %68 to i32
  %tmp278 = zext i32 %tmp277 to i192
  %70 = mul nsw i32 %37, %0
  %71 = add nsw i32 %70, %38
  %72 = mul nsw i32 %71, 3
  %73 = add nsw i32 %72, %2
  br i1 %36, label %bb1.lr.ph, label %bb12

bb1.lr.ph:                                        ; preds = %bb
  %74 = fdiv float %60, %67
  %tmp263 = bitcast float %74 to i32
  %tmp279 = shl nuw nsw i192 %tmp278, 128
  %tmp290 = zext i32 %tmp289 to i192
  %mask280.masked = or i192 %mask292.masked, %tmp279
  %tmp264 = zext i32 %tmp263 to i192
  %tmp291 = shl nuw nsw i192 %tmp290, 96
  %mask266 = or i192 %mask280.masked, %tmp291
  %tmp265 = shl nuw i192 %tmp264, 160
  %ins267 = or i192 %mask266, %tmp265
  %75 = fmul float %69, 1.000000e+10
  %76 = fmul float %68, 1.000000e+10
  %tmp1938 = bitcast float %75 to i32
  %tmp1939 = zext i32 %tmp1938 to i96
  %tmp1932 = bitcast float %76 to i32
  %tmp1933 = zext i32 %tmp1932 to i96
  %tmp1934 = shl nuw nsw i96 %tmp1933, 32
  %ins1936 = or i96 %tmp1934, %tmp1939
  %tmp1441 = zext i96 %ins1936 to i128
  %77 = fadd float %75, %8
  %78 = fadd float %76, %9
  %79 = fmul float %69, %69
  %80 = fmul float %68, %68
  %81 = fadd float %79, %80
  %82 = fsub float %4, %77
  %83 = fsub float %5, %78
  %84 = fmul float %82, %82
  %85 = fmul float %83, %83
  %86 = fadd float %84, %85
  br label %bb1

bb1:                                              ; preds = %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit, %bb1.lr.ph
  %storemerge1463 = phi i32 [ 0, %bb1.lr.ph ], [ %186, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp4.i91.0456 = phi i128 [ %memtmp4.i91.1492, %bb1.lr.ph ], [ %ins1438, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp46.i.1452 = phi i128 [ %memtmp46.i.2488, %bb1.lr.ph ], [ %memtmp46.i.0, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp103.i.1448 = phi i128 [ %memtmp103.i.2485, %bb1.lr.ph ], [ %memtmp103.i.0, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp113.i.1446 = phi i128 [ %memtmp113.i.2484, %bb1.lr.ph ], [ %memtmp113.i.0, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp.0443 = phi i128 [ %memtmp.1481, %bb1.lr.ph ], [ %ins, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %tmp506 = mul i32 %storemerge1463, 11
  %tmp507 = add i32 %27, %tmp506
  %87 = tail call float @llvm.trax.loadf(i32 %tmp507, i32 2) nounwind
  %88 = tail call float @llvm.trax.loadf(i32 %tmp507, i32 1) nounwind
  %89 = tail call float @llvm.trax.loadf(i32 %tmp507, i32 0) nounwind
  %90 = tail call float @llvm.trax.loadf(i32 %tmp507, i32 5) nounwind
  %91 = tail call float @llvm.trax.loadf(i32 %tmp507, i32 4) nounwind
  %92 = tail call float @llvm.trax.loadf(i32 %tmp507, i32 3) nounwind
  %93 = tail call float @llvm.trax.loadf(i32 %tmp507, i32 8) nounwind
  %94 = tail call float @llvm.trax.loadf(i32 %tmp507, i32 7) nounwind
  %95 = tail call float @llvm.trax.loadf(i32 %tmp507, i32 6) nounwind
  %96 = tail call i32 @llvm.trax.loadi(i32 %tmp507, i32 10) nounwind
  %97 = tail call i32 @llvm.trax.loadi(i32 %tmp507, i32 9) nounwind
  %98 = tail call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %99 = mul nsw i32 %96, 25
  %100 = add nsw i32 %98, %99
  %101 = tail call float @llvm.trax.loadf(i32 %100, i32 6) nounwind
  %102 = tail call float @llvm.trax.loadf(i32 %100, i32 5) nounwind
  %103 = tail call float @llvm.trax.loadf(i32 %100, i32 4) nounwind
  %tmp1445500 = lshr i192 %ins267, 160
  %tmp1446 = trunc i192 %tmp1445500 to i32
  %tmp1447 = bitcast i32 %tmp1446 to float
  %104 = fmul float %tmp1447, 1.000000e+10
  %tmp1926 = bitcast float %104 to i32
  %mask1442 = and i128 %memtmp4.i91.0456, -79228162514264337593543950336
  %tmp1435 = zext i32 %tmp1926 to i128
  %tmp1436 = shl nuw nsw i128 %tmp1435, 64
  %mask1437 = or i128 %mask1442, %tmp1441
  %ins1438 = or i128 %mask1437, %tmp1436
  %ins1438.tr = trunc i128 %ins1438 to i96
  %tmp1401 = lshr i128 %mask1415, 64
  %tmp1402 = trunc i128 %tmp1401 to i32
  %tmp1403 = bitcast i32 %tmp1402 to float
  %tmp1558 = lshr i96 %ins1438.tr, 64
  %tmp1559 = trunc i96 %tmp1558 to i32
  %tmp1560 = bitcast i32 %tmp1559 to float
  %105 = fadd float %tmp1403, %tmp1560
  %106 = tail call float @llvm.trax.invsqrt(float 0.000000e+00) nounwind
  %107 = fdiv float 1.000000e+00, %106
  %108 = fdiv float 0.000000e+00, %107
  %109 = fmul float %tmp1447, %tmp1447
  %110 = fadd float %81, %109
  %111 = tail call float @llvm.trax.invsqrt(float %110) nounwind
  %112 = fdiv float 1.000000e+00, %111
  %113 = fdiv float %tmp1447, %112
  %114 = fdiv float %68, %112
  %115 = fdiv float %69, %112
  %116 = fmul float %115, %108
  %117 = fadd float %116, 0.000000e+00
  %118 = fmul float %114, %108
  %119 = fadd float %118, %117
  %120 = fmul float %113, %108
  %121 = fadd float %120, %119
  %122 = fcmp ogt float %121, 0.000000e+00
  br i1 %122, label %bb.i, label %bb52.i

bb.i:                                             ; preds = %bb1
  %123 = fmul float %108, -1.000000e+00
  %tmp2396 = bitcast float %123 to i32
  %tmp2397 = zext i32 %tmp2396 to i96
  %tmp2392 = shl nuw nsw i96 %tmp2397, 32
  %ins2394 = or i96 %tmp2397, %tmp2392
  %tmp1309 = zext i96 %ins2394 to i128
  %mask1310 = and i128 %memtmp46.i.1452, -79228162514264337593543950336
  %tmp1303 = zext i32 %tmp2396 to i128
  %tmp1304 = shl nuw nsw i128 %tmp1303, 64
  %mask1305 = or i128 %tmp1309, %mask1310
  %ins1306 = or i128 %mask1305, %tmp1304
  %tmp1291 = lshr i128 %ins1306, 64
  %tmp1292 = trunc i128 %tmp1291 to i32
  %tmp1293 = bitcast i32 %tmp1292 to float
  br label %bb52.i

bb52.i:                                           ; preds = %bb.i, %bb1
  %N.i.0.0 = phi float [ %123, %bb.i ], [ %108, %bb1 ]
  %N.i.2.0 = phi float [ %tmp1293, %bb.i ], [ %108, %bb1 ]
  %memtmp46.i.0 = phi i128 [ %ins1306, %bb.i ], [ %memtmp46.i.1452, %bb1 ]
  %124 = fsub float %6, %105
  %125 = fmul float %124, %124
  %126 = fadd float %86, %125
  %127 = tail call float @llvm.trax.invsqrt(float %126) nounwind
  %128 = fdiv float 1.000000e+00, %127
  %129 = fdiv float %124, %128
  %130 = fdiv float %83, %128
  %131 = fdiv float %82, %128
  %132 = fmul float %131, %N.i.0.0
  %133 = fadd float %132, 0.000000e+00
  %134 = fmul float %130, %N.i.0.0
  %135 = fadd float %134, %133
  %136 = fmul float %129, %N.i.2.0
  %137 = fadd float %136, %135
  %138 = fcmp ogt float %137, 0.000000e+00
  br i1 %138, label %bb93.i, label %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit

bb93.i:                                           ; preds = %bb52.i
  %139 = tail call float @llvm.trax.invsqrt(float %126) nounwind
  %140 = fdiv float 1.000000e+00, %139
  %141 = tail call i32 @llvm.trax.loadi(i32 0, i32 28) nounwind
  %142 = tail call i32 @llvm.trax.loadi(i32 0, i32 29) nounwind
  %143 = fcmp ule float %140, 1.000000e+10
  br i1 %143, label %bb7.i.i.us, label %bb7.i.i

bb7.i.i.us:                                       ; preds = %bb6.i.i.us, %bb93.i
  %144 = phi i32 [ %163, %bb6.i.i.us ], [ 0, %bb93.i ]
  %tmp504 = mul i32 %144, 11
  %tmp505 = add i32 %141, %tmp504
  %145 = icmp slt i32 %144, %142
  br i1 %145, label %bb6.i.i.us, label %bb96.i

bb6.i.i.us:                                       ; preds = %bb7.i.i.us
  %146 = tail call float @llvm.trax.loadf(i32 %tmp505, i32 2) nounwind
  %147 = tail call float @llvm.trax.loadf(i32 %tmp505, i32 1) nounwind
  %148 = tail call float @llvm.trax.loadf(i32 %tmp505, i32 0) nounwind
  %149 = tail call float @llvm.trax.loadf(i32 %tmp505, i32 5) nounwind
  %150 = tail call float @llvm.trax.loadf(i32 %tmp505, i32 4) nounwind
  %151 = tail call float @llvm.trax.loadf(i32 %tmp505, i32 3) nounwind
  %152 = tail call float @llvm.trax.loadf(i32 %tmp505, i32 8) nounwind
  %153 = tail call float @llvm.trax.loadf(i32 %tmp505, i32 7) nounwind
  %154 = tail call float @llvm.trax.loadf(i32 %tmp505, i32 6) nounwind
  %155 = tail call i32 @llvm.trax.loadi(i32 %tmp505, i32 10) nounwind
  %156 = tail call i32 @llvm.trax.loadi(i32 %tmp505, i32 9) nounwind
  %157 = tail call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %158 = mul nsw i32 %155, 25
  %159 = add nsw i32 %157, %158
  %160 = tail call float @llvm.trax.loadf(i32 %159, i32 6) nounwind
  %161 = tail call float @llvm.trax.loadf(i32 %159, i32 5) nounwind
  %162 = tail call float @llvm.trax.loadf(i32 %159, i32 4) nounwind
  %163 = add nsw i32 %144, 1
  br label %bb7.i.i.us

bb7.i.i:                                          ; preds = %bb93.i
  %.pre = icmp sgt i32 %142, 0
  br i1 %.pre, label %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit.loopexit, label %bb96.i

bb96.i:                                           ; preds = %bb7.i.i, %bb7.i.i.us
  %164 = fmul float %137, undef
  %tmp1869 = bitcast float %164 to i32
  %tmp1870 = zext i32 %tmp1869 to i96
  %tmp1865 = shl nuw nsw i96 %tmp1870, 32
  %ins1867 = or i96 %tmp1865, %tmp1870
  %tmp1177 = zext i96 %ins1867 to i128
  %mask1178 = and i128 %memtmp103.i.1448, -79228162514264337593543950336
  %tmp1171 = zext i32 %tmp1869 to i128
  %tmp1172 = shl nuw nsw i128 %tmp1171, 64
  %mask1173 = or i128 %tmp1172, %mask1178
  %ins1174 = or i128 %mask1173, %tmp1177
  %ins1174.tr = trunc i128 %ins1174 to i96
  %165 = fadd float %164, fmul (float undef, float 0x3FD99999A0000000)
  %tmp1829 = lshr i96 %ins1174.tr, 64
  %tmp1830 = trunc i96 %tmp1829 to i32
  %tmp1831 = bitcast i32 %tmp1830 to float
  %166 = fadd float %tmp1831, fmul (float undef, float 0x3FD99999A0000000)
  %tmp1824 = bitcast float %165 to i32
  %tmp1825 = zext i32 %tmp1824 to i96
  %tmp1820 = shl nuw nsw i96 %tmp1825, 32
  %ins1822 = or i96 %tmp1820, %tmp1825
  %tmp1812 = bitcast float %166 to i32
  %tmp1155 = zext i96 %ins1822 to i128
  %mask1156 = and i128 %memtmp113.i.1446, -79228162514264337593543950336
  %tmp1149 = zext i32 %tmp1812 to i128
  %tmp1150 = shl nuw nsw i128 %tmp1149, 64
  %mask1151 = or i128 %tmp1155, %mask1156
  %ins1152 = or i128 %mask1151, %tmp1150
  %tmp1137 = lshr i128 %ins1152, 64
  %tmp1138 = trunc i128 %tmp1137 to i32
  %tmp1139 = bitcast i32 %tmp1138 to float
  br label %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit

_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit.loopexit: ; preds = %bb7.i.i
  %167 = tail call float @llvm.trax.loadf(i32 %141, i32 2) nounwind
  %168 = tail call float @llvm.trax.loadf(i32 %141, i32 1) nounwind
  %169 = tail call float @llvm.trax.loadf(i32 %141, i32 0) nounwind
  %170 = tail call float @llvm.trax.loadf(i32 %141, i32 5) nounwind
  %171 = tail call float @llvm.trax.loadf(i32 %141, i32 4) nounwind
  %172 = tail call float @llvm.trax.loadf(i32 %141, i32 3) nounwind
  %173 = tail call float @llvm.trax.loadf(i32 %141, i32 8) nounwind
  %174 = tail call float @llvm.trax.loadf(i32 %141, i32 7) nounwind
  %175 = tail call float @llvm.trax.loadf(i32 %141, i32 6) nounwind
  %176 = tail call i32 @llvm.trax.loadi(i32 %141, i32 10) nounwind
  %177 = tail call i32 @llvm.trax.loadi(i32 %141, i32 9) nounwind
  %178 = tail call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %179 = mul nsw i32 %176, 25
  %180 = add nsw i32 %178, %179
  %181 = tail call float @llvm.trax.loadf(i32 %180, i32 6) nounwind
  %182 = tail call float @llvm.trax.loadf(i32 %180, i32 5) nounwind
  %183 = tail call float @llvm.trax.loadf(i32 %180, i32 4) nounwind
  br label %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit

_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit: ; preds = %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit.loopexit, %bb96.i, %bb52.i
  %light.i.0.0 = phi float [ %165, %bb96.i ], [ fmul (float undef, float 0x3FD99999A0000000), %bb52.i ], [ fmul (float undef, float 0x3FD99999A0000000), %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit.loopexit ]
  %light.i.2.0 = phi float [ %tmp1139, %bb96.i ], [ fmul (float undef, float 0x3FD99999A0000000), %bb52.i ], [ fmul (float undef, float 0x3FD99999A0000000), %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit.loopexit ]
  %memtmp113.i.0 = phi i128 [ %ins1152, %bb96.i ], [ %memtmp113.i.1446, %bb52.i ], [ %memtmp113.i.1446, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit.loopexit ]
  %memtmp103.i.0 = phi i128 [ %ins1174, %bb96.i ], [ %memtmp103.i.1448, %bb52.i ], [ %memtmp103.i.1448, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit.loopexit ]
  %184 = fmul float %light.i.0.0, 0.000000e+00
  %185 = fmul float %light.i.2.0, 0.000000e+00
  %tmp1711 = bitcast float %184 to i32
  %tmp1712 = zext i32 %tmp1711 to i96
  %tmp1707 = shl nuw nsw i96 %tmp1712, 32
  %ins1709 = or i96 %tmp1707, %tmp1712
  %tmp1699 = bitcast float %185 to i32
  %tmp1111 = zext i96 %ins1709 to i128
  %tmp1105 = zext i32 %tmp1699 to i128
  %tmp1106 = shl nuw nsw i128 %tmp1105, 64
  %mask141 = and i128 %memtmp.0443, -79228162514264337593543950336
  %mask = or i128 %tmp1111, %mask141
  %ins = or i128 %mask, %tmp1106
  %ins.tr = trunc i128 %ins to i96
  tail call void @llvm.trax.storef(float %184, i32 %73, i32 0) nounwind
  tail call void @llvm.trax.storef(float %184, i32 %73, i32 1) nounwind
  %tmp365 = lshr i96 %ins.tr, 64
  %tmp366 = trunc i96 %tmp365 to i32
  %tmp367 = bitcast i32 %tmp366 to float
  tail call void @llvm.trax.storef(float %tmp367, i32 %73, i32 2) nounwind
  %186 = add nsw i32 %storemerge1463, 1
  %exitcond = icmp eq i32 %186, %28
  br i1 %exitcond, label %bb12, label %bb1

bb12:                                             ; preds = %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit, %bb
  %memtmp4.i91.0.lcssa = phi i128 [ %memtmp4.i91.1492, %bb ], [ %ins1438, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp46.i.1.lcssa = phi i128 [ %memtmp46.i.2488, %bb ], [ %memtmp46.i.0, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp103.i.1.lcssa = phi i128 [ %memtmp103.i.2485, %bb ], [ %memtmp103.i.0, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp113.i.1.lcssa = phi i128 [ %memtmp113.i.2484, %bb ], [ %memtmp113.i.0, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp.0.lcssa = phi i128 [ %memtmp.1481, %bb ], [ %ins, %_ZN6Shader10lambertianE9HitRecord3Ray10PointLight5Color.exit ]
  %187 = tail call i32 @llvm.trax.atominc(i32 0)
  %188 = icmp sgt i32 %30, %187
  br i1 %188, label %bb, label %return

return:                                           ; preds = %bb12, %entry
  ret i32 0
}

declare i32 @llvm.trax.atominc(i32) nounwind
