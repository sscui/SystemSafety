.class public Landroid/support/constraint/ConstraintLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$LayoutParams$Table;
    }
.end annotation


# static fields
.field public static final BASELINE:I = 0x5

.field public static final BOTTOM:I = 0x4

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static final END:I = 0x7

.field public static final HORIZONTAL:I = 0x0

.field public static final LEFT:I = 0x1

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_PERCENT:I = 0x2

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final START:I = 0x6

.field public static final TOP:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field public baselineToBaseline:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public circleAngle:F

.field public circleConstraint:I

.field public circleRadius:I

.field public constrainedHeight:Z

.field public constrainedWidth:Z

.field public dimensionRatio:Ljava/lang/String;

.field dimensionRatioSide:I

.field dimensionRatioValue:F

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public endToEnd:I

.field public endToStart:I

.field public goneBottomMargin:I

.field public goneEndMargin:I

.field public goneLeftMargin:I

.field public goneRightMargin:I

.field public goneStartMargin:I

.field public goneTopMargin:I

.field public guideBegin:I

.field public guideEnd:I

.field public guidePercent:F

.field public helped:Z

.field public horizontalBias:F

.field public horizontalChainStyle:I

.field horizontalDimensionFixed:Z

.field public horizontalWeight:F

.field isGuideline:Z

.field isHelper:Z

.field isInPlaceholder:Z

.field public leftToLeft:I

.field public leftToRight:I

.field public matchConstraintDefaultHeight:I

.field public matchConstraintDefaultWidth:I

.field public matchConstraintMaxHeight:I

.field public matchConstraintMaxWidth:I

.field public matchConstraintMinHeight:I

.field public matchConstraintMinWidth:I

.field public matchConstraintPercentHeight:F

.field public matchConstraintPercentWidth:F

.field needsBaseline:Z

.field public orientation:I

.field resolveGoneLeftMargin:I

.field resolveGoneRightMargin:I

.field resolvedGuideBegin:I

.field resolvedGuideEnd:I

.field resolvedGuidePercent:F

.field resolvedHorizontalBias:F

.field resolvedLeftToLeft:I

.field resolvedLeftToRight:I

.field resolvedRightToLeft:I

.field resolvedRightToRight:I

.field public rightToLeft:I

.field public rightToRight:I

.field public startToEnd:I

.field public startToStart:I

.field public topToBottom:I

.field public topToTop:I

.field public verticalBias:F

.field public verticalChainStyle:I

.field verticalDimensionFixed:Z

.field public verticalWeight:F

.field widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;


