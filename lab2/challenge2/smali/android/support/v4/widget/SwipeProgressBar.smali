.class final Landroid/support/v4/widget/SwipeProgressBar;
.super Ljava/lang/Object;
.source "SwipeProgressBar.java"


# static fields
.field private static final ANIMATION_DURATION_MS:I = 0x7d0

.field private static final COLOR1:I = -0x4d000000

.field private static final COLOR2:I = -0x80000000

.field private static final COLOR3:I = 0x4d000000

.field private static final COLOR4:I = 0x1a000000

.field private static final FINISH_ANIMATION_DURATION_MS:I = 0x3e8

.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private final mClipRect:Landroid/graphics/RectF;

.field private mColor1:I

.field private mColor2:I

.field private mColor3:I

.field private mColor4:I

.field private mFinishTime:J

.field private final mPaint:Landroid/graphics/Paint;

.field private mParent:Landroid/view/View;

.field private mRunning:Z

.field private mStartTime:J

.field private mTriggerPercentage:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "parent"    # Landroid/view/View;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    .line 71
    iput-object p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    .line 72
    const/high16 v0, -0x4d000000

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    .line 73
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    .line 74
    const/high16 v0, 0x4d000000    # 1.34217728E8f

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    .line 75
    const/high16 v0, 0x1a000000

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    .line 76
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFIF)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "color"    # I
    .param p5, "pct"    # F

    .line 258
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 260
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 261
    sget-object v0, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 262
    .local v0, "radiusScale":F
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 263
    iget-object v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, p2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 265
    return-void
.end method

