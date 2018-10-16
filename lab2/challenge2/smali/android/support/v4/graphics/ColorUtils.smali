.class public final Landroid/support/v4/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field

.field private static final XYZ_EPSILON:D = 0.008856

.field private static final XYZ_KAPPA:D = 903.3

.field private static final XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToColor([F)I
    .registers 14
    .param p0, "hsl"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 238
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 239
    .local v1, "h":F
    const/4 v2, 0x1

    aget v2, p0, v2

    .line 240
    .local v2, "s":F
    const/4 v3, 0x2

    aget v3, p0, v3

    .line 242
    .local v3, "l":F
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v6, v5

    mul-float v5, v5, v2

    .line 243
    .local v5, "c":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v7, v7, v5

    sub-float v7, v3, v7

    .line 244
    .local v7, "m":F
    const/high16 v8, 0x42700000    # 60.0f

    div-float v8, v1, v8

    rem-float/2addr v8, v4

    sub-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v6, v4

    mul-float v6, v6, v5

    .line 246
    .local v6, "x":F
    float-to-int v4, v1

    div-int/lit8 v4, v4, 0x3c

    .line 248
    .local v4, "hueSegment":I
    const/4 v8, 0x0

    .line 248
    .local v8, "r":I
    const/4 v9, 0x0

    .line 248
    .local v9, "g":I
    const/4 v10, 0x0

    .line 250
    .local v10, "b":I
    const/high16 v11, 0x437f0000    # 255.0f

    packed-switch v4, :pswitch_data_d6

    goto/16 :goto_c2

    .line 278
    :pswitch_38
    add-float v12, v5, v7

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 279
    mul-float v12, v7, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 280
    add-float v12, v6, v7

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    goto :goto_c2

    .line 272
    :pswitch_4f
    add-float v12, v6, v7

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 273
    mul-float v12, v7, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 274
    add-float v12, v5, v7

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 275
    goto :goto_c2

    .line 267
    :pswitch_66
    mul-float v12, v7, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 268
    add-float v12, v6, v7

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 269
    add-float v12, v5, v7

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 270
    goto :goto_c2

    .line 262
    :pswitch_7d
    mul-float v12, v7, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 263
    add-float v12, v5, v7

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 264
    add-float v12, v6, v7

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 265
    goto :goto_c2

    .line 257
    :pswitch_94
    add-float v12, v6, v7

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 258
    add-float v12, v5, v7

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 259
    mul-float v11, v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 260
    goto :goto_c2

    .line 252
    :pswitch_ab
    add-float v12, v5, v7

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 253
    add-float v12, v6, v7

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 254
    mul-float v11, v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 255
    nop

    .line 284
    :goto_c2
    const/16 v11, 0xff

    invoke-static {v8, v0, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v8

    .line 285
    invoke-static {v9, v0, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v9

    .line 286
    invoke-static {v10, v0, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v0

    .line 288
    .end local v10    # "b":I
    .local v0, "b":I
    invoke-static {v8, v9, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    return v10

    nop

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_ab
        :pswitch_94
        :pswitch_7d
        :pswitch_66
        :pswitch_4f
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method

.method public static LABToColor(DDD)I
    .registers 14
    .param p0, "l"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p2, "a"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p4, "b"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 502
    invoke-static {}, Landroid/support/v4/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v7

    .line 503
    .local v7, "result":[D
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Landroid/support/v4/graphics/ColorUtils;->LABToXYZ(DDD[D)V

    .line 504
    const/4 v0, 0x0

    aget-wide v1, v7, v0

    const/4 v0, 0x1

    aget-wide v3, v7, v0

    const/4 v0, 0x2

    aget-wide v5, v7, v0

    invoke-static/range {v1 .. v6}, Landroid/support/v4/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v0

    return v0
.end method

.method public static LABToXYZ(DDD[D)V
    .registers 30
    .param p0, "l"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p2, "a"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p4, "b"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p6, "outXyz"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 445
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double v2, p0, v0

    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    div-double/2addr v2, v4

    .line 446
    .local v2, "fy":D
    const-wide v6, 0x407f400000000000L    # 500.0

    div-double v6, p2, v6

    add-double/2addr v6, v2

    .line 447
    .local v6, "fx":D
    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    div-double v8, p4, v8

    sub-double v8, v2, v8

    .line 449
    .local v8, "fz":D
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    .line 450
    .local v12, "tmp":D
    const-wide v14, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v16, v12, v14

    const-wide v17, 0x408c3a6666666666L    # 903.3

    if-lez v16, :cond_2c

    move-wide/from16 v19, v12

    goto :goto_36

    :cond_2c
    mul-double v19, v6, v4

    const/16 v16, 0x0

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    sub-double v19, v19, v10

    div-double v19, v19, v17

    .line 451
    .local v19, "xr":D
    :goto_36
    const-wide v21, 0x401fff9da4c11507L    # 7.9996247999999985

    cmpl-double v16, p0, v21

    if-lez v16, :cond_44

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    goto :goto_46

    :cond_44
    div-double v21, p0, v17

    .line 453
    .local v21, "yr":D
    :goto_46
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 454
    .end local v12    # "tmp":D
    .local v0, "tmp":D
    cmpl-double v12, v0, v14

    if-lez v12, :cond_50

    move-wide v4, v0

    goto :goto_58

    :cond_50
    mul-double v4, v4, v8

    const/4 v12, 0x0

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    sub-double/2addr v4, v10

    div-double v4, v4, v17

    .line 456
    .local v4, "zr":D
    :goto_58
    const/4 v10, 0x0

    const-wide v11, 0x4057c3020c49ba5eL    # 95.047

    mul-double v11, v11, v19

    aput-wide v11, p6, v10

    .line 457
    const/4 v10, 0x1

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double v11, v11, v21

    aput-wide v11, p6, v10

    .line 458
    const/4 v10, 0x2

    const-wide v11, 0x405b3883126e978dL    # 108.883

    mul-double v11, v11, v4

    aput-wide v11, p6, v10

    .line 459
    return-void
.end method

.method public static RGBToHSL(III[F)V
    .registers 20
    .param p0, "r"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1, "g"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2, "b"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3, "outHsl"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 173
    move/from16 v0, p0

    int-to-float v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 174
    .local v1, "rf":F
    move/from16 v3, p1

    int-to-float v4, v3

    div-float/2addr v4, v2

    .line 175
    .local v4, "gf":F
    move/from16 v5, p2

    int-to-float v6, v5

    div-float/2addr v6, v2

    .line 177
    .local v6, "bf":F
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 178
    .local v2, "max":F
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 179
    .local v7, "min":F
    sub-float v8, v2, v7

    .line 182
    .local v8, "deltaMaxMin":F
    add-float v9, v2, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 184
    .local v9, "l":F
    cmpl-float v11, v2, v7

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    if-nez v11, :cond_2f

    .line 186
    move v10, v13

    .line 186
    .local v10, "s":F
    move v11, v13

    .line 186
    .local v11, "h":F
    goto :goto_54

    .line 188
    .end local v10    # "s":F
    .end local v11    # "h":F
    :cond_2f
    cmpl-float v11, v2, v1

    if-nez v11, :cond_3a

    .line 189
    sub-float v11, v4, v6

    div-float/2addr v11, v8

    const/high16 v14, 0x40c00000    # 6.0f

    rem-float/2addr v11, v14

    .line 189
    .restart local v11    # "h":F
    :goto_39
    goto :goto_49

    .line 190
    .end local v11    # "h":F
    :cond_3a
    cmpl-float v11, v2, v4

    if-nez v11, :cond_43

    .line 191
    sub-float v11, v6, v1

    div-float/2addr v11, v8

    add-float/2addr v11, v10

    goto :goto_39

    .line 193
    :cond_43
    sub-float v11, v1, v4

    div-float/2addr v11, v8

    const/high16 v14, 0x40800000    # 4.0f

    add-float/2addr v11, v14

    .line 196
    .restart local v11    # "h":F
    :goto_49
    mul-float v10, v10, v9

    sub-float/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float v10, v12, v10

    div-float v10, v8, v10

    .line 199
    .restart local v10    # "s":F
    :goto_54
    const/high16 v14, 0x42700000    # 60.0f

    mul-float v14, v14, v11

    const/high16 v12, 0x43b40000    # 360.0f

    rem-float/2addr v14, v12

    .line 200
    .end local v11    # "h":F
    .local v14, "h":F
    cmpg-float v11, v14, v13

    if-gez v11, :cond_60

    .line 201
    add-float/2addr v14, v12

    .line 204
    :cond_60
    const/4 v11, 0x0

    invoke-static {v14, v13, v12}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v12

    aput v12, p3, v11

    .line 205
    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v10, v13, v12}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v15

    aput v15, p3, v11

    .line 206
    const/4 v11, 0x2

    invoke-static {v9, v13, v12}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v12

    aput v12, p3, v11

    .line 207
    return-void
.end method

.method public static RGBToLAB(III[D)V
    .registers 12
    .param p0, "r"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1, "g"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2, "b"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3, "outLab"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 331
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/graphics/ColorUtils;->RGBToXYZ(III[D)V

    .line 333
    const/4 v0, 0x0

    aget-wide v1, p3, v0

    const/4 v0, 0x1

    aget-wide v3, p3, v0

    const/4 v0, 0x2

    aget-wide v5, p3, v0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Landroid/support/v4/graphics/ColorUtils;->XYZToLAB(DDD[D)V

    .line 335
    return-void
.end method

.method public static RGBToXYZ(III[D)V
    .registers 26
    .param p0, "r"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1, "g"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2, "b"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3, "outXyz"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 376
    move-object/from16 v0, p3

    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e

    .line 377
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "outXyz must have a length of 3."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 380
    :cond_e
    move/from16 v1, p0

    int-to-double v2, v1

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    .line 381
    .local v2, "sr":D
    const-wide v6, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v8, v2, v6

    const-wide v9, 0x4003333333333333L    # 2.4

    const-wide v11, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v13, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v15, 0x4029d70a3d70a3d7L    # 12.92

    if-gez v8, :cond_37

    div-double v17, v2, v15

    goto :goto_40

    :cond_37
    const/4 v8, 0x0

    add-double v17, v2, v13

    div-double v13, v17, v11

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    :goto_40
    move-wide/from16 v2, v17

    .line 382
    move/from16 v8, p1

    int-to-double v13, v8

    div-double/2addr v13, v4

    .line 383
    .local v13, "sg":D
    cmpg-double v17, v13, v6

    if-gez v17, :cond_4d

    div-double v17, v13, v15

    goto :goto_5c

    :cond_4d
    const/16 v17, 0x0

    const-wide v17, 0x3fac28f5c28f5c29L    # 0.055

    add-double v19, v13, v17

    div-double v6, v19, v11

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    :goto_5c
    move-wide/from16 v6, v17

    .line 384
    .end local v13    # "sg":D
    .local v6, "sg":D
    move/from16 v13, p2

    int-to-double v9, v13

    div-double/2addr v9, v4

    .line 385
    .local v9, "sb":D
    const-wide v4, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v14, v9, v4

    if-gez v14, :cond_6e

    div-double v4, v9, v15

    goto :goto_7f

    :cond_6e
    const/4 v4, 0x0

    const-wide v4, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v4, v9

    div-double/2addr v4, v11

    const-wide v11, 0x4003333333333333L    # 2.4

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 387
    .end local v9    # "sb":D
    .local v4, "sb":D
    :goto_7f
    const/4 v9, 0x0

    const-wide v10, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double v10, v10, v2

    const-wide v14, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double v14, v14, v6

    add-double/2addr v10, v14

    const-wide v14, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double v14, v14, v4

    add-double/2addr v10, v14

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double v10, v10, v14

    aput-wide v10, v0, v9

    .line 388
    const/4 v9, 0x1

    const-wide v10, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double v10, v10, v2

    const-wide v16, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double v16, v16, v6

    add-double v10, v10, v16

    const-wide v16, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double v16, v16, v4

    add-double v10, v10, v16

    mul-double v10, v10, v14

    aput-wide v10, v0, v9

    .line 389
    const/4 v9, 0x2

    const-wide v10, 0x3f93c36113404ea5L    # 0.0193

    mul-double v10, v10, v2

    const-wide v16, 0x3fbe83e425aee632L    # 0.1192

    mul-double v16, v16, v6

    add-double v10, v10, v16

    const-wide v16, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double v16, v16, v4

    add-double v10, v10, v16

    mul-double v10, v10, v14

    aput-wide v10, v0, v9

    .line 390
    return-void
.end method

.method public static XYZToColor(DDD)I
    .registers 28
    .param p0, "x"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 95.047
        .end annotation
    .end param
    .param p2, "y"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p4, "z"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 108.883
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 476
    const-wide v2, 0x4009ecbfb15b573fL    # 3.2406

    mul-double v2, v2, p0

    const-wide v4, -0x400767a0f9096bbaL    # -1.5372

    mul-double v4, v4, p2

    add-double/2addr v2, v4

    const-wide v4, -0x402016f0068db8bbL    # -0.4986

    mul-double v4, v4, p4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    .line 477
    .local v2, "r":D
    const-wide v6, -0x4010fec56d5cfaadL    # -0.9689

    mul-double v6, v6, p0

    const-wide v8, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double v8, v8, p2

    add-double/2addr v6, v8

    const-wide v8, 0x3fa53f7ced916873L    # 0.0415

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    div-double/2addr v6, v4

    .line 478
    .local v6, "g":D
    const-wide v8, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double v8, v8, p0

    const-wide v10, -0x4035e353f7ced917L    # -0.204

    mul-double v10, v10, p2

    add-double/2addr v8, v10

    const-wide v10, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double v10, v10, p4

    add-double/2addr v8, v10

    div-double/2addr v8, v4

    .line 480
    .local v8, "b":D
    const-wide v4, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v10, v2, v4

    const-wide v11, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v13, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v4, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const-wide v17, 0x3ff0e147ae147ae1L    # 1.055

    if-lez v10, :cond_70

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    mul-double v19, v19, v17

    sub-double v19, v19, v13

    goto :goto_72

    :cond_70
    mul-double v19, v2, v11

    :goto_72
    move-wide/from16 v2, v19

    .line 481
    const-wide v15, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v10, v6, v15

    if-lez v10, :cond_86

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    mul-double v19, v19, v17

    sub-double v19, v19, v13

    goto :goto_88

    :cond_86
    mul-double v19, v6, v11

    :goto_88
    move-wide/from16 v6, v19

    .line 482
    const-wide v15, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v10, v8, v15

    if-lez v10, :cond_9b

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v4, v4, v17

    sub-double/2addr v4, v13

    goto :goto_9d

    :cond_9b
    mul-double v4, v8, v11

    .line 484
    .end local v8    # "b":D
    .local v4, "b":D
    :goto_9d
    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double v10, v2, v8

    .line 485
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    const/16 v11, 0xff

    const/4 v0, 0x0

    invoke-static {v10, v0, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v1

    move/from16 v21, v1

    mul-double v0, v6, v8

    .line 486
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v0

    mul-double v8, v8, v4

    .line 487
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8, v1, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v1

    .line 484
    move/from16 v8, v21

    invoke-static {v8, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static XYZToLAB(DDD[D)V
    .registers 14
    .param p0, "x"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 95.047
        .end annotation
    .end param
    .param p2, "y"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p4, "z"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 108.883
        .end annotation
    .end param
    .param p6, "outLab"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 413
    array-length v0, p6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    .line 414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outLab must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_c
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    div-double v0, p0, v0

    invoke-static {v0, v1}, Landroid/support/v4/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p0

    .line 417
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v0, p2, v0

    invoke-static {v0, v1}, Landroid/support/v4/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p2

    .line 418
    const-wide v0, 0x405b3883126e978dL    # 108.883

    div-double v0, p4, v0

    invoke-static {v0, v1}, Landroid/support/v4/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p4

    .line 419
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x405d000000000000L    # 116.0

    mul-double v3, v3, p2

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    sub-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    aput-wide v1, p6, v0

    .line 420
    const/4 v0, 0x1

    const-wide v1, 0x407f400000000000L    # 500.0

    sub-double v3, p0, p2

    mul-double v3, v3, v1

    aput-wide v3, p6, v0

    .line 421
    const/4 v0, 0x2

    const-wide/high16 v1, 0x4069000000000000L    # 200.0

    sub-double v3, p2, p4

    mul-double v3, v3, v1

    aput-wide v3, p6, v0

    .line 422
    return-void
.end method

.method public static blendARGB(IIF)I
    .registers 12
    .param p0, "color1"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "color2"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "ratio"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 543
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 544
    .local v0, "inverseRatio":F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    .line 545
    .local v1, "a":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    .line 546
    .local v2, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    .line 547
    .local v3, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, p2

    add-float/2addr v4, v5

    .line 548
    .local v4, "b":F
    float-to-int v5, v1

    float-to-int v6, v2

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method public static blendHSL([F[FF[F)V
    .registers 8
    .param p0, "hsl1"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "hsl2"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ratio"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p3, "outResult"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 565
    array-length v0, p3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    .line 566
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "result must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 570
    .local v0, "inverseRatio":F
    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    invoke-static {v2, v3, p2}, Landroid/support/v4/graphics/ColorUtils;->circularInterpolate(FFF)F

    move-result v2

    aput v2, p3, v1

    .line 571
    const/4 v1, 0x1

    aget v2, p0, v1

    mul-float v2, v2, v0

    aget v3, p1, v1

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    aput v2, p3, v1

    .line 572
    const/4 v1, 0x2

    aget v2, p0, v1

    mul-float v2, v2, v0

    aget v3, p1, v1

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    aput v2, p3, v1

    .line 573
    return-void
.end method

.method public static blendLAB([D[DD[D)V
    .registers 12
    .param p0, "lab1"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "lab2"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ratio"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p4, "outResult"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 588
    array-length v0, p4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    .line 589
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outResult must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_c
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    .line 592
    .local v0, "inverseRatio":D
    const/4 v2, 0x0

    aget-wide v3, p0, v2

    mul-double v3, v3, v0

    aget-wide v5, p1, v2

    mul-double v5, v5, p2

    add-double/2addr v3, v5

    aput-wide v3, p4, v2

    .line 593
    const/4 v2, 0x1

    aget-wide v3, p0, v2

    mul-double v3, v3, v0

    aget-wide v5, p1, v2

    mul-double v5, v5, p2

    add-double/2addr v3, v5

    aput-wide v3, p4, v2

    .line 594
    const/4 v2, 0x2

    aget-wide v3, p0, v2

    mul-double v3, v3, v0

    aget-wide v5, p1, v2

    mul-double v5, v5, p2

    add-double/2addr v3, v5

    aput-wide v3, p4, v2

    .line 595
    return-void
.end method

.method public static calculateContrast(II)D
    .registers 10
    .param p0, "foreground"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "background"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 91
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_23

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background can not be translucent: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_23
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_2d

    .line 97
    invoke-static {p0, p1}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    .line 100
    :cond_2d
    invoke-static {p0}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    .line 101
    .local v0, "luminance1":D
    invoke-static {p1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v4

    add-double/2addr v4, v2

    .line 104
    .local v4, "luminance2":D
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    div-double/2addr v2, v6

    return-wide v2
.end method

.method public static calculateLuminance(I)D
    .registers 6
    .param p0, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 77
    invoke-static {}, Landroid/support/v4/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v0

    .line 78
    .local v0, "result":[D
    invoke-static {p0, v0}, Landroid/support/v4/graphics/ColorUtils;->colorToXYZ(I[D)V

    .line 80
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public static calculateMinimumAlpha(IIF)I
    .registers 13
    .param p0, "foreground"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "background"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "minContrastRatio"    # F

    .line 119
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_23

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background can not be translucent: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_23
    invoke-static {p0, v1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 126
    .local v0, "testForeground":I
    invoke-static {v0, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    .line 127
    .local v2, "testRatio":D
    float-to-double v4, p2

    cmpg-double v6, v2, v4

    if-gez v6, :cond_32

    .line 129
    const/4 v1, -0x1

    return v1

    .line 133
    :cond_32
    const/4 v4, 0x0

    .line 134
    .local v4, "numIterations":I
    const/4 v5, 0x0

    .line 135
    .local v5, "minAlpha":I
    nop

    .line 137
    .local v1, "maxAlpha":I
    :goto_35
    const/16 v6, 0xa

    if-gt v4, v6, :cond_55

    sub-int v6, v1, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_55

    .line 139
    add-int v6, v5, v1

    div-int/lit8 v6, v6, 0x2

    .line 141
    .local v6, "testAlpha":I
    invoke-static {p0, v6}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 142
    invoke-static {v0, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    .line 144
    float-to-double v7, p2

    cmpg-double v9, v2, v7

    if-gez v9, :cond_51

    .line 145
    move v5, v6

    goto :goto_52

    .line 147
    :cond_51
    move v1, v6

    .line 150
    :goto_52
    add-int/lit8 v4, v4, 0x1

    .line 151
    .end local v6    # "testAlpha":I
    goto :goto_35

    .line 154
    :cond_55
    return v1
.end method

.method static circularInterpolate(FFF)F
    .registers 5
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "f"    # F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 599
    sub-float v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    if-lez v0, :cond_15

    .line 600
    cmpl-float v0, p1, p0

    if-lez v0, :cond_14

    .line 601
    add-float/2addr p0, v1

    goto :goto_15

    .line 603
    :cond_14
    add-float/2addr p1, v1

    .line 606
    :cond_15
    :goto_15
    sub-float v0, p1, p0

    mul-float v0, v0, p2

    add-float/2addr v0, p0

    rem-float/2addr v0, v1

    return v0
.end method

.method public static colorToHSL(I[F)V
    .registers 5
    .param p0, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "outHsl"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 221
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 222
    return-void
.end method

.method public static colorToLAB(I[D)V
    .registers 5
    .param p0, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "outLab"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 310
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToLAB(III[D)V

    .line 311
    return-void
.end method

.method public static colorToXYZ(I[D)V
    .registers 5
    .param p0, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "outXyz"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 353
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToXYZ(III[D)V

    .line 354
    return-void
.end method

.method private static compositeAlpha(II)I
    .registers 4
    .param p0, "foregroundAlpha"    # I
    .param p1, "backgroundAlpha"    # I

    .line 63
    rsub-int v0, p1, 0xff

    rsub-int v1, p0, 0xff

    mul-int v0, v0, v1

    div-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    return v0
.end method

.method public static compositeColors(II)I
    .registers 9
    .param p0, "foreground"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "background"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 48
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 49
    .local v0, "bgAlpha":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 50
    .local v1, "fgAlpha":I
    invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v2

    .line 52
    .local v2, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 52
    invoke-static {v3, v1, v4, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v3

    .line 54
    .local v3, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 55
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 54
    invoke-static {v4, v1, v5, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v4

    .line 56
    .local v4, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 57
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 56
    invoke-static {v5, v1, v6, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v5

    .line 59
    .local v5, "b":I
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6
.end method

.method private static compositeComponent(IIIII)I
    .registers 8
    .param p0, "fgC"    # I
    .param p1, "fgA"    # I
    .param p2, "bgC"    # I
    .param p3, "bgA"    # I
    .param p4, "a"    # I

    .line 67
    if-nez p4, :cond_4

    const/4 v0, 0x0

    return v0

    .line 68
    :cond_4
    mul-int/lit16 v0, p0, 0xff

    mul-int v0, v0, p1

    mul-int v1, p2, p3

    rsub-int v2, p1, 0xff

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p4, 0xff

    div-int/2addr v0, v1

    return v0
.end method

.method private static constrain(FFF)F
    .registers 4
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 517
    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move v0, p1

    goto :goto_d

    :cond_6
    cmpl-float v0, p0, p2

    if-lez v0, :cond_c

    move v0, p2

    goto :goto_d

    :cond_c
    move v0, p0

    :goto_d
    return v0
.end method

.method private static constrain(III)I
    .registers 4
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 521
    if-ge p0, p1, :cond_4

    move v0, p1

    goto :goto_9

    :cond_4
    if-le p0, p2, :cond_8

    move v0, p2

    goto :goto_9

    :cond_8
    move v0, p0

    :goto_9
    return v0
.end method

.method public static distanceEuclidean([D[D)D
    .registers 11
    .param p0, "labX"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "labY"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 511
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/4 v2, 0x1

    aget-wide v5, p0, v2

    aget-wide v7, p1, v2

    sub-double/2addr v5, v7

    .line 512
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v0, v5

    const/4 v2, 0x2

    aget-wide v5, p0, v2

    aget-wide v7, p1, v2

    sub-double/2addr v5, v7

    .line 513
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 511
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static getTempDouble3Array()[D
    .registers 2

    .line 610
    sget-object v0, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 611
    .local v0, "result":[D
    if-nez v0, :cond_12

    .line 612
    const/4 v1, 0x3

    new-array v0, v1, [D

    .line 613
    sget-object v1, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 615
    :cond_12
    return-object v0
.end method

.method private static pivotXyzComponent(D)D
    .registers 6
    .param p0, "component"    # D

    .line 525
    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v2, p0, v0

    if-lez v2, :cond_13

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    .line 526
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_20

    :cond_13
    const-wide v0, 0x408c3a6666666666L    # 903.3

    mul-double v0, v0, p0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    :goto_20
    return-wide v0
.end method

.method public static setAlphaComponent(II)I
    .registers 4
    .param p0, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "alpha"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 297
    if-ltz p1, :cond_f

    const/16 v0, 0xff

    if-le p1, v0, :cond_7

    goto :goto_f

    .line 300
    :cond_7
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0

    .line 298
    :cond_f
    :goto_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alpha must be between 0 and 255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