# direct methods
.method public constructor <init>(II)V
    .registers 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2983
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2109
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2114
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 2119
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2124
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2129
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2134
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2139
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2144
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2149
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2154
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2159
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2164
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2169
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 2174
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 2179
    const/4 v3, 0x0

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2184
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2189
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2194
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2199
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2204
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2209
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2214
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2219
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2224
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2229
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 2234
    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2239
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 2244
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2249
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 2254
    const/4 v3, 0x1

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2260
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2266
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2278
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2290
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2303
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2316
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2322
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2328
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2334
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2340
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 2345
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2350
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2356
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2362
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2364
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 2373
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2382
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2385
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2386
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2388
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2389
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2390
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2391
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2393
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2394
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2395
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2396
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2397
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2398
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2399
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2405
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2413
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    .line 2984
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 22
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    move-object/from16 v1, p0

    .line 2592
    invoke-direct/range {p0 .. p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2109
    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2114
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 2119
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2124
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2129
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2134
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2139
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2144
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2149
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2154
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2159
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2164
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2169
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 2174
    const/4 v4, 0x0

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 2179
    const/4 v5, 0x0

    iput v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2184
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2189
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2194
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2199
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2204
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2209
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2214
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2219
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2224
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2229
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 2234
    const/high16 v6, 0x3f000000    # 0.5f

    iput v6, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2239
    iput v6, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 2244
    const/4 v7, 0x0

    iput-object v7, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2249
    iput v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 2254
    const/4 v7, 0x1

    iput v7, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2260
    iput v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2266
    iput v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2278
    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2290
    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2303
    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2316
    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2322
    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2328
    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2334
    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2340
    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 2345
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2350
    iput v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2356
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2362
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2364
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 2373
    iput-boolean v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2382
    iput-boolean v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2385
    iput-boolean v7, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2386
    iput-boolean v7, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2388
    iput-boolean v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2389
    iput-boolean v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2390
    iput-boolean v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2391
    iput-boolean v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2393
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2394
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2395
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2396
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2397
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2398
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2399
    iput v6, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2405
    new-instance v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2413
    iput-boolean v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    .line 2593
    sget-object v3, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    invoke-virtual {v6, v8, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 2594
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v9

    .line 2595
    .local v9, "N":I
    const/4 v10, 0x0

    .line 2595
    .local v10, "i":I
    :goto_a0
    if-ge v10, v9, :cond_471

    .line 2596
    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v11

    .line 2597
    .local v11, "attr":I
    sget-object v12, Landroid/support/constraint/ConstraintLayout$LayoutParams$Table;->map:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    .line 2598
    .local v12, "look":I
    const/4 v13, -0x2

    packed-switch v12, :pswitch_data_478

    .line 2595
    .end local v11    # "attr":I
    .end local v12    # "look":I
    :cond_b0
    :goto_b0
    :pswitch_b0
    const/4 v2, 0x0

    const/4 v5, 0x1

    :cond_b2
    :goto_b2
    const/4 v7, -0x1

    :cond_b3
    :goto_b3
    const/4 v13, 0x0

    goto/16 :goto_469

    .line 2689
    .restart local v11    # "attr":I
    .restart local v12    # "look":I
    :pswitch_b6
    iget v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v3, v11, v13}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v13

    iput v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2690
    goto :goto_b0

    .line 2685
    :pswitch_bf
    iget v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    invoke-virtual {v3, v11, v13}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v13

    iput v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2686
    goto :goto_b0

    .line 2835
    :pswitch_c8
    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2836
    goto :goto_b0

    .line 2831
    :pswitch_cf
    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2832
    goto :goto_b0

    .line 2827
    :pswitch_d6
    iget v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {v3, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    iput v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2828
    goto :goto_b0

    .line 2823
    :pswitch_df
    iget v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {v3, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    iput v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2824
    goto :goto_b0

    .line 2773
    :pswitch_e8
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2774
    const/high16 v13, 0x7fc00000    # NaNf

    iput v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 2775
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2776
    iget-object v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    if-eqz v13, :cond_b0

    .line 2777
    iget-object v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    .line 2778
    .local v13, "len":I
    iget-object v14, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/16 v15, 0x2c

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 2779
    .local v14, "commaIndex":I
    if-lez v14, :cond_12a

    add-int/lit8 v15, v13, -0x1

    if-ge v14, v15, :cond_12a

    .line 2780
    iget-object v15, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v15, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 2781
    .local v15, "dimension":Ljava/lang/String;
    const-string v2, "W"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 2782
    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    goto :goto_127

    .line 2783
    :cond_11d
    const-string v2, "H"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_127

    .line 2784
    iput v7, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2786
    :cond_127
    :goto_127
    add-int/lit8 v14, v14, 0x1

    .line 2787
    .end local v15    # "dimension":Ljava/lang/String;
    goto :goto_12b

    .line 2788
    :cond_12a
    const/4 v14, 0x0

    .line 2790
    :goto_12b
    iget-object v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/16 v15, 0x3a

    invoke-virtual {v2, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2791
    .local v2, "colonIndex":I
    if-ltz v2, :cond_188

    add-int/lit8 v15, v13, -0x1

    if-ge v2, v15, :cond_188

    .line 2792
    iget-object v15, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v15, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 2793
    .local v15, "nominator":Ljava/lang/String;
    iget-object v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2794
    .local v4, "denominator":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_185

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_185

    .line 2796
    :try_start_153
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 2797
    .local v7, "nominatorValue":F
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    .line 2798
    .local v16, "denominatorValue":F
    cmpl-float v17, v7, v5

    if-lez v17, :cond_17e

    cmpl-float v17, v16, v5

    if-lez v17, :cond_17e

    .line 2799
    iget v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I
    :try_end_165
    .catch Ljava/lang/NumberFormatException; {:try_start_153 .. :try_end_165} :catch_181

    move/from16 v18, v2

    const/4 v2, 0x1

    if-ne v5, v2, :cond_175

    .line 2800
    .end local v2    # "colonIndex":I
    .local v18, "colonIndex":I
    div-float v2, v16, v7

    :try_start_16c
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    goto :goto_180

    .line 2805
    .end local v7    # "nominatorValue":F
    .end local v16    # "denominatorValue":F
    :catch_173
    move-exception v0

    goto :goto_184

    .line 2802
    .restart local v7    # "nominatorValue":F
    .restart local v16    # "denominatorValue":F
    :cond_175
    div-float v2, v7, v16

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F
    :try_end_17d
    .catch Ljava/lang/NumberFormatException; {:try_start_16c .. :try_end_17d} :catch_173

    .line 2802
    .end local v7    # "nominatorValue":F
    .end local v16    # "denominatorValue":F
    goto :goto_180

    .line 2807
    .end local v18    # "colonIndex":I
    .restart local v2    # "colonIndex":I
    :cond_17e
    move/from16 v18, v2

    .line 2807
    .end local v2    # "colonIndex":I
    .restart local v18    # "colonIndex":I
    :goto_180
    goto :goto_187

    .line 2805
    .end local v18    # "colonIndex":I
    .restart local v2    # "colonIndex":I
    :catch_181
    move-exception v0

    move/from16 v18, v2

    .line 2805
    .end local v2    # "colonIndex":I
    .end local v4    # "denominator":Ljava/lang/String;
    .end local v15    # "nominator":Ljava/lang/String;
    .restart local v18    # "colonIndex":I
    :goto_184
    goto :goto_187

    .line 2809
    .end local v18    # "colonIndex":I
    .restart local v2    # "colonIndex":I
    :cond_185
    move/from16 v18, v2

    .line 2809
    .end local v2    # "colonIndex":I
    .restart local v18    # "colonIndex":I
    :goto_187
    goto :goto_19e

    .line 2810
    .end local v18    # "colonIndex":I
    .restart local v2    # "colonIndex":I
    :cond_188
    move/from16 v18, v2

    .line 2810
    .end local v2    # "colonIndex":I
    .restart local v18    # "colonIndex":I
    iget-object v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2811
    .local v2, "r":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_19e

    .line 2813
    :try_start_196
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F
    :try_end_19c
    .catch Ljava/lang/NumberFormatException; {:try_start_196 .. :try_end_19c} :catch_19d

    .line 2816
    goto :goto_19e

    .line 2814
    :catch_19d
    move-exception v0

    .line 2819
    .end local v2    # "r":Ljava/lang/String;
    .end local v13    # "len":I
    .end local v14    # "commaIndex":I
    .end local v18    # "colonIndex":I
    :cond_19e
    :goto_19e
    goto/16 :goto_b0

    .line 2928
    :pswitch_1a0
    goto/16 :goto_b0

    .line 2924
    :pswitch_1a2
    goto/16 :goto_b0

    .line 2920
    :pswitch_1a4
    goto/16 :goto_b0

    .line 2916
    :pswitch_1a6
    goto/16 :goto_b0

    .line 2911
    :pswitch_1a8
    iget v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {v3, v11, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2912
    goto/16 :goto_b0

    .line 2901
    :pswitch_1b7
    :try_start_1b7
    iget v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    invoke-virtual {v3, v11, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1bf} :catch_1c1

    .line 2907
    goto/16 :goto_b0

    .line 2902
    :catch_1c1
    move-exception v0

    move-object v2, v0

    .line 2903
    .local v2, "e":Ljava/lang/Exception;
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2904
    .local v4, "value":I
    if-ne v4, v13, :cond_1cd

    .line 2905
    iput v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 2908
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "value":I
    :cond_1cd
    goto/16 :goto_b0

    .line 2890
    :pswitch_1cf
    :try_start_1cf
    iget v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    invoke-virtual {v3, v11, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1d7} :catch_1d9

    .line 2896
    goto/16 :goto_b0

    .line 2891
    :catch_1d9
    move-exception v0

    move-object v2, v0

    .line 2892
    .restart local v2    # "e":Ljava/lang/Exception;
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2893
    .restart local v4    # "value":I
    if-ne v4, v13, :cond_1e5

    .line 2894
    iput v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2897
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "value":I
    :cond_1e5
    goto/16 :goto_b0

    .line 2885
    :pswitch_1e7
    iget v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {v3, v11, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2886
    goto/16 :goto_b0

    .line 2875
    :pswitch_1f6
    :try_start_1f6
    iget v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    invoke-virtual {v3, v11, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I
    :try_end_1fe
    .catch Ljava/lang/Exception; {:try_start_1f6 .. :try_end_1fe} :catch_200

    .line 2881
    goto/16 :goto_b0

    .line 2876
    :catch_200
    move-exception v0

    move-object v2, v0

    .line 2877
    .restart local v2    # "e":Ljava/lang/Exception;
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2878
    .restart local v4    # "value":I
    if-ne v4, v13, :cond_20c

    .line 2879
    iput v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2882
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "value":I
    :cond_20c
    goto/16 :goto_b0

    .line 2864
    :pswitch_20e
    :try_start_20e
    iget v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    invoke-virtual {v3, v11, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_20e .. :try_end_216} :catch_218

    .line 2870
    goto/16 :goto_b0

    .line 2865
    :catch_218
    move-exception v0

    move-object v2, v0

    .line 2866
    .restart local v2    # "e":Ljava/lang/Exception;
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2867
    .restart local v4    # "value":I
    if-ne v4, v13, :cond_224

    .line 2868
    iput v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2871
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "value":I
    :cond_224
    goto/16 :goto_b0

    .line 2855
    :pswitch_226
    const/4 v2, 0x0

    invoke-virtual {v3, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2856
    iget v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b0

    .line 2857
    const-string v2, "ConstraintLayout"

    const-string v4, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b0

    .line 2847
    :pswitch_23b
    const/4 v2, 0x0

    invoke-virtual {v3, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2848
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b2

    .line 2849
    const-string v4, "ConstraintLayout"

    const-string v7, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b2

    .line 2769
    :pswitch_250
    const/4 v2, 0x0

    const/4 v5, 0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 2770
    goto/16 :goto_b2

    .line 2765
    :pswitch_25c
    const/4 v2, 0x0

    const/4 v5, 0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2766
    goto/16 :goto_b2

    .line 2843
    :pswitch_268
    const/4 v2, 0x0

    const/4 v5, 0x1

    iget-boolean v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2844
    goto/16 :goto_b2

    .line 2839
    :pswitch_274
    const/4 v2, 0x0

    const/4 v5, 0x1

    iget-boolean v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2840
    goto/16 :goto_b2

    .line 2761
    :pswitch_280
    const/4 v2, 0x0

    const/4 v5, 0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 2762
    goto/16 :goto_b2

    .line 2757
    :pswitch_28c
    const/4 v2, 0x0

    const/4 v5, 0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2758
    goto/16 :goto_b2

    .line 2753
    :pswitch_298
    const/4 v2, 0x0

    const/4 v5, 0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2754
    goto/16 :goto_b2

    .line 2749
    :pswitch_2a4
    const/4 v2, 0x0

    const/4 v5, 0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2750
    goto/16 :goto_b2

    .line 2745
    :pswitch_2b0
    const/4 v2, 0x0

    const/4 v5, 0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2746
    goto/16 :goto_b2

    .line 2741
    :pswitch_2bc
    const/4 v2, 0x0

    const/4 v5, 0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2742
    goto/16 :goto_b2

    .line 2734
    :pswitch_2c8
    const/4 v2, 0x0

    const/4 v5, 0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2735
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_b3

    .line 2736
    invoke-virtual {v3, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    goto/16 :goto_b3

    .line 2727
    :pswitch_2df
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2728
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v4, v7, :cond_b3

    .line 2729
    invoke-virtual {v3, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    goto/16 :goto_b3

    .line 2720
    :pswitch_2f6
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2721
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v4, v7, :cond_b3

    .line 2722
    invoke-virtual {v3, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    goto/16 :goto_b3

    .line 2713
    :pswitch_30d
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2714
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v4, v7, :cond_b3

    .line 2715
    invoke-virtual {v3, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    goto/16 :goto_b3

    .line 2660
    :pswitch_324
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2661
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-ne v4, v7, :cond_b3

    .line 2662
    invoke-virtual {v3, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    goto/16 :goto_b3

    .line 2653
    :pswitch_33b
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2654
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-ne v4, v7, :cond_b3

    .line 2655
    invoke-virtual {v3, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    goto/16 :goto_b3

    .line 2646
    :pswitch_352
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2647
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-ne v4, v7, :cond_b3

    .line 2648
    invoke-virtual {v3, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    goto/16 :goto_b3

    .line 2639
    :pswitch_369
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2640
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-ne v4, v7, :cond_b3

    .line 2641
    invoke-virtual {v3, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    goto/16 :goto_b3

    .line 2632
    :pswitch_380
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2633
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-ne v4, v7, :cond_b3

    .line 2634
    invoke-virtual {v3, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    goto/16 :goto_b3

    .line 2625
    :pswitch_397
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2626
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-ne v4, v7, :cond_b3

    .line 2627
    invoke-virtual {v3, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    goto/16 :goto_b3

    .line 2618
    :pswitch_3ae
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2619
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-ne v4, v7, :cond_b3

    .line 2620
    invoke-virtual {v3, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    goto/16 :goto_b3

    .line 2611
    :pswitch_3c5
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2612
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-ne v4, v7, :cond_b3

    .line 2613
    invoke-virtual {v3, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    goto/16 :goto_b3

    .line 2604
    :pswitch_3dc
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2605
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-ne v4, v7, :cond_b3

    .line 2606
    invoke-virtual {v3, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    goto/16 :goto_b2

    .line 2703
    :pswitch_3f3
    const/4 v2, 0x0

    const/4 v5, 0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2704
    goto/16 :goto_b2

    .line 2698
    :pswitch_3ff
    const/4 v2, 0x0

    const/4 v5, 0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 2699
    goto/16 :goto_b2

    .line 2693
    :pswitch_40b
    const/4 v2, 0x0

    const/4 v5, 0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2694
    goto/16 :goto_b2

    .line 2678
    :pswitch_417
    const/4 v2, 0x0

    const/4 v5, 0x1

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/high16 v7, 0x43b40000    # 360.0f

    rem-float/2addr v4, v7

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2679
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    const/4 v13, 0x0

    cmpg-float v4, v4, v13

    if-gez v4, :cond_43f

    .line 2680
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    sub-float v4, v7, v4

    rem-float/2addr v4, v7

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    goto :goto_43f

    .line 2674
    :pswitch_433
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v13, 0x0

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 2675
    nop

    .line 2595
    .end local v11    # "attr":I
    .end local v12    # "look":I
    :cond_43f
    :goto_43f
    const/4 v7, -0x1

    goto :goto_469

    .line 2667
    .restart local v11    # "attr":I
    .restart local v12    # "look":I
    :pswitch_441
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v13, 0x0

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 2668
    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_469

    .line 2669
    invoke-virtual {v3, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    goto :goto_469

    .line 2708
    :pswitch_458
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v13, 0x0

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 2709
    goto :goto_469

    .line 2601
    :pswitch_465
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v13, 0x0

    .line 2595
    .end local v11    # "attr":I
    .end local v12    # "look":I
    :cond_469
    :goto_469
    add-int/lit8 v10, v10, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_a0

    .line 2936
    .end local v10    # "i":I
    :cond_471
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 2937
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    .line 2938
    return-void

    :pswitch_data_478
    .packed-switch 0x0
        :pswitch_465
        :pswitch_458
        :pswitch_441
        :pswitch_433
        :pswitch_417
        :pswitch_40b
        :pswitch_3ff
        :pswitch_3f3
        :pswitch_3dc
        :pswitch_3c5
        :pswitch_3ae
        :pswitch_397
        :pswitch_380
        :pswitch_369
        :pswitch_352
        :pswitch_33b
        :pswitch_324
        :pswitch_30d
        :pswitch_2f6
        :pswitch_2df
        :pswitch_2c8
        :pswitch_2bc
        :pswitch_2b0
        :pswitch_2a4
        :pswitch_298
        :pswitch_28c
        :pswitch_280
        :pswitch_274
        :pswitch_268
        :pswitch_25c
        :pswitch_250
        :pswitch_23b
        :pswitch_226
        :pswitch_20e
        :pswitch_1f6
        :pswitch_1e7
        :pswitch_1cf
        :pswitch_1b7
        :pswitch_1a8
        :pswitch_1a6
        :pswitch_1a4
        :pswitch_1a2
        :pswitch_1a0
        :pswitch_b0
        :pswitch_e8
        :pswitch_df
        :pswitch_d6
        :pswitch_cf
        :pswitch_c8
        :pswitch_bf
        :pswitch_b6
    .end packed-switch
.end method

.method public constructor <init>(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V
    .registers 8
    .param p1, "source"    # Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 2421
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2109
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2114
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 2119
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2124
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2129
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2134
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2139
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2144
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2149
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2154
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2159
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2164
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2169
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 2174
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 2179
    const/4 v3, 0x0

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2184
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2189
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2194
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2199
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2204
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2209
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2214
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2219
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2224
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2229
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 2234
    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2239
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 2244
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2249
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 2254
    const/4 v3, 0x1

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2260
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2266
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2278
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2290
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2303
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2316
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2322
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2328
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2334
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2340
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 2345
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2350
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2356
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2362
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2364
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 2373
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2382
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2385
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2386
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2388
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2389
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2390
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2391
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2393
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2394
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2395
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2396
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2397
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2398
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2399
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2405
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2413
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    .line 2422
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2423
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 2424
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2425
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2426
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2427
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2428
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2429
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2430
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2431
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2432
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2433
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2434
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 2435
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 2436
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2437
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2438
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2439
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2440
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2441
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2442
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2443
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2444
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2445
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2446
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 2447
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2448
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 2449
    iget-object v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2450
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 2451
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2452
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2453
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2454
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2455
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2456
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2457
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2458
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2459
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2460
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2461
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2462
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2463
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 2464
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2465
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2466
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2467
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2468
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 2469
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2470
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2471
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2472
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2473
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2474
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2475
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2476
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2477
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2478
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2479
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2480
    iget-object v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2481
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 8
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2987
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2109
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2114
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 2119
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2124
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2129
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2134
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2139
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2144
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2149
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2154
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2159
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2164
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2169
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 2174
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 2179
    const/4 v3, 0x0

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2184
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2189
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2194
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2199
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2204
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2209
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2214
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2219
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2224
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2229
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 2234
    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2239
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 2244
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2249
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 2254
    const/4 v3, 0x1

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2260
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2266
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2278
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2290
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2303
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2316
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2322
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2328
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2334
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2340
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 2345
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2350
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2356
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2362
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2364
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 2373
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2382
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2385
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2386
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2388
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2389
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2390
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2391
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2393
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2394
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2395
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2396
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2397
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2398
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2399
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2405
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2413
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    .line 2988
    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    .line 2408
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_9

    .line 2409
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    .line 2411
    :cond_9
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .registers 10
    .param p1, "layoutDirection"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 2996
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 2997
    .local v0, "preLeftMargin":I
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 2999
    .local v1, "preRightMargin":I
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 3001
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 3002
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 3003
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 3004
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 3006
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 3007
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 3008
    iget v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 3009
    iget v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 3010
    iget v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 3012
    iget v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 3013
    iget v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 3014
    iget v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    .line 3016
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_35

    const/4 v3, 0x1

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    .line 3018
    .local v3, "isRtl":Z
    :goto_36
    if-eqz v3, :cond_ac

    .line 3019
    const/4 v5, 0x0

    .line 3020
    .local v5, "startEndDefined":Z
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v6, v2, :cond_43

    .line 3021
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 3022
    const/4 v5, 0x1

    goto :goto_4c

    .line 3023
    :cond_43
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v6, v2, :cond_4c

    .line 3024
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 3025
    const/4 v5, 0x1

    .line 3027
    :cond_4c
    :goto_4c
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v6, v2, :cond_55

    .line 3028
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 3029
    const/4 v5, 0x1

    .line 3031
    :cond_55
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v6, v2, :cond_5e

    .line 3032
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 3033
    const/4 v5, 0x1

    .line 3035
    :cond_5e
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    if-eq v6, v2, :cond_66

    .line 3036
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 3038
    :cond_66
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    if-eq v6, v2, :cond_6e

    .line 3039
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 3041
    :cond_6e
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_78

    .line 3042
    iget v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    sub-float v7, v6, v7

    iput v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 3046
    :cond_78
    iget-boolean v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v7, :cond_ab

    iget v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    if-ne v7, v4, :cond_ab

    .line 3047
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_92

    .line 3048
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    sub-float/2addr v6, v4

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    .line 3049
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 3050
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    goto :goto_ab

    .line 3051
    :cond_92
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    if-eq v4, v2, :cond_9f

    .line 3052
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 3053
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 3054
    iput v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    goto :goto_ab

    .line 3055
    :cond_9f
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    if-eq v4, v2, :cond_ab

    .line 3056
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 3057
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 3058
    iput v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    .line 3061
    .end local v5    # "startEndDefined":Z
    :cond_ab
    :goto_ab
    goto :goto_dc

    .line 3062
    :cond_ac
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v4, v2, :cond_b4

    .line 3063
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 3065
    :cond_b4
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v4, v2, :cond_bc

    .line 3066
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 3068
    :cond_bc
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v4, v2, :cond_c4

    .line 3069
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 3071
    :cond_c4
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v4, v2, :cond_cc

    .line 3072
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 3074
    :cond_cc
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    if-eq v4, v2, :cond_d4

    .line 3075
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 3077
    :cond_d4
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    if-eq v4, v2, :cond_dc

    .line 3078
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 3082
    :cond_dc
    :goto_dc
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v4, v2, :cond_12e

    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v4, v2, :cond_12e

    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v4, v2, :cond_12e

    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v4, v2, :cond_12e

    .line 3084
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-eq v4, v2, :cond_fd

    .line 3085
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 3086
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    if-gtz v4, :cond_10d

    if-lez v1, :cond_10d

    .line 3087
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    goto :goto_10d

    .line 3089
    :cond_fd
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-eq v4, v2, :cond_10d

    .line 3090
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 3091
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    if-gtz v4, :cond_10d

    if-lez v1, :cond_10d

    .line 3092
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 3095
    :cond_10d
    :goto_10d
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-eq v4, v2, :cond_11e

    .line 3096
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 3097
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    if-gtz v2, :cond_12e

    if-lez v0, :cond_12e

    .line 3098
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    goto :goto_12e

    .line 3100
    :cond_11e
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-eq v4, v2, :cond_12e

    .line 3101
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 3102
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    if-gtz v2, :cond_12e

    if-lez v0, :cond_12e

    .line 3103
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 3107
    :cond_12e
    :goto_12e
    return-void
.end method

.method public validate()V
    .registers 6

    .line 2941
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2942
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2943
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2944
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_15

    iget-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    if-eqz v2, :cond_15

    .line 2945
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2946
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2948
    :cond_15
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v2, v3, :cond_21

    iget-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    if-eqz v2, :cond_21

    .line 2949
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2950
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2952
    :cond_21
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-eqz v2, :cond_2a

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-ne v2, v4, :cond_38

    .line 2953
    :cond_2a
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2957
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-nez v2, :cond_38

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    if-ne v2, v1, :cond_38

    .line 2958
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 2959
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2962
    :cond_38
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-eqz v2, :cond_40

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v2, v4, :cond_4e

    .line 2963
    :cond_40
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2967
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-nez v0, :cond_4e

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-ne v0, v1, :cond_4e

    .line 2968
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 2969
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2972
    :cond_4e
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5e

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    if-ne v0, v4, :cond_5e

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    if-eq v0, v4, :cond_7a

    .line 2973
    :cond_5e
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2974
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2975
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2976
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v0, :cond_71

    .line 2977
    new-instance v0, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2979
    :cond_71
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v0, Landroid/support/constraint/solver/widgets/Guideline;

    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 2981
    :cond_7a
    return-void
.end method