.method private drawTrigger(Landroid/graphics/Canvas;II)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # I
    .param p3, "cy"    # I

    .line 244
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p2

    iget v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    mul-float v2, v2, v3

    iget-object v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 246
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .registers 32
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v6, p0

    .line 139
    move-object/from16 v7, p1

    iget-object v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 140
    .local v8, "width":I
    iget-object v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 141
    .local v9, "height":I
    div-int/lit8 v10, v8, 0x2

    .line 142
    .local v10, "cx":I
    div-int/lit8 v11, v9, 0x2

    .line 143
    .local v11, "cy":I
    const/4 v0, 0x0

    .line 144
    .local v0, "drawTriggerWhileFinishing":Z
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 145
    .local v12, "restoreCount":I
    iget-object v1, v6, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 147
    iget-boolean v1, v6, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    const-wide/16 v2, 0x0

    const/4 v13, 0x0

    if-nez v1, :cond_40

    iget-wide v4, v6, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_2c

    goto :goto_40

    .line 236
    :cond_2c
    iget v1, v6, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    cmpl-float v1, v1, v13

    if-lez v1, :cond_198

    iget v1, v6, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_198

    .line 237
    invoke-direct {v6, v7, v10, v11}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    goto/16 :goto_198

    .line 148
    :cond_40
    :goto_40
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v14

    .line 149
    .local v14, "now":J
    iget-wide v4, v6, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    sub-long v16, v14, v4

    const-wide/16 v4, 0x7d0

    rem-long v2, v16, v4

    .line 150
    .local v2, "elapsed":J
    move/from16 v20, v0

    iget-wide v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    .line 150
    .end local v0    # "drawTriggerWhileFinishing":Z
    .local v20, "drawTriggerWhileFinishing":Z
    sub-long v16, v14, v0

    div-long v16, v16, v4

    .line 151
    .local v16, "iterations":J
    long-to-float v0, v2

    const/high16 v1, 0x41a00000    # 20.0f

    div-float v21, v0, v1

    .line 155
    .local v21, "rawProgress":F
    iget-boolean v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    const/high16 v22, 0x42c80000    # 100.0f

    if-nez v0, :cond_a0

    .line 158
    iget-wide v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    sub-long v4, v14, v0

    const-wide/16 v0, 0x3e8

    cmp-long v23, v4, v0

    if-ltz v23, :cond_6e

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    .line 160
    return-void

    .line 166
    :cond_6e
    iget-wide v4, v6, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    sub-long v23, v14, v4

    rem-long v0, v23, v0

    .line 167
    .local v0, "finishElapsed":J
    long-to-float v4, v0

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    .line 168
    .local v4, "finishProgress":F
    div-float v5, v4, v22

    .line 170
    .local v5, "pct":F
    div-int/lit8 v13, v8, 0x2

    int-to-float v13, v13

    move-wide/from16 v25, v0

    sget-object v0, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 170
    .end local v0    # "finishElapsed":J
    .local v25, "finishElapsed":J
    invoke-interface {v0, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float v13, v13, v0

    .line 171
    .local v13, "clearRadius":F
    iget-object v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    int-to-float v1, v10

    sub-float/2addr v1, v13

    move-wide/from16 v27, v2

    int-to-float v2, v10

    .line 171
    .end local v2    # "elapsed":J
    .local v27, "elapsed":J
    add-float/2addr v2, v13

    int-to-float v3, v9

    move/from16 v29, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 172
    .end local v4    # "finishProgress":F
    .local v29, "finishProgress":F
    iget-object v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1, v1}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 177
    const/4 v0, 0x1

    .line 181
    .end local v5    # "pct":F
    .end local v13    # "clearRadius":F
    .end local v20    # "drawTriggerWhileFinishing":Z
    .end local v25    # "finishElapsed":J
    .end local v29    # "finishProgress":F
    .local v0, "drawTriggerWhileFinishing":Z
    move/from16 v20, v0

    goto :goto_a2

    .line 181
    .end local v0    # "drawTriggerWhileFinishing":Z
    .end local v27    # "elapsed":J
    .restart local v2    # "elapsed":J
    .restart local v20    # "drawTriggerWhileFinishing":Z
    :cond_a0
    move-wide/from16 v27, v2

    .line 181
    .end local v2    # "elapsed":J
    .restart local v27    # "elapsed":J
    :goto_a2
    const-wide/16 v0, 0x0

    cmp-long v2, v16, v0

    const/high16 v13, 0x42960000    # 75.0f

    const/high16 v18, 0x42480000    # 50.0f

    const/high16 v19, 0x41c80000    # 25.0f

    if-nez v2, :cond_b4

    .line 182
    iget v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_e4

    .line 184
    :cond_b4
    const/4 v0, 0x0

    cmpl-float v1, v21, v0

    if-ltz v1, :cond_c3

    cmpg-float v0, v21, v19

    if-gez v0, :cond_c3

    .line 185
    iget v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_e4

    .line 186
    :cond_c3
    cmpl-float v0, v21, v19

    if-ltz v0, :cond_d1

    cmpg-float v0, v21, v18

    if-gez v0, :cond_d1

    .line 187
    iget v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_e4

    .line 188
    :cond_d1
    cmpl-float v0, v21, v18

    if-ltz v0, :cond_df

    cmpg-float v0, v21, v13

    if-gez v0, :cond_df

    .line 189
    iget v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_e4

    .line 191
    :cond_df
    iget v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 201
    :goto_e4
    const/4 v0, 0x0

    cmpl-float v1, v21, v0

    const/high16 v23, 0x40000000    # 2.0f

    if-ltz v1, :cond_103

    cmpg-float v0, v21, v19

    if-gtz v0, :cond_103

    .line 202
    add-float v0, v21, v19

    mul-float v0, v0, v23

    div-float v24, v0, v22

    .line 203
    .local v24, "pct":F
    int-to-float v2, v10

    int-to-float v3, v11

    iget v4, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move-object v0, v6

    move-object v1, v7

    move-wide/from16 v25, v27

    .line 203
    .end local v27    # "elapsed":J
    .local v25, "elapsed":J
    move/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 203
    .end local v24    # "pct":F
    goto :goto_105

    .line 205
    .end local v25    # "elapsed":J
    .restart local v27    # "elapsed":J
    :cond_103
    move-wide/from16 v25, v27

    .line 205
    .end local v27    # "elapsed":J
    .restart local v25    # "elapsed":J
    :goto_105
    const/4 v0, 0x0

    cmpl-float v1, v21, v0

    if-ltz v1, :cond_11d

    cmpg-float v0, v21, v18

    if-gtz v0, :cond_11d

    .line 206
    mul-float v0, v21, v23

    div-float v24, v0, v22

    .line 207
    .restart local v24    # "pct":F
    int-to-float v2, v10

    int-to-float v3, v11

    iget v4, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    move-object v0, v6

    move-object v1, v7

    move/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 209
    .end local v24    # "pct":F
    :cond_11d
    cmpl-float v0, v21, v19

    if-ltz v0, :cond_136

    cmpg-float v0, v21, v13

    if-gtz v0, :cond_136

    .line 210
    sub-float v0, v21, v19

    mul-float v0, v0, v23

    div-float v19, v0, v22

    .line 211
    .local v19, "pct":F
    int-to-float v2, v10

    int-to-float v3, v11

    iget v4, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    move-object v0, v6

    move-object v1, v7

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 213
    .end local v19    # "pct":F
    :cond_136
    cmpl-float v0, v21, v18

    if-ltz v0, :cond_14f

    cmpg-float v0, v21, v22

    if-gtz v0, :cond_14f

    .line 214
    sub-float v0, v21, v18

    mul-float v0, v0, v23

    div-float v18, v0, v22

    .line 215
    .local v18, "pct":F
    int-to-float v2, v10

    int-to-float v3, v11

    iget v4, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    move-object v0, v6

    move-object v1, v7

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 217
    .end local v18    # "pct":F
    :cond_14f
    cmpl-float v0, v21, v13

    if-ltz v0, :cond_167

    cmpg-float v0, v21, v22

    if-gtz v0, :cond_167

    .line 218
    sub-float v0, v21, v13

    mul-float v0, v0, v23

    div-float v13, v0, v22

    .line 219
    .local v13, "pct":F
    int-to-float v2, v10

    int-to-float v3, v11

    iget v4, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move-object v0, v6

    move-object v1, v7

    move v5, v13

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 221
    .end local v13    # "pct":F
    :cond_167
    iget v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_180

    if-eqz v20, :cond_180

    .line 226
    invoke-virtual {v7, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 228
    .end local v12    # "restoreCount":I
    .local v0, "restoreCount":I
    iget-object v1, v6, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 229
    invoke-direct {v6, v7, v10, v11}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    .line 232
    move v12, v0

    .line 232
    .end local v0    # "restoreCount":I
    .restart local v12    # "restoreCount":I
    :cond_180
    iget-object v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    iget-object v1, v6, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, v6, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, v6, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, v6, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    .line 234
    .end local v14    # "now":J
    .end local v16    # "iterations":J
    .end local v21    # "rawProgress":F
    .end local v25    # "elapsed":J
    nop

    .line 240
    move/from16 v0, v20

    .line 240
    .end local v20    # "drawTriggerWhileFinishing":Z
    .local v0, "drawTriggerWhileFinishing":Z
    :cond_198
    :goto_198
    invoke-virtual {v7, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 241
    return-void
.end method

.method isRunning()Z
    .registers 6

    .line 135
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-nez v0, :cond_f

    iget-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method setBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 271
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 272
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 273
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 274
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 275
    return-void
.end method

.method setColorScheme(IIII)V
    .registers 5
    .param p1, "color1"    # I
    .param p2, "color2"    # I
    .param p3, "color3"    # I
    .param p4, "color4"    # I

    .line 89
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    .line 90
    iput p2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    .line 91
    iput p3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    .line 92
    iput p4, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    .line 93
    return-void
.end method

.method setTriggerPercentage(F)V
    .registers 7
    .param p1, "triggerPercentage"    # F

    .line 101
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    .line 103
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    .line 105
    return-void
.end method

.method start()V
    .registers 3

    .line 111
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-nez v0, :cond_15

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    .line 113
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    .line 115
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 117
    :cond_15
    return-void
.end method

.method stop()V
    .registers 3

    .line 123
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-eqz v0, :cond_15

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    .line 125
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    .line 127
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 129
    :cond_15
    return-void
.end method
