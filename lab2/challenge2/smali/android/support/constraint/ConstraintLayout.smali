.class public Landroid/support/constraint/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ALLOWS_EMBEDDED:Z = false

.field private static final DEBUG:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-1.1.2"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSet:Landroid/support/constraint/ConstraintSet;

.field private mConstraintSetId:I

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field mLastMeasureHeightMode:I

.field mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field mLastMeasureWidthMode:I

.field mLastMeasureWidthSize:I

.field mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMetrics:Landroid/support/constraint/solver/Metrics;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOptimizationLevel:I

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 561
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 490
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 500
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 503
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 504
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 505
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 507
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 508
    const/4 v1, 0x3

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 509
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 511
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 513
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 516
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 517
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 518
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 519
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 520
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 521
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 562
    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 563
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 566
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 490
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 500
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 503
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 504
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 505
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 507
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 508
    const/4 v1, 0x3

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 509
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 511
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 513
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 516
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 517
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 518
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 519
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 520
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 521
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 567
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 568
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 571
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 490
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 500
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 503
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 504
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 505
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 507
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 508
    const/4 v1, 0x3

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 509
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 511
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 513
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 516
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 517
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 518
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 519
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 520
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 521
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 572
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 573
    return-void
.end method

.method private final getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 4
    .param p1, "id"    # I

    .line 1122
    if-nez p1, :cond_5

    .line 1123
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v0

    .line 1125
    :cond_5
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1126
    .local v0, "view":Landroid/view/View;
    if-ne v0, p0, :cond_12

    .line 1127
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v1

    .line 1129
    :cond_12
    if-nez v0, :cond_16

    const/4 v1, 0x0

    goto :goto_1e

    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_1e
    return-object v1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 586
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    .line 587
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 589
    if-eqz p1, :cond_8e

    .line 590
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 591
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 592
    .local v2, "N":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 592
    .local v4, "i":I
    :goto_23
    if-ge v4, v2, :cond_8b

    .line 593
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 594
    .local v5, "attr":I
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v5, v6, :cond_36

    .line 595
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    goto :goto_88

    .line 596
    :cond_36
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v5, v6, :cond_43

    .line 597
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    goto :goto_88

    .line 598
    :cond_43
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v5, v6, :cond_50

    .line 599
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    goto :goto_88

    .line 600
    :cond_50
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v5, v6, :cond_5d

    .line 601
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    goto :goto_88

    .line 602
    :cond_5d
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v5, v6, :cond_6a

    .line 603
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_88

    .line 604
    :cond_6a
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v5, v6, :cond_88

    .line 605
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 607
    .local v6, "id":I
    :try_start_72
    new-instance v7, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v7}, Landroid/support/constraint/ConstraintSet;-><init>()V

    iput-object v7, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 608
    iget-object v7, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/support/constraint/ConstraintSet;->load(Landroid/content/Context;I)V
    :try_end_82
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_72 .. :try_end_82} :catch_83

    .line 611
    goto :goto_86

    .line 609
    :catch_83
    move-exception v7

    .line 610
    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 612
    .end local v7    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_86
    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 592
    .end local v5    # "attr":I
    .end local v6    # "id":I
    :cond_88
    :goto_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 615
    .end local v4    # "i":I
    :cond_8b
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 617
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "N":I
    :cond_8e
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 618
    return-void
.end method

.method private internalMeasureChildren(II)V
    .registers 25
    .param p1, "parentWidthSpec"    # I
    .param p2, "parentHeightSpec"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1146
    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1147
    .local v3, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1149
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v5

    .line 1150
    .local v5, "widgetsCount":I
    const/4 v7, 0x0

    .line 1150
    .local v7, "i":I
    :goto_1d
    if-ge v7, v5, :cond_110

    .line 1151
    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1152
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_30

    .line 1153
    nop

    .line 1150
    .end local v3    # "heightPadding":I
    .end local v8    # "child":Landroid/view/View;
    .local v21, "heightPadding":I
    :goto_2c
    move/from16 v21, v3

    goto/16 :goto_104

    .line 1155
    .end local v21    # "heightPadding":I
    .restart local v3    # "heightPadding":I
    .restart local v8    # "child":Landroid/view/View;
    :cond_30
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1156
    .local v9, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v10, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1157
    .local v10, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v11, :cond_102

    iget-boolean v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-eqz v11, :cond_41

    .line 1158
    goto :goto_2c

    .line 1160
    :cond_41
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1162
    iget v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 1163
    .local v11, "width":I
    iget v12, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1167
    .local v12, "height":I
    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    const/4 v14, 0x1

    const/4 v15, -0x1

    if-nez v13, :cond_71

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v13, :cond_71

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v13, :cond_5e

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    if-eq v13, v14, :cond_71

    :cond_5e
    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-eq v13, v15, :cond_71

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v13, :cond_6f

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-eq v13, v14, :cond_71

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v13, v15, :cond_6f

    goto :goto_71

    :cond_6f
    const/4 v13, 0x0

    goto :goto_72

    :cond_71
    :goto_71
    const/4 v13, 0x1

    .line 1177
    .local v13, "doMeasure":Z
    :goto_72
    const/16 v16, 0x0

    .line 1178
    .local v16, "didWrapMeasureWidth":Z
    const/16 v17, 0x0

    .line 1180
    .local v17, "didWrapMeasureHeight":Z
    if-eqz v13, :cond_e1

    .line 1184
    const/4 v6, -0x2

    if-nez v11, :cond_82

    .line 1185
    invoke-static {v1, v4, v6}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1187
    .local v18, "childWidthMeasureSpec":I
    const/16 v16, 0x1

    goto :goto_91

    .line 1188
    .end local v18    # "childWidthMeasureSpec":I
    :cond_82
    if-ne v11, v15, :cond_89

    .line 1189
    invoke-static {v1, v4, v15}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1189
    .restart local v18    # "childWidthMeasureSpec":I
    goto :goto_91

    .line 1192
    .end local v18    # "childWidthMeasureSpec":I
    :cond_89
    if-ne v11, v6, :cond_8d

    .line 1193
    const/16 v16, 0x1

    .line 1195
    :cond_8d
    invoke-static {v1, v4, v11}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1195
    .restart local v18    # "childWidthMeasureSpec":I
    :goto_91
    move/from16 v19, v18

    .line 1198
    .end local v18    # "childWidthMeasureSpec":I
    .local v19, "childWidthMeasureSpec":I
    if-nez v12, :cond_9c

    .line 1199
    invoke-static {v2, v3, v6}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1201
    .local v18, "childHeightMeasureSpec":I
    const/16 v17, 0x1

    goto :goto_ab

    .line 1202
    .end local v18    # "childHeightMeasureSpec":I
    :cond_9c
    if-ne v12, v15, :cond_a3

    .line 1203
    invoke-static {v2, v3, v15}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1203
    .restart local v18    # "childHeightMeasureSpec":I
    goto :goto_ab

    .line 1206
    .end local v18    # "childHeightMeasureSpec":I
    :cond_a3
    if-ne v12, v6, :cond_a7

    .line 1207
    const/16 v17, 0x1

    .line 1209
    :cond_a7
    invoke-static {v2, v3, v12}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1209
    .restart local v18    # "childHeightMeasureSpec":I
    :goto_ab
    move/from16 v20, v18

    .line 1212
    .end local v18    # "childHeightMeasureSpec":I
    .local v20, "childHeightMeasureSpec":I
    move/from16 v14, v19

    move/from16 v15, v20

    invoke-virtual {v8, v14, v15}, Landroid/view/View;->measure(II)V

    .line 1213
    .end local v19    # "childWidthMeasureSpec":I
    .end local v20    # "childHeightMeasureSpec":I
    .local v14, "childWidthMeasureSpec":I
    .local v15, "childHeightMeasureSpec":I
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v6, :cond_c5

    .line 1214
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v0, v6, Landroid/support/constraint/solver/Metrics;->measures:J

    const-wide/16 v18, 0x1

    move/from16 v21, v3

    add-long v2, v0, v18

    .line 1214
    .end local v3    # "heightPadding":I
    .restart local v21    # "heightPadding":I
    iput-wide v2, v6, Landroid/support/constraint/solver/Metrics;->measures:J

    goto :goto_c7

    .line 1217
    .end local v21    # "heightPadding":I
    .restart local v3    # "heightPadding":I
    :cond_c5
    move/from16 v21, v3

    .line 1217
    .end local v3    # "heightPadding":I
    .restart local v21    # "heightPadding":I
    :goto_c7
    const/4 v0, -0x2

    if-ne v11, v0, :cond_cc

    const/4 v1, 0x1

    goto :goto_cd

    :cond_cc
    const/4 v1, 0x0

    :goto_cd
    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1218
    if-ne v12, v0, :cond_d4

    const/4 v0, 0x1

    goto :goto_d5

    :cond_d4
    const/4 v0, 0x0

    :goto_d5
    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1219
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1220
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1220
    .end local v14    # "childWidthMeasureSpec":I
    .end local v15    # "childHeightMeasureSpec":I
    goto :goto_e3

    .line 1223
    .end local v21    # "heightPadding":I
    .restart local v3    # "heightPadding":I
    :cond_e1
    move/from16 v21, v3

    .line 1223
    .end local v3    # "heightPadding":I
    .restart local v21    # "heightPadding":I
    :goto_e3
    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1224
    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1226
    if-eqz v16, :cond_ee

    .line 1227
    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1229
    :cond_ee
    if-eqz v17, :cond_f3

    .line 1230
    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1233
    :cond_f3
    iget-boolean v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v0, :cond_104

    .line 1234
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 1235
    .local v0, "baseline":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_104

    .line 1236
    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1236
    .end local v0    # "baseline":I
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "width":I
    .end local v12    # "height":I
    .end local v13    # "doMeasure":Z
    .end local v16    # "didWrapMeasureWidth":Z
    .end local v17    # "didWrapMeasureHeight":Z
    goto :goto_104

    .line 1150
    .end local v21    # "heightPadding":I
    .restart local v3    # "heightPadding":I
    :cond_102
    move/from16 v21, v3

    .line 1150
    .end local v3    # "heightPadding":I
    .restart local v21    # "heightPadding":I
    :cond_104
    :goto_104
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_1d

    .line 1240
    .end local v7    # "i":I
    .end local v21    # "heightPadding":I
    .restart local v3    # "heightPadding":I
    :cond_110
    move/from16 v21, v3

    .line 1240
    .end local v3    # "heightPadding":I
    .restart local v21    # "heightPadding":I
    return-void
.end method

.method private internalMeasureDimensions(II)V
    .registers 36
    .param p1, "parentWidthSpec"    # I
    .param p2, "parentHeightSpec"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1268
    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1269
    .local v3, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1271
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v5

    .line 1272
    .local v5, "widgetsCount":I
    const/4 v7, 0x0

    .line 1272
    .local v7, "i":I
    :goto_1d
    const/16 v10, 0x8

    const/4 v13, -0x2

    if-ge v7, v5, :cond_104

    .line 1273
    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1274
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-ne v15, v10, :cond_35

    .line 1275
    nop

    .line 1272
    .end local v3    # "heightPadding":I
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .end local v14    # "child":Landroid/view/View;
    .local v21, "heightPadding":I
    .local v22, "widthPadding":I
    .local v23, "widgetsCount":I
    :goto_2d
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    goto/16 :goto_f8

    .line 1277
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .end local v23    # "widgetsCount":I
    .restart local v3    # "heightPadding":I
    .restart local v4    # "widthPadding":I
    .restart local v5    # "widgetsCount":I
    .restart local v14    # "child":Landroid/view/View;
    :cond_35
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1278
    .local v10, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v15, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1279
    .local v15, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v6, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v6, :cond_f2

    iget-boolean v6, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-eqz v6, :cond_46

    .line 1280
    goto :goto_2d

    .line 1282
    :cond_46
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v15, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1284
    iget v6, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 1285
    .local v6, "width":I
    iget v12, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1287
    .local v12, "height":I
    if-eqz v6, :cond_dd

    if-nez v12, :cond_5d

    .line 1288
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    goto/16 :goto_e3

    .line 1293
    :cond_5d
    const/16 v16, 0x0

    .line 1294
    .local v16, "didWrapMeasureWidth":Z
    const/16 v17, 0x0

    .line 1298
    .local v17, "didWrapMeasureHeight":Z
    if-ne v6, v13, :cond_65

    .line 1299
    const/16 v16, 0x1

    .line 1301
    :cond_65
    invoke-static {v1, v4, v6}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v11

    .line 1303
    .local v11, "childWidthMeasureSpec":I
    if-ne v12, v13, :cond_6d

    .line 1304
    const/16 v17, 0x1

    .line 1306
    :cond_6d
    invoke-static {v2, v3, v12}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v13

    .line 1308
    .local v13, "childHeightMeasureSpec":I
    invoke-virtual {v14, v11, v13}, Landroid/view/View;->measure(II)V

    .line 1309
    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v8, :cond_89

    .line 1310
    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v21, v3

    iget-wide v2, v8, Landroid/support/constraint/solver/Metrics;->measures:J

    .line 1310
    .end local v3    # "heightPadding":I
    .restart local v21    # "heightPadding":I
    move/from16 v22, v4

    move/from16 v23, v5

    const-wide/16 v18, 0x1

    add-long v4, v2, v18

    .line 1310
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .restart local v22    # "widthPadding":I
    .restart local v23    # "widgetsCount":I
    iput-wide v4, v8, Landroid/support/constraint/solver/Metrics;->measures:J

    goto :goto_8f

    .line 1313
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .end local v23    # "widgetsCount":I
    .restart local v3    # "heightPadding":I
    .restart local v4    # "widthPadding":I
    .restart local v5    # "widgetsCount":I
    :cond_89
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    .line 1313
    .end local v3    # "heightPadding":I
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .restart local v21    # "heightPadding":I
    .restart local v22    # "widthPadding":I
    .restart local v23    # "widgetsCount":I
    :goto_8f
    const/4 v2, -0x2

    if-ne v6, v2, :cond_94

    const/4 v3, 0x1

    goto :goto_95

    :cond_94
    const/4 v3, 0x0

    :goto_95
    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1314
    if-ne v12, v2, :cond_9c

    const/4 v2, 0x1

    goto :goto_9d

    :cond_9c
    const/4 v2, 0x0

    :goto_9d
    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1315
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1316
    .end local v6    # "width":I
    .local v2, "width":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1318
    .end local v12    # "height":I
    .local v3, "height":I
    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1319
    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1321
    if-eqz v16, :cond_b3

    .line 1322
    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1324
    :cond_b3
    if-eqz v17, :cond_b8

    .line 1325
    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1328
    :cond_b8
    iget-boolean v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v4, :cond_c6

    .line 1329
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v4

    .line 1330
    .local v4, "baseline":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_c6

    .line 1331
    invoke-virtual {v15, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1335
    .end local v4    # "baseline":I
    :cond_c6
    iget-boolean v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-eqz v4, :cond_f8

    iget-boolean v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v4, :cond_f8

    .line 1336
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1337
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1337
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v10    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v11    # "childWidthMeasureSpec":I
    .end local v13    # "childHeightMeasureSpec":I
    .end local v14    # "child":Landroid/view/View;
    .end local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v16    # "didWrapMeasureWidth":Z
    .end local v17    # "didWrapMeasureHeight":Z
    goto :goto_f8

    .line 1288
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .end local v23    # "widgetsCount":I
    .local v3, "heightPadding":I
    .local v4, "widthPadding":I
    .restart local v5    # "widgetsCount":I
    .restart local v6    # "width":I
    .restart local v10    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v12    # "height":I
    .restart local v14    # "child":Landroid/view/View;
    .restart local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_dd
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    .line 1288
    .end local v3    # "heightPadding":I
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .restart local v21    # "heightPadding":I
    .restart local v22    # "widthPadding":I
    .restart local v23    # "widgetsCount":I
    :goto_e3
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1289
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1290
    goto :goto_f8

    .line 1272
    .end local v6    # "width":I
    .end local v10    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v12    # "height":I
    .end local v14    # "child":Landroid/view/View;
    .end local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .end local v23    # "widgetsCount":I
    .restart local v3    # "heightPadding":I
    .restart local v4    # "widthPadding":I
    .restart local v5    # "widgetsCount":I
    :cond_f2
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    .line 1272
    .end local v3    # "heightPadding":I
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .restart local v21    # "heightPadding":I
    .restart local v22    # "widthPadding":I
    .restart local v23    # "widgetsCount":I
    :cond_f8
    :goto_f8
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v5, v23

    move/from16 v2, p2

    goto/16 :goto_1d

    .line 1342
    .end local v7    # "i":I
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .end local v23    # "widgetsCount":I
    .restart local v3    # "heightPadding":I
    .restart local v4    # "widthPadding":I
    .restart local v5    # "widgetsCount":I
    :cond_104
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    .line 1342
    .end local v3    # "heightPadding":I
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .restart local v21    # "heightPadding":I
    .restart local v22    # "widthPadding":I
    .restart local v23    # "widgetsCount":I
    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    .line 1344
    const/4 v2, 0x0

    .line 1344
    .local v2, "i":I
    :goto_110
    move/from16 v3, v23

    if-ge v2, v3, :cond_342

    .line 1345
    .end local v23    # "widgetsCount":I
    .local v3, "widgetsCount":I
    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1346
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v10, :cond_12d

    .line 1347
    nop

    .line 1344
    .end local v2    # "i":I
    .end local v3    # "widgetsCount":I
    .end local v4    # "child":Landroid/view/View;
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .local v24, "widgetsCount":I
    .local v25, "i":I
    .local v30, "heightPadding":I
    .local v31, "widthPadding":I
    :goto_11f
    move/from16 v25, v2

    move/from16 v24, v3

    move/from16 v30, v21

    move/from16 v31, v22

    const/4 v1, -0x2

    const/4 v8, -0x1

    const-wide/16 v18, 0x1

    goto/16 :goto_334

    .line 1349
    .end local v24    # "widgetsCount":I
    .end local v25    # "i":I
    .end local v30    # "heightPadding":I
    .end local v31    # "widthPadding":I
    .restart local v2    # "i":I
    .restart local v3    # "widgetsCount":I
    .restart local v4    # "child":Landroid/view/View;
    .restart local v21    # "heightPadding":I
    .restart local v22    # "widthPadding":I
    :cond_12d
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1350
    .local v5, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v6, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1351
    .local v6, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v7, :cond_328

    iget-boolean v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-eqz v7, :cond_13e

    .line 1352
    goto :goto_11f

    .line 1354
    :cond_13e
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1356
    iget v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 1357
    .local v7, "width":I
    iget v8, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1359
    .local v8, "height":I
    if-eqz v7, :cond_14e

    if-eqz v8, :cond_14e

    .line 1360
    goto :goto_11f

    .line 1363
    :cond_14e
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    .line 1364
    .local v9, "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v11

    .line 1365
    .local v11, "right":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    if-eqz v12, :cond_17c

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1366
    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    if-eqz v12, :cond_17c

    const/4 v12, 0x1

    goto :goto_17d

    :cond_17c
    const/4 v12, 0x0

    .line 1367
    .local v12, "bothHorizontal":Z
    :goto_17d
    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v13

    .line 1368
    .local v13, "top":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v14

    .line 1369
    .local v14, "bottom":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    if-eqz v15, :cond_1ab

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1370
    invoke-virtual {v6, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    if-eqz v15, :cond_1ab

    const/4 v15, 0x1

    goto :goto_1ac

    :cond_1ab
    const/4 v15, 0x0

    .line 1372
    .local v15, "bothVertical":Z
    :goto_1ac
    if-nez v7, :cond_1b6

    if-nez v8, :cond_1b6

    if-eqz v12, :cond_1b6

    if-eqz v15, :cond_1b6

    .line 1373
    goto/16 :goto_11f

    .line 1376
    :cond_1b6
    const/16 v16, 0x0

    .line 1377
    .restart local v16    # "didWrapMeasureWidth":Z
    const/16 v17, 0x0

    .line 1378
    .restart local v17    # "didWrapMeasureHeight":Z
    iget-object v10, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    move/from16 v24, v3

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1378
    .end local v3    # "widgetsCount":I
    .restart local v24    # "widgetsCount":I
    if-eq v10, v3, :cond_1c8

    const/4 v3, 0x1

    goto :goto_1c9

    :cond_1c8
    const/4 v3, 0x0

    .line 1379
    .local v3, "resolveWidth":Z
    :goto_1c9
    iget-object v10, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    move/from16 v25, v2

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1379
    .end local v2    # "i":I
    .restart local v25    # "i":I
    if-eq v10, v2, :cond_1d7

    const/4 v2, 0x1

    goto :goto_1d8

    :cond_1d7
    const/4 v2, 0x0

    .line 1384
    .local v2, "resolveHeight":Z
    :goto_1d8
    if-nez v3, :cond_1e1

    .line 1385
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1387
    :cond_1e1
    if-nez v2, :cond_1ea

    .line 1388
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1390
    :cond_1ea
    if-nez v7, :cond_22a

    .line 1391
    if-eqz v3, :cond_21b

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isSpreadWidth()Z

    move-result v10

    if-eqz v10, :cond_21b

    if-eqz v12, :cond_21b

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v10

    if-eqz v10, :cond_21b

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v10

    if-eqz v10, :cond_21b

    .line 1392
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v10

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v23

    sub-float v10, v10, v23

    float-to-int v7, v10

    .line 1393
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1394
    move/from16 v10, v22

    invoke-static {v1, v10, v7}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v22

    .line 1394
    .local v10, "widthPadding":I
    .local v22, "childWidthMeasureSpec":I
    goto :goto_227

    .line 1397
    .end local v10    # "widthPadding":I
    .local v22, "widthPadding":I
    :cond_21b
    move/from16 v10, v22

    .line 1397
    .end local v22    # "widthPadding":I
    .restart local v10    # "widthPadding":I
    move/from16 v26, v3

    const/4 v3, -0x2

    invoke-static {v1, v10, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v22

    .line 1399
    .end local v3    # "resolveWidth":Z
    .local v22, "childWidthMeasureSpec":I
    .local v26, "resolveWidth":Z
    const/16 v16, 0x1

    .line 1400
    const/4 v3, 0x0

    .line 1409
    :goto_227
    move/from16 v26, v3

    goto :goto_240

    .line 1402
    .end local v10    # "widthPadding":I
    .end local v26    # "resolveWidth":Z
    .restart local v3    # "resolveWidth":Z
    .local v22, "widthPadding":I
    :cond_22a
    move/from16 v26, v3

    move/from16 v10, v22

    .line 1402
    .end local v3    # "resolveWidth":Z
    .end local v22    # "widthPadding":I
    .restart local v10    # "widthPadding":I
    .restart local v26    # "resolveWidth":Z
    const/4 v3, -0x1

    if-ne v7, v3, :cond_236

    .line 1403
    invoke-static {v1, v10, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v22

    .line 1403
    .local v22, "childWidthMeasureSpec":I
    goto :goto_240

    .line 1406
    .end local v22    # "childWidthMeasureSpec":I
    :cond_236
    const/4 v3, -0x2

    if-ne v7, v3, :cond_23c

    .line 1407
    const/4 v3, 0x1

    .line 1409
    .end local v16    # "didWrapMeasureWidth":Z
    .local v3, "didWrapMeasureWidth":Z
    move/from16 v16, v3

    .line 1409
    .end local v3    # "didWrapMeasureWidth":Z
    .restart local v16    # "didWrapMeasureWidth":Z
    :cond_23c
    invoke-static {v1, v10, v7}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v22

    .line 1409
    .restart local v22    # "childWidthMeasureSpec":I
    :goto_240
    move/from16 v3, v22

    .line 1412
    .end local v22    # "childWidthMeasureSpec":I
    .local v3, "childWidthMeasureSpec":I
    if-nez v8, :cond_28c

    .line 1413
    if-eqz v2, :cond_279

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isSpreadHeight()Z

    move-result v22

    if-eqz v22, :cond_279

    if-eqz v15, :cond_279

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v22

    if-eqz v22, :cond_279

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v22

    if-eqz v22, :cond_279

    .line 1414
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v22

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v23

    sub-float v1, v22, v23

    float-to-int v8, v1

    .line 1415
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1416
    move/from16 v27, v2

    move/from16 v2, v21

    move/from16 v1, p2

    invoke-static {v1, v2, v8}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v20

    .line 1431
    .end local v21    # "heightPadding":I
    .local v2, "heightPadding":I
    .local v20, "childHeightMeasureSpec":I
    .local v27, "resolveHeight":Z
    move-object/from16 v28, v9

    goto :goto_2a6

    .line 1419
    .end local v20    # "childHeightMeasureSpec":I
    .end local v27    # "resolveHeight":Z
    .local v2, "resolveHeight":Z
    .restart local v21    # "heightPadding":I
    :cond_279
    move/from16 v27, v2

    move/from16 v2, v21

    move/from16 v1, p2

    .line 1419
    .end local v21    # "heightPadding":I
    .local v2, "heightPadding":I
    .restart local v27    # "resolveHeight":Z
    move-object/from16 v28, v9

    const/4 v9, -0x2

    invoke-static {v1, v2, v9}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v20

    .line 1421
    .end local v9    # "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v20    # "childHeightMeasureSpec":I
    .local v28, "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    const/16 v17, 0x1

    .line 1422
    const/4 v9, 0x0

    .line 1431
    .end local v27    # "resolveHeight":Z
    .local v9, "resolveHeight":Z
    move/from16 v27, v9

    goto :goto_2a6

    .line 1424
    .end local v20    # "childHeightMeasureSpec":I
    .end local v28    # "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .local v2, "resolveHeight":Z
    .local v9, "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v21    # "heightPadding":I
    :cond_28c
    move/from16 v27, v2

    move-object/from16 v28, v9

    move/from16 v2, v21

    move/from16 v1, p2

    .line 1424
    .end local v9    # "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v21    # "heightPadding":I
    .local v2, "heightPadding":I
    .restart local v27    # "resolveHeight":Z
    .restart local v28    # "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    const/4 v9, -0x1

    if-ne v8, v9, :cond_29c

    .line 1425
    invoke-static {v1, v2, v9}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v20

    .line 1425
    .restart local v20    # "childHeightMeasureSpec":I
    goto :goto_2a6

    .line 1428
    .end local v20    # "childHeightMeasureSpec":I
    :cond_29c
    const/4 v9, -0x2

    if-ne v8, v9, :cond_2a2

    .line 1429
    const/4 v9, 0x1

    .line 1431
    .end local v17    # "didWrapMeasureHeight":Z
    .local v9, "didWrapMeasureHeight":Z
    move/from16 v17, v9

    .line 1431
    .end local v9    # "didWrapMeasureHeight":Z
    .restart local v17    # "didWrapMeasureHeight":Z
    :cond_2a2
    invoke-static {v1, v2, v8}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v20

    .line 1431
    .restart local v20    # "childHeightMeasureSpec":I
    :goto_2a6
    move/from16 v9, v20

    .line 1434
    .end local v20    # "childHeightMeasureSpec":I
    .local v9, "childHeightMeasureSpec":I
    invoke-virtual {v4, v3, v9}, Landroid/view/View;->measure(II)V

    .line 1435
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v1, :cond_2c2

    .line 1436
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v30, v2

    move/from16 v29, v3

    iget-wide v2, v1, Landroid/support/constraint/solver/Metrics;->measures:J

    .line 1436
    .end local v2    # "heightPadding":I
    .end local v3    # "childWidthMeasureSpec":I
    .local v29, "childWidthMeasureSpec":I
    .restart local v30    # "heightPadding":I
    move/from16 v32, v9

    move/from16 v31, v10

    const-wide/16 v18, 0x1

    add-long v9, v2, v18

    .line 1436
    .end local v9    # "childHeightMeasureSpec":I
    .end local v10    # "widthPadding":I
    .restart local v31    # "widthPadding":I
    .local v32, "childHeightMeasureSpec":I
    iput-wide v9, v1, Landroid/support/constraint/solver/Metrics;->measures:J

    goto :goto_2cc

    .line 1439
    .end local v29    # "childWidthMeasureSpec":I
    .end local v30    # "heightPadding":I
    .end local v31    # "widthPadding":I
    .end local v32    # "childHeightMeasureSpec":I
    .restart local v2    # "heightPadding":I
    .restart local v3    # "childWidthMeasureSpec":I
    .restart local v9    # "childHeightMeasureSpec":I
    .restart local v10    # "widthPadding":I
    :cond_2c2
    move/from16 v30, v2

    move/from16 v29, v3

    move/from16 v32, v9

    move/from16 v31, v10

    const-wide/16 v18, 0x1

    .line 1439
    .end local v2    # "heightPadding":I
    .end local v3    # "childWidthMeasureSpec":I
    .end local v9    # "childHeightMeasureSpec":I
    .end local v10    # "widthPadding":I
    .restart local v29    # "childWidthMeasureSpec":I
    .restart local v30    # "heightPadding":I
    .restart local v31    # "widthPadding":I
    .restart local v32    # "childHeightMeasureSpec":I
    :goto_2cc
    const/4 v1, -0x2

    if-ne v7, v1, :cond_2d1

    const/4 v2, 0x1

    goto :goto_2d2

    :cond_2d1
    const/4 v2, 0x0

    :goto_2d2
    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1440
    if-ne v8, v1, :cond_2d9

    const/4 v2, 0x1

    goto :goto_2da

    :cond_2d9
    const/4 v2, 0x0

    :goto_2da
    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1441
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1442
    .end local v7    # "width":I
    .local v2, "width":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1444
    .end local v8    # "height":I
    .local v3, "height":I
    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1445
    invoke-virtual {v6, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1447
    if-eqz v16, :cond_2f0

    .line 1448
    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1450
    :cond_2f0
    if-eqz v17, :cond_2f5

    .line 1451
    invoke-virtual {v6, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1453
    :cond_2f5
    if-eqz v26, :cond_2ff

    .line 1454
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    goto :goto_306

    .line 1456
    :cond_2ff
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->remove()V

    .line 1458
    :goto_306
    if-eqz v27, :cond_310

    .line 1459
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    goto :goto_317

    .line 1461
    :cond_310
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->remove()V

    .line 1464
    :goto_317
    iget-boolean v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v7, :cond_326

    .line 1465
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v7

    .line 1466
    .local v7, "baseline":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_334

    .line 1467
    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1467
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "baseline":I
    .end local v11    # "right":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v12    # "bothHorizontal":Z
    .end local v13    # "top":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v14    # "bottom":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v15    # "bothVertical":Z
    .end local v16    # "didWrapMeasureWidth":Z
    .end local v17    # "didWrapMeasureHeight":Z
    .end local v26    # "resolveWidth":Z
    .end local v27    # "resolveHeight":Z
    .end local v28    # "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v29    # "childWidthMeasureSpec":I
    .end local v32    # "childHeightMeasureSpec":I
    goto :goto_334

    .line 1344
    :cond_326
    const/4 v8, -0x1

    goto :goto_334

    .line 1344
    .end local v24    # "widgetsCount":I
    .end local v25    # "i":I
    .end local v30    # "heightPadding":I
    .end local v31    # "widthPadding":I
    .local v2, "i":I
    .local v3, "widgetsCount":I
    .restart local v21    # "heightPadding":I
    .local v22, "widthPadding":I
    :cond_328
    move/from16 v25, v2

    move/from16 v24, v3

    move/from16 v30, v21

    move/from16 v31, v22

    const/4 v1, -0x2

    const/4 v8, -0x1

    const-wide/16 v18, 0x1

    .line 1344
    .end local v2    # "i":I
    .end local v3    # "widgetsCount":I
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .restart local v24    # "widgetsCount":I
    .restart local v25    # "i":I
    .restart local v30    # "heightPadding":I
    .restart local v31    # "widthPadding":I
    :cond_334
    :goto_334
    add-int/lit8 v2, v25, 0x1

    .line 1344
    .end local v25    # "i":I
    .restart local v2    # "i":I
    move/from16 v23, v24

    move/from16 v21, v30

    move/from16 v22, v31

    move/from16 v1, p1

    const/16 v10, 0x8

    goto/16 :goto_110

    .line 1471
    .end local v2    # "i":I
    .end local v24    # "widgetsCount":I
    .end local v30    # "heightPadding":I
    .end local v31    # "widthPadding":I
    .restart local v3    # "widgetsCount":I
    .restart local v21    # "heightPadding":I
    .restart local v22    # "widthPadding":I
    :cond_342
    move/from16 v24, v3

    move/from16 v30, v21

    move/from16 v31, v22

    .line 1471
    .end local v3    # "widgetsCount":I
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .restart local v24    # "widgetsCount":I
    .restart local v30    # "heightPadding":I
    .restart local v31    # "widthPadding":I
    return-void
.end method

.method private setChildrenConstraints()V
    .registers 34

    .line 799
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v2

    .line 801
    .local v2, "isInEditMode":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v3

    .line 802
    .local v3, "count":I
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_4b

    .line 806
    const/4 v6, 0x0

    .line 806
    .local v6, "i":I
    :goto_f
    if-ge v6, v3, :cond_4b

    .line 807
    invoke-virtual {v1, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 809
    .local v7, "view":Landroid/view/View;
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    .line 810
    .local v8, "IdAsString":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v4, v8, v9}, Landroid/support/constraint/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 811
    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 812
    .local v9, "slashIndex":I
    if-eq v9, v5, :cond_3b

    .line 813
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 815
    :cond_3b
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v10

    invoke-direct {v1, v10}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_46} :catch_47

    .line 818
    .end local v8    # "IdAsString":Ljava/lang/String;
    .end local v9    # "slashIndex":I
    goto :goto_48

    .line 816
    :catch_47
    move-exception v0

    .line 806
    .end local v7    # "view":Landroid/view/View;
    :goto_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 823
    .end local v6    # "i":I
    :cond_4b
    const/4 v6, 0x0

    .line 823
    .restart local v6    # "i":I
    :goto_4c
    if-ge v6, v3, :cond_5f

    .line 824
    invoke-virtual {v1, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 825
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v8

    .line 826
    .local v8, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v8, :cond_59

    .line 827
    goto :goto_5c

    .line 829
    :cond_59
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    .line 823
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_5c
    add-int/lit8 v6, v6, 0x1

    goto :goto_4c

    .line 832
    .end local v6    # "i":I
    :cond_5f
    iget v6, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    if-eq v6, v5, :cond_82

    .line 833
    const/4 v6, 0x0

    .line 833
    .restart local v6    # "i":I
    :goto_64
    if-ge v6, v3, :cond_82

    .line 834
    invoke-virtual {v1, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 835
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    iget v9, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    if-ne v8, v9, :cond_7f

    instance-of v8, v7, Landroid/support/constraint/Constraints;

    if-eqz v8, :cond_7f

    .line 836
    move-object v8, v7

    check-cast v8, Landroid/support/constraint/Constraints;

    invoke-virtual {v8}, Landroid/support/constraint/Constraints;->getConstraintSet()Landroid/support/constraint/ConstraintSet;

    move-result-object v8

    iput-object v8, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 833
    .end local v7    # "child":Landroid/view/View;
    :cond_7f
    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    .line 840
    .end local v6    # "i":I
    :cond_82
    iget-object v6, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    if-eqz v6, :cond_8b

    .line 841
    iget-object v6, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {v6, v1}, Landroid/support/constraint/ConstraintSet;->applyToInternal(Landroid/support/constraint/ConstraintLayout;)V

    .line 844
    :cond_8b
    iget-object v6, v1, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 846
    iget-object v6, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 847
    .local v6, "helperCount":I
    if-lez v6, :cond_a9

    .line 848
    const/4 v7, 0x0

    .line 848
    .local v7, "i":I
    :goto_99
    if-ge v7, v6, :cond_a9

    .line 849
    iget-object v8, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/ConstraintHelper;

    .line 850
    .local v8, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v8, v1}, Landroid/support/constraint/ConstraintHelper;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 848
    .end local v8    # "helper":Landroid/support/constraint/ConstraintHelper;
    add-int/lit8 v7, v7, 0x1

    goto :goto_99

    .line 854
    .end local v7    # "i":I
    :cond_a9
    const/4 v7, 0x0

    .line 854
    .restart local v7    # "i":I
    :goto_aa
    if-ge v7, v3, :cond_bd

    .line 855
    invoke-virtual {v1, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 856
    .local v8, "child":Landroid/view/View;
    instance-of v9, v8, Landroid/support/constraint/Placeholder;

    if-eqz v9, :cond_ba

    .line 857
    move-object v9, v8

    check-cast v9, Landroid/support/constraint/Placeholder;

    invoke-virtual {v9, v1}, Landroid/support/constraint/Placeholder;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 854
    .end local v8    # "child":Landroid/view/View;
    :cond_ba
    add-int/lit8 v7, v7, 0x1

    goto :goto_aa

    .line 861
    .end local v7    # "i":I
    :cond_bd
    const/4 v7, 0x0

    .line 861
    .restart local v7    # "i":I
    :goto_be
    if-ge v7, v3, :cond_46e

    .line 862
    invoke-virtual {v1, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 863
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v15

    .line 864
    .local v15, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v15, :cond_d3

    .line 865
    nop

    .line 861
    .end local v3    # "count":I
    .end local v6    # "helperCount":I
    .end local v8    # "child":Landroid/view/View;
    .end local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v17, "count":I
    .local v23, "helperCount":I
    :cond_cb
    :goto_cb
    move/from16 v17, v3

    move/from16 v23, v6

    const/4 v9, 0x0

    const/4 v10, -0x1

    goto/16 :goto_464

    .line 867
    .end local v17    # "count":I
    .end local v23    # "helperCount":I
    .restart local v3    # "count":I
    .restart local v6    # "helperCount":I
    .restart local v8    # "child":Landroid/view/View;
    .restart local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_d3
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 868
    .local v14, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    .line 869
    iget-boolean v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    if-eqz v9, :cond_e4

    .line 870
    iput-boolean v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    goto :goto_117

    .line 872
    :cond_e4
    if-eqz v2, :cond_117

    .line 877
    :try_start_e6
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    .line 878
    .local v9, "IdAsString":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v4, v9, v10}, Landroid/support/constraint/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 879
    const-string v10, "id/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x3

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 880
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v10

    invoke-direct {v1, v10}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_115
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e6 .. :try_end_115} :catch_116

    .line 883
    .end local v9    # "IdAsString":Ljava/lang/String;
    goto :goto_117

    .line 881
    :catch_116
    move-exception v0

    .line 886
    :cond_117
    :goto_117
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 887
    iget-boolean v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v9, :cond_127

    .line 888
    const/16 v9, 0x8

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 890
    :cond_127
    invoke-virtual {v15, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 891
    iget-object v9, v1, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v9, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 893
    iget-boolean v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v9, :cond_137

    iget-boolean v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v9, :cond_13c

    .line 894
    :cond_137
    iget-object v9, v1, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    :cond_13c
    iget-boolean v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    const/16 v10, 0x11

    if-eqz v9, :cond_16c

    .line 898
    move-object v9, v15

    check-cast v9, Landroid/support/constraint/solver/widgets/Guideline;

    .line 899
    .local v9, "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 900
    .local v11, "resolvedGuideBegin":I
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 901
    .local v12, "resolvedGuideEnd":I
    iget v13, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    .line 902
    .local v13, "resolvedGuidePercent":F
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v10, :cond_155

    .line 903
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 904
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 905
    iget v13, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 907
    :cond_155
    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v13, v4

    if-eqz v4, :cond_15f

    .line 908
    invoke-virtual {v9, v13}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    goto :goto_16a

    .line 909
    :cond_15f
    if-eq v11, v5, :cond_165

    .line 910
    invoke-virtual {v9, v11}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_16a

    .line 911
    :cond_165
    if-eq v12, v5, :cond_16a

    .line 912
    invoke-virtual {v9, v12}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    .line 914
    .end local v9    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    .end local v11    # "resolvedGuideBegin":I
    .end local v12    # "resolvedGuideEnd":I
    .end local v13    # "resolvedGuidePercent":F
    :cond_16a
    :goto_16a
    goto/16 :goto_cb

    :cond_16c
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-ne v4, v5, :cond_1b4

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-ne v4, v5, :cond_1b4

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-ne v4, v5, :cond_1b4

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-ne v4, v5, :cond_1b4

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v4, v5, :cond_1b4

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v4, v5, :cond_1b4

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v4, v5, :cond_1b4

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v4, v5, :cond_1b4

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-ne v4, v5, :cond_1b4

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-ne v4, v5, :cond_1b4

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-ne v4, v5, :cond_1b4

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-ne v4, v5, :cond_1b4

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-ne v4, v5, :cond_1b4

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    if-ne v4, v5, :cond_1b4

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-ne v4, v5, :cond_1b4

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-ne v4, v5, :cond_1b4

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-eq v4, v5, :cond_1b4

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v4, v5, :cond_cb

    .line 934
    :cond_1b4
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 935
    .local v4, "resolvedLeftToLeft":I
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 936
    .local v9, "resolvedLeftToRight":I
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 937
    .local v11, "resolvedRightToLeft":I
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 938
    .local v12, "resolvedRightToRight":I
    iget v13, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 939
    .local v13, "resolveGoneLeftMargin":I
    iget v5, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 940
    .local v5, "resolveGoneRightMargin":I
    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 942
    .local v10, "resolvedHorizontalBias":F
    move/from16 v17, v3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 942
    .end local v3    # "count":I
    .restart local v17    # "count":I
    move/from16 v18, v4

    const/16 v4, 0x11

    if-ge v3, v4, :cond_218

    .line 945
    .end local v4    # "resolvedLeftToLeft":I
    .local v18, "resolvedLeftToLeft":I
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 946
    .end local v18    # "resolvedLeftToLeft":I
    .local v3, "resolvedLeftToLeft":I
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 947
    .end local v9    # "resolvedLeftToRight":I
    .local v4, "resolvedLeftToRight":I
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 948
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 949
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 950
    .end local v13    # "resolveGoneLeftMargin":I
    .local v9, "resolveGoneLeftMargin":I
    iget v5, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 951
    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 953
    const/4 v13, -0x1

    if-ne v3, v13, :cond_1f4

    if-ne v4, v13, :cond_1f4

    .line 954
    move/from16 v19, v3

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 954
    .end local v3    # "resolvedLeftToLeft":I
    .local v19, "resolvedLeftToLeft":I
    if-eq v3, v13, :cond_1ed

    .line 955
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 960
    .end local v19    # "resolvedLeftToLeft":I
    .restart local v3    # "resolvedLeftToLeft":I
    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    goto :goto_1f9

    .line 956
    .end local v3    # "resolvedLeftToLeft":I
    .restart local v19    # "resolvedLeftToLeft":I
    :cond_1ed
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v3, v13, :cond_1f6

    .line 957
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 957
    .end local v4    # "resolvedLeftToRight":I
    .local v3, "resolvedLeftToRight":I
    goto :goto_1f7

    .line 960
    .end local v19    # "resolvedLeftToLeft":I
    .local v3, "resolvedLeftToLeft":I
    .restart local v4    # "resolvedLeftToRight":I
    :cond_1f4
    move/from16 v19, v3

    .line 960
    .end local v3    # "resolvedLeftToLeft":I
    .restart local v19    # "resolvedLeftToLeft":I
    :cond_1f6
    move v3, v4

    .line 960
    .end local v19    # "resolvedLeftToLeft":I
    .local v3, "resolvedLeftToRight":I
    .local v4, "resolvedLeftToLeft":I
    :goto_1f7
    move/from16 v4, v19

    :goto_1f9
    if-ne v11, v13, :cond_20d

    if-ne v12, v13, :cond_20d

    .line 961
    move/from16 v20, v3

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 961
    .end local v3    # "resolvedLeftToRight":I
    .local v20, "resolvedLeftToRight":I
    if-eq v3, v13, :cond_206

    .line 962
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    goto :goto_20f

    .line 963
    :cond_206
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v3, v13, :cond_20f

    .line 964
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    goto :goto_20f

    .line 970
    .end local v20    # "resolvedLeftToRight":I
    .restart local v3    # "resolvedLeftToRight":I
    :cond_20d
    move/from16 v20, v3

    .line 970
    .end local v3    # "resolvedLeftToRight":I
    .end local v9    # "resolveGoneLeftMargin":I
    .end local v10    # "resolvedHorizontalBias":F
    .local v5, "resolvedLeftToRight":I
    .local v11, "resolvedHorizontalBias":F
    .local v13, "resolvedRightToLeft":I
    .local v16, "resolveGoneLeftMargin":I
    .local v18, "resolveGoneRightMargin":I
    :cond_20f
    :goto_20f
    move/from16 v18, v5

    move/from16 v16, v9

    move v13, v11

    move/from16 v5, v20

    const/4 v3, -0x1

    goto :goto_221

    .line 970
    .end local v4    # "resolvedLeftToLeft":I
    .end local v16    # "resolveGoneLeftMargin":I
    .local v5, "resolveGoneRightMargin":I
    .local v9, "resolvedLeftToRight":I
    .restart local v10    # "resolvedHorizontalBias":F
    .local v11, "resolvedRightToLeft":I
    .local v13, "resolveGoneLeftMargin":I
    .local v18, "resolvedLeftToLeft":I
    :cond_218
    const/4 v3, -0x1

    move/from16 v16, v13

    move/from16 v4, v18

    move/from16 v18, v5

    move v5, v9

    move v13, v11

    .line 970
    .end local v9    # "resolvedLeftToRight":I
    .end local v10    # "resolvedHorizontalBias":F
    .restart local v4    # "resolvedLeftToLeft":I
    .local v5, "resolvedLeftToRight":I
    .local v11, "resolvedHorizontalBias":F
    .local v13, "resolvedRightToLeft":I
    .restart local v16    # "resolveGoneLeftMargin":I
    .local v18, "resolveGoneRightMargin":I
    :goto_221
    move v11, v10

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-eq v9, v3, :cond_242

    .line 971
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    invoke-direct {v1, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 972
    .local v3, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_235

    .line 973
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    invoke-virtual {v15, v3, v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connectCircularConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V

    .line 975
    .end local v3    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_235
    nop

    .line 1071
    move/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v24, v8

    move v4, v11

    move v3, v12

    move v6, v13

    move-object v8, v14

    goto/16 :goto_3ae

    .line 977
    :cond_242
    const/4 v3, -0x1

    if-eq v4, v3, :cond_276

    .line 978
    invoke-direct {v1, v4}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 979
    .restart local v3    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_26b

    .line 980
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v19, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v9

    move-object v9, v15

    move/from16 v21, v4

    move v4, v11

    move-object v11, v3

    .line 980
    .end local v11    # "resolvedHorizontalBias":F
    .local v4, "resolvedHorizontalBias":F
    .local v21, "resolvedLeftToLeft":I
    move-object/from16 v22, v3

    move v3, v12

    move-object/from16 v12, v19

    .line 980
    .end local v12    # "resolvedRightToRight":I
    .local v3, "resolvedRightToRight":I
    .local v22, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v23, v6

    move v6, v13

    move/from16 v13, v20

    .line 980
    .end local v13    # "resolvedRightToLeft":I
    .local v6, "resolvedRightToLeft":I
    .restart local v23    # "helperCount":I
    move-object/from16 v24, v8

    move-object v8, v14

    move/from16 v14, v16

    .line 980
    .end local v14    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .local v8, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .local v24, "child":Landroid/view/View;
    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 980
    .end local v22    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_275

    .line 984
    .end local v3    # "resolvedRightToRight":I
    .end local v21    # "resolvedLeftToLeft":I
    .end local v23    # "helperCount":I
    .end local v24    # "child":Landroid/view/View;
    .local v4, "resolvedLeftToLeft":I
    .local v6, "helperCount":I
    .local v8, "child":Landroid/view/View;
    .restart local v11    # "resolvedHorizontalBias":F
    .restart local v12    # "resolvedRightToRight":I
    .restart local v13    # "resolvedRightToLeft":I
    .restart local v14    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_26b
    move/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v24, v8

    move v4, v11

    move v3, v12

    move v6, v13

    move-object v8, v14

    .line 984
    .end local v11    # "resolvedHorizontalBias":F
    .end local v12    # "resolvedRightToRight":I
    .end local v13    # "resolvedRightToLeft":I
    .end local v14    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v3    # "resolvedRightToRight":I
    .local v4, "resolvedHorizontalBias":F
    .local v6, "resolvedRightToLeft":I
    .local v8, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v21    # "resolvedLeftToLeft":I
    .restart local v23    # "helperCount":I
    .restart local v24    # "child":Landroid/view/View;
    :goto_275
    goto :goto_297

    .line 984
    .end local v3    # "resolvedRightToRight":I
    .end local v21    # "resolvedLeftToLeft":I
    .end local v23    # "helperCount":I
    .end local v24    # "child":Landroid/view/View;
    .local v4, "resolvedLeftToLeft":I
    .local v6, "helperCount":I
    .local v8, "child":Landroid/view/View;
    .restart local v11    # "resolvedHorizontalBias":F
    .restart local v12    # "resolvedRightToRight":I
    .restart local v13    # "resolvedRightToLeft":I
    .restart local v14    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_276
    move/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v24, v8

    move v4, v11

    move v3, v12

    move v6, v13

    move-object v8, v14

    .line 984
    .end local v11    # "resolvedHorizontalBias":F
    .end local v12    # "resolvedRightToRight":I
    .end local v13    # "resolvedRightToLeft":I
    .end local v14    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v3    # "resolvedRightToRight":I
    .local v4, "resolvedHorizontalBias":F
    .local v6, "resolvedRightToLeft":I
    .local v8, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v21    # "resolvedLeftToLeft":I
    .restart local v23    # "helperCount":I
    .restart local v24    # "child":Landroid/view/View;
    const/4 v9, -0x1

    if-eq v5, v9, :cond_297

    .line 985
    invoke-direct {v1, v5}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 986
    .local v19, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_297

    .line 987
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    move/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 994
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_297
    :goto_297
    const/4 v9, -0x1

    if-eq v6, v9, :cond_2af

    .line 995
    invoke-direct {v1, v6}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 996
    .restart local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_2ae

    .line 997
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    move/from16 v14, v18

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1001
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2ae
    goto :goto_2c6

    :cond_2af
    const/4 v9, -0x1

    if-eq v3, v9, :cond_2c6

    .line 1002
    invoke-direct {v1, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 1003
    .restart local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_2c6

    .line 1004
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    move/from16 v14, v18

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1011
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2c6
    :goto_2c6
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2e2

    .line 1012
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-direct {v1, v9}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 1013
    .restart local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_2e1

    .line 1014
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iget v14, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1018
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2e1
    goto :goto_2fd

    :cond_2e2
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2fd

    .line 1019
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-direct {v1, v9}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 1020
    .restart local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_2fd

    .line 1021
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iget v14, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1028
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2fd
    :goto_2fd
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_319

    .line 1029
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-direct {v1, v9}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 1030
    .restart local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_318

    .line 1031
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v14, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1035
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_318
    goto :goto_334

    :cond_319
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_334

    .line 1036
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-direct {v1, v9}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 1037
    .restart local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_334

    .line 1038
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v14, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1045
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_334
    :goto_334
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_38f

    .line 1046
    iget-object v9, v1, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    iget v10, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1047
    .local v9, "view":Landroid/view/View;
    iget v10, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-direct {v1, v10}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v10

    .line 1048
    .local v10, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v10, :cond_38f

    if-eqz v9, :cond_38f

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    instance-of v11, v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v11, :cond_38f

    .line 1049
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1050
    .local v11, "targetParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    const/4 v12, 0x1

    iput-boolean v12, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1051
    iput-boolean v12, v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1052
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    .line 1053
    .local v12, "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1054
    invoke-virtual {v10, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v13

    .line 1055
    .local v13, "targetBaseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/16 v27, 0x0

    const/16 v28, -0x1

    sget-object v29, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/16 v30, 0x0

    const/16 v31, 0x1

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    invoke-virtual/range {v25 .. v31}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    .line 1058
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1059
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1063
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "targetParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v12    # "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v13    # "targetBaseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_38f
    const/4 v9, 0x0

    cmpl-float v10, v4, v9

    const/high16 v11, 0x3f000000    # 0.5f

    if-ltz v10, :cond_39d

    cmpl-float v10, v4, v11

    if-eqz v10, :cond_39d

    .line 1064
    invoke-virtual {v15, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1066
    :cond_39d
    iget v10, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v9, v10, v9

    if-ltz v9, :cond_3ae

    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_3ae

    .line 1067
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1071
    :cond_3ae
    :goto_3ae
    if-eqz v2, :cond_3c0

    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3b9

    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-eq v9, v10, :cond_3c0

    .line 1073
    :cond_3b9
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iget v10, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v15, v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOrigin(II)V

    .line 1077
    :cond_3c0
    iget-boolean v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v9, :cond_3ed

    .line 1078
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3e3

    .line 1079
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1080
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    iget v10, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    iput v10, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1081
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    iget v10, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    iput v10, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_3f7

    .line 1083
    :cond_3e3
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1084
    const/4 v9, 0x0

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_3f7

    .line 1087
    :cond_3ed
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1088
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1090
    :goto_3f7
    iget-boolean v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v9, :cond_425

    .line 1091
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_41b

    .line 1092
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1093
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iput v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1094
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1104
    const/4 v9, 0x0

    goto :goto_431

    .line 1096
    :cond_41b
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1097
    const/4 v9, 0x0

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_431

    .line 1100
    :cond_425
    const/4 v9, 0x0

    const/4 v10, -0x1

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1101
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1104
    :goto_431
    iget-object v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    if-eqz v11, :cond_43a

    .line 1105
    iget-object v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    .line 1107
    :cond_43a
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    .line 1108
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalWeight(F)V

    .line 1109
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1110
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1111
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iget v12, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget v14, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {v15, v11, v12, v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    .line 1114
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iget v12, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iget v14, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {v15, v11, v12, v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    .line 861
    .end local v3    # "resolvedRightToRight":I
    .end local v4    # "resolvedHorizontalBias":F
    .end local v5    # "resolvedLeftToRight":I
    .end local v6    # "resolvedRightToLeft":I
    .end local v8    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v16    # "resolveGoneLeftMargin":I
    .end local v18    # "resolveGoneRightMargin":I
    .end local v21    # "resolvedLeftToLeft":I
    .end local v24    # "child":Landroid/view/View;
    :goto_464
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v17

    move/from16 v6, v23

    const/4 v4, 0x0

    const/4 v5, -0x1

    goto/16 :goto_be

    .line 1119
    .end local v7    # "i":I
    .end local v17    # "count":I
    .end local v23    # "helperCount":I
    .local v3, "count":I
    .local v6, "helperCount":I
    :cond_46e
    move/from16 v17, v3

    move/from16 v23, v6

    .line 1119
    .end local v3    # "count":I
    .end local v6    # "helperCount":I
    .restart local v17    # "count":I
    .restart local v23    # "helperCount":I
    return-void
.end method

.method private setSelfDimensionBehaviour(II)V
    .registers 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object v0, p0

    .line 1741
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1742
    .local v1, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1743
    .local v2, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1744
    .local v3, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1746
    .local v4, "heightSize":I
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 1747
    .local v5, "heightPadding":I
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    .line 1749
    .local v6, "widthPadding":I
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1750
    .local v7, "widthBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1751
    .local v8, "heightBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v9, 0x0

    .line 1752
    .local v9, "desiredWidth":I
    const/4 v10, 0x0

    .line 1754
    .local v10, "desiredHeight":I
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 1755
    .local v11, "params":Landroid/view/ViewGroup$LayoutParams;
    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v13, -0x80000000

    if-eq v1, v13, :cond_44

    if-eqz v1, :cond_41

    if-eq v1, v12, :cond_38

    goto :goto_48

    .line 1766
    :cond_38
    iget v14, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    sub-int v9, v14, v6

    goto :goto_48

    .line 1762
    :cond_41
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1764
    goto :goto_48

    .line 1757
    :cond_44
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1758
    move v9, v2

    .line 1760
    nop

    .line 1769
    :goto_48
    if-eq v3, v13, :cond_5b

    if-eqz v3, :cond_58

    if-eq v3, v12, :cond_4f

    goto :goto_5f

    .line 1780
    :cond_4f
    iget v12, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int v10, v12, v5

    goto :goto_5f

    .line 1776
    :cond_58
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1778
    goto :goto_5f

    .line 1771
    :cond_5b
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1772
    move v10, v4

    .line 1774
    nop

    .line 1784
    :goto_5f
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1785
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1786
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1787
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1788
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1789
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1790
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v13, v0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1791
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v13, v0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1792
    return-void
.end method

.method private updateHierarchy()V
    .registers 6

    .line 782
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 784
    .local v0, "count":I
    const/4 v1, 0x0

    .line 785
    .local v1, "recompute":Z
    const/4 v2, 0x0

    .line 785
    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_17

    .line 786
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 787
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 788
    const/4 v1, 0x1

    .line 789
    goto :goto_17

    .line 785
    .end local v3    # "child":Landroid/view/View;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 792
    .end local v2    # "i":I
    :cond_17
    :goto_17
    if-eqz v1, :cond_21

    .line 793
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 794
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->setChildrenConstraints()V

    .line 796
    :cond_21
    return-void
.end method

.method private updatePostMeasures()V
    .registers 6

    .line 1243
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 1244
    .local v0, "widgetsCount":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1244
    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_19

    .line 1245
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1246
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Landroid/support/constraint/Placeholder;

    if-eqz v4, :cond_16

    .line 1247
    move-object v4, v3

    check-cast v4, Landroid/support/constraint/Placeholder;

    invoke-virtual {v4, p0}, Landroid/support/constraint/Placeholder;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    .line 1244
    .end local v3    # "child":Landroid/view/View;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1251
    .end local v2    # "i":I
    :cond_19
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1252
    .local v2, "helperCount":I
    if-lez v2, :cond_32

    .line 1253
    nop

    .line 1253
    .local v1, "i":I
    :goto_22
    if-ge v1, v2, :cond_32

    .line 1254
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintHelper;

    .line 1255
    .local v3, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v3, p0}, Landroid/support/constraint/ConstraintHelper;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    .line 1253
    .end local v3    # "helper":Landroid/support/constraint/ConstraintHelper;
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1258
    .end local v1    # "i":I
    :cond_32
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 625
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 626
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_c

    .line 627
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 629
    :cond_c
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1939
    instance-of v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1966
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1967
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_122

    .line 1968
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 1969
    .local v0, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1970
    .local v1, "cw":F
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1971
    .local v2, "ch":F
    const/high16 v3, 0x44870000    # 1080.0f

    .line 1972
    .local v3, "ow":F
    const/high16 v4, 0x44f00000    # 1920.0f

    .line 1973
    .local v4, "oh":F
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1973
    .local v6, "i":I
    :goto_1d
    if-ge v6, v0, :cond_122

    .line 1974
    move-object/from16 v7, p0

    invoke-virtual {v7, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1975
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_38

    .line 1976
    nop

    .line 1973
    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    goto/16 :goto_115

    .line 1978
    :cond_38
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 1979
    .local v9, "tag":Ljava/lang/Object;
    if-eqz v9, :cond_10d

    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_10d

    .line 1980
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    .line 1981
    .local v10, "coordinates":Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1982
    .local v11, "split":[Ljava/lang/String;
    array-length v12, v11

    const/4 v13, 0x4

    if-ne v12, v13, :cond_10d

    .line 1983
    aget-object v12, v11, v5

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1984
    .local v12, "x":I
    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1985
    .local v13, "y":I
    const/4 v14, 0x2

    aget-object v14, v11, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1986
    .local v14, "w":I
    const/4 v15, 0x3

    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1987
    .local v15, "h":I
    int-to-float v5, v12

    div-float/2addr v5, v3

    mul-float v5, v5, v1

    float-to-int v5, v5

    .line 1988
    .end local v12    # "x":I
    .local v5, "x":I
    int-to-float v12, v13

    div-float/2addr v12, v4

    mul-float v12, v12, v2

    float-to-int v12, v12

    .line 1989
    .end local v13    # "y":I
    .local v12, "y":I
    int-to-float v13, v14

    div-float/2addr v13, v3

    mul-float v13, v13, v1

    float-to-int v13, v13

    .line 1990
    .end local v14    # "w":I
    .local v13, "w":I
    int-to-float v14, v15

    div-float/2addr v14, v4

    mul-float v14, v14, v2

    float-to-int v14, v14

    .line 1991
    .end local v15    # "h":I
    .local v14, "h":I
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 1992
    .local v15, "paint":Landroid/graphics/Paint;
    move/from16 v22, v0

    const/high16 v0, -0x10000

    .line 1992
    .end local v0    # "count":I
    .local v22, "count":I
    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1993
    int-to-float v0, v5

    move/from16 v23, v1

    int-to-float v1, v12

    .line 1993
    .end local v1    # "cw":F
    .local v23, "cw":F
    move/from16 v24, v2

    add-int v2, v5, v13

    .line 1993
    .end local v2    # "ch":F
    .local v24, "ch":F
    int-to-float v2, v2

    move/from16 v25, v3

    int-to-float v3, v12

    .line 1993
    .end local v3    # "ow":F
    .local v25, "ow":F
    move-object/from16 v16, p1

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v15

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1994
    add-int v0, v5, v13

    int-to-float v0, v0

    int-to-float v1, v12

    add-int v2, v5, v13

    int-to-float v2, v2

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1995
    add-int v0, v5, v13

    int-to-float v0, v0

    add-int v1, v12, v14

    int-to-float v1, v1

    int-to-float v2, v5

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1996
    int-to-float v0, v5

    add-int v1, v12, v14

    int-to-float v1, v1

    int-to-float v2, v5

    int-to-float v3, v12

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1997
    const v0, -0xff0100

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1998
    int-to-float v0, v5

    int-to-float v1, v12

    add-int v2, v5, v13

    int-to-float v2, v2

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1999
    int-to-float v0, v5

    add-int v1, v12, v14

    int-to-float v1, v1

    add-int v2, v5, v13

    int-to-float v2, v2

    int-to-float v3, v12

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1999
    .end local v5    # "x":I
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "tag":Ljava/lang/Object;
    .end local v10    # "coordinates":Ljava/lang/String;
    .end local v11    # "split":[Ljava/lang/String;
    .end local v12    # "y":I
    .end local v13    # "w":I
    .end local v14    # "h":I
    .end local v15    # "paint":Landroid/graphics/Paint;
    goto :goto_115

    .line 1973
    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .end local v25    # "ow":F
    .restart local v0    # "count":I
    .restart local v1    # "cw":F
    .restart local v2    # "ch":F
    .restart local v3    # "ow":F
    :cond_10d
    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    .line 1973
    .end local v0    # "count":I
    .end local v1    # "cw":F
    .end local v2    # "ch":F
    .end local v3    # "ow":F
    .restart local v22    # "count":I
    .restart local v23    # "cw":F
    .restart local v24    # "ch":F
    .restart local v25    # "ow":F
    :goto_115
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    const/4 v5, 0x0

    goto/16 :goto_1d

    .line 2004
    .end local v4    # "oh":F
    .end local v6    # "i":I
    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .end local v25    # "ow":F
    :cond_122
    move-object/from16 v7, p0

    return-void
.end method

.method public fillMetrics(Landroid/support/constraint/solver/Metrics;)V
    .registers 3
    .param p1, "metrics"    # Landroid/support/constraint/solver/Metrics;

    .line 1481
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    .line 1482
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->fillMetrics(Landroid/support/constraint/solver/Metrics;)V

    .line 1483
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .registers 3

    .line 1923
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 476
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1915
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 476
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1931
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 551
    if-nez p1, :cond_1c

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 552
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 553
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 554
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 557
    .end local v0    # "name":Ljava/lang/String;
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxHeight()I
    .registers 2

    .line 778
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    .line 768
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .registers 2

    .line 731
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .registers 2

    .line 721
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    return v0
.end method

.method public getOptimizationLevel()I
    .registers 2

    .line 1908
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v0

    return v0
.end method

.method public getViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I

    .line 1958
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 1139
    if-ne p1, p0, :cond_5

    .line 1140
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v0

    .line 1142
    :cond_5
    if-nez p1, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_11
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object v0, p0

    .line 1818
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 1819
    .local v1, "widgetsCount":I
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v2

    .line 1820
    .local v2, "isInEditMode":Z
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1820
    .local v4, "i":I
    :goto_b
    if-ge v4, v1, :cond_5c

    .line 1821
    invoke-virtual {v0, v4}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1822
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1823
    .local v6, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v7, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1825
    .local v7, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2c

    iget-boolean v8, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v8, :cond_2c

    iget-boolean v8, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v8, :cond_2c

    if-nez v2, :cond_2c

    .line 1828
    goto :goto_59

    .line 1830
    :cond_2c
    iget-boolean v8, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v8, :cond_31

    .line 1831
    goto :goto_59

    .line 1833
    :cond_31
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v8

    .line 1834
    .local v8, "l":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v9

    .line 1835
    .local v9, "t":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    add-int/2addr v10, v8

    .line 1836
    .local v10, "r":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v11

    add-int/2addr v11, v9

    .line 1858
    .local v11, "b":I
    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 1859
    instance-of v12, v5, Landroid/support/constraint/Placeholder;

    if-eqz v12, :cond_59

    .line 1860
    move-object v12, v5

    check-cast v12, Landroid/support/constraint/Placeholder;

    .line 1861
    .local v12, "holder":Landroid/support/constraint/Placeholder;
    invoke-virtual {v12}, Landroid/support/constraint/Placeholder;->getContent()Landroid/view/View;

    move-result-object v13

    .line 1862
    .local v13, "content":Landroid/view/View;
    if-eqz v13, :cond_59

    .line 1863
    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1864
    invoke-virtual {v13, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 1820
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "l":I
    .end local v9    # "t":I
    .end local v10    # "r":I
    .end local v11    # "b":I
    .end local v12    # "holder":Landroid/support/constraint/Placeholder;
    .end local v13    # "content":Landroid/view/View;
    :cond_59
    :goto_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1868
    .end local v4    # "i":I
    :cond_5c
    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1869
    .local v4, "helperCount":I
    if-lez v4, :cond_75

    .line 1870
    nop

    .line 1870
    .local v3, "i":I
    :goto_65
    if-ge v3, v4, :cond_75

    .line 1871
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintHelper;

    .line 1872
    .local v5, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v5, v0}, Landroid/support/constraint/ConstraintHelper;->updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 1870
    .end local v5    # "helper":Landroid/support/constraint/ConstraintHelper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .line 1875
    .end local v3    # "i":I
    :cond_75
    return-void
.end method

.method protected onMeasure(II)V
    .registers 59
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1490
    move/from16 v2, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1491
    .local v3, "time":J
    const/4 v5, 0x0

    .line 1492
    .local v5, "REMEASURES_A":I
    const/4 v6, 0x0

    .line 1498
    .local v6, "REMEASURES_B":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1499
    .local v7, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1500
    .local v8, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1501
    .local v9, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1503
    .local v10, "heightSize":I
    iget v11, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_27

    iget v11, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    if-eq v11, v12, :cond_27

    const/4 v11, 0x1

    goto :goto_28

    :cond_27
    const/4 v11, 0x0

    .line 1504
    .local v11, "validLastMeasure":Z
    :goto_28
    const/high16 v15, 0x40000000    # 2.0f

    if-ne v7, v15, :cond_38

    if-ne v9, v15, :cond_38

    iget v12, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    if-ne v8, v12, :cond_38

    iget v12, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    if-ne v10, v12, :cond_38

    const/4 v12, 0x1

    goto :goto_39

    :cond_38
    const/4 v12, 0x0

    .line 1506
    .local v12, "sameSize":Z
    :goto_39
    iget v13, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    if-ne v7, v13, :cond_43

    iget v13, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    if-ne v9, v13, :cond_43

    const/4 v13, 0x1

    goto :goto_44

    :cond_43
    const/4 v13, 0x0

    .line 1507
    .local v13, "sameMode":Z
    :goto_44
    if-eqz v13, :cond_50

    iget v14, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    if-ne v8, v14, :cond_50

    iget v14, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    if-ne v10, v14, :cond_50

    const/4 v14, 0x1

    goto :goto_51

    :cond_50
    const/4 v14, 0x0

    .line 1509
    .local v14, "sameMeasure":Z
    :goto_51
    const/high16 v15, -0x80000000

    if-eqz v13, :cond_65

    if-ne v7, v15, :cond_65

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v9, v15, :cond_65

    iget v15, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    if-lt v8, v15, :cond_65

    iget v15, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    if-ne v10, v15, :cond_65

    const/4 v15, 0x1

    goto :goto_66

    :cond_65
    const/4 v15, 0x0

    .line 1512
    .local v15, "fitSizeWidth":Z
    :goto_66
    if-eqz v13, :cond_7c

    move-wide/from16 v18, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v7, v3, :cond_7e

    .line 1512
    .end local v3    # "time":J
    .local v18, "time":J
    const/high16 v3, -0x80000000

    if-ne v9, v3, :cond_7e

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    if-ne v8, v3, :cond_7e

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    if-lt v10, v3, :cond_7e

    const/4 v3, 0x1

    goto :goto_7f

    .line 1512
    .end local v18    # "time":J
    .restart local v3    # "time":J
    :cond_7c
    move-wide/from16 v18, v3

    .line 1512
    .end local v3    # "time":J
    .restart local v18    # "time":J
    :cond_7e
    const/4 v3, 0x0

    .line 1520
    .local v3, "fitSizeHeight":Z
    :goto_7f
    iput v7, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 1521
    iput v9, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 1522
    iput v8, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 1523
    iput v10, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 1525
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    .line 1526
    .local v4, "paddingLeft":I
    move/from16 v20, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v3

    .line 1528
    .local v3, "paddingTop":I
    .local v20, "fitSizeHeight":Z
    move/from16 v21, v5

    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1528
    .end local v5    # "REMEASURES_A":I
    .local v21, "REMEASURES_A":I
    invoke-virtual {v5, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 1529
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 1530
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move/from16 v22, v6

    iget v6, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 1530
    .end local v6    # "REMEASURES_B":I
    .local v22, "REMEASURES_B":I
    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMaxWidth(I)V

    .line 1531
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v6, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMaxHeight(I)V

    .line 1533
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_c5

    .line 1534
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutDirection()I

    move-result v6

    move/from16 v23, v7

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c0

    .line 1534
    .end local v7    # "widthMode":I
    .local v23, "widthMode":I
    const/4 v6, 0x1

    goto :goto_c1

    :cond_c0
    const/4 v6, 0x0

    :goto_c1
    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    goto :goto_c8

    .line 1537
    .end local v23    # "widthMode":I
    .restart local v7    # "widthMode":I
    :cond_c5
    move/from16 v23, v7

    const/4 v7, 0x1

    .line 1537
    .end local v7    # "widthMode":I
    .restart local v23    # "widthMode":I
    :goto_c8
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->setSelfDimensionBehaviour(II)V

    .line 1538
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v5

    .line 1539
    .local v5, "startingWidth":I
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v6

    .line 1540
    .local v6, "startingHeight":I
    iget-boolean v7, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    if-eqz v7, :cond_e2

    .line 1541
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 1542
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->updateHierarchy()V

    goto :goto_e3

    .line 1545
    :cond_e2
    const/4 v7, 0x0

    :goto_e3
    iget v7, v0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    move/from16 v26, v8

    const/16 v8, 0x8

    .line 1545
    .end local v8    # "widthSize":I
    .local v26, "widthSize":I
    and-int/2addr v7, v8

    if-ne v7, v8, :cond_ee

    const/4 v7, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v7, 0x0

    .line 1547
    .local v7, "optimiseDimensions":Z
    :goto_ef
    if-eqz v7, :cond_ff

    .line 1548
    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->preOptimize()V

    .line 1549
    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8, v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeForDimensions(II)V

    .line 1550
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->internalMeasureDimensions(II)V

    goto :goto_102

    .line 1552
    :cond_ff
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->internalMeasureChildren(II)V

    .line 1554
    :goto_102
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->updatePostMeasures()V

    .line 1563
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v8

    if-lez v8, :cond_110

    .line 1564
    const-string v8, "First pass"

    invoke-virtual {v0, v8}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1566
    :cond_110
    const/4 v8, 0x0

    .line 1569
    .local v8, "childState":I
    move/from16 v27, v8

    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 1569
    .end local v8    # "childState":I
    .local v27, "childState":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1571
    .local v8, "sizeDependentWidgetsCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v16

    move/from16 v28, v9

    add-int v9, v3, v16

    .line 1572
    .local v9, "heightPadding":I
    .local v28, "heightMode":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v16

    move/from16 v29, v3

    add-int v3, v4, v16

    .line 1578
    .local v3, "widthPadding":I
    .local v29, "paddingTop":I
    move/from16 v30, v4

    .line 1578
    .end local v4    # "paddingLeft":I
    .local v30, "paddingLeft":I
    if-lez v8, :cond_3bb

    .line 1579
    const/16 v16, 0x0

    .line 1580
    .local v16, "needSolverPass":Z
    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    move/from16 v31, v10

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1580
    .end local v10    # "heightSize":I
    .local v31, "heightSize":I
    if-ne v4, v10, :cond_13d

    const/4 v4, 0x1

    goto :goto_13e

    :cond_13d
    const/4 v4, 0x0

    .line 1582
    .local v4, "containerWrapWidth":Z
    :goto_13e
    iget-object v10, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    move/from16 v32, v11

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1582
    .end local v11    # "validLastMeasure":Z
    .local v32, "validLastMeasure":Z
    if-ne v10, v11, :cond_14d

    const/16 v24, 0x1

    goto :goto_14f

    :cond_14d
    const/16 v24, 0x0

    :goto_14f
    move/from16 v10, v24

    .line 1584
    .local v10, "containerWrapHeight":Z
    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v11

    move/from16 v33, v12

    iget v12, v0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 1584
    .end local v12    # "sameSize":Z
    .local v33, "sameSize":Z
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1585
    .local v11, "minWidth":I
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v12

    move/from16 v34, v11

    iget v11, v0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 1585
    .end local v11    # "minWidth":I
    .local v34, "minWidth":I
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1586
    .local v11, "minHeight":I
    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v14, v27

    move/from16 v12, v34

    move v13, v11

    const/4 v11, 0x0

    .line 1586
    .end local v27    # "childState":I
    .end local v34    # "minWidth":I
    .local v11, "i":I
    .local v12, "minWidth":I
    .local v13, "minHeight":I
    .local v14, "childState":I
    .local v35, "sameMode":Z
    .local v36, "sameMeasure":Z
    :goto_177
    const-wide/16 v37, 0x1

    if-ge v11, v8, :cond_2cc

    .line 1587
    move/from16 v39, v15

    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 1587
    .end local v15    # "fitSizeWidth":Z
    .local v39, "fitSizeWidth":Z
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1588
    .local v15, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v17

    move/from16 v40, v8

    move-object/from16 v8, v17

    check-cast v8, Landroid/view/View;

    .line 1589
    .local v8, "child":Landroid/view/View;
    .local v40, "sizeDependentWidgetsCount":I
    if-nez v8, :cond_19a

    .line 1590
    nop

    .line 1586
    move/from16 v42, v5

    move/from16 v41, v6

    .line 1586
    .end local v5    # "startingWidth":I
    .end local v6    # "startingHeight":I
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "i":I
    .end local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v41, "startingHeight":I
    .local v42, "startingWidth":I
    .local v43, "i":I
    :goto_196
    move/from16 v43, v11

    goto/16 :goto_2bc

    .line 1592
    .end local v41    # "startingHeight":I
    .end local v42    # "startingWidth":I
    .end local v43    # "i":I
    .restart local v5    # "startingWidth":I
    .restart local v6    # "startingHeight":I
    .restart local v8    # "child":Landroid/view/View;
    .restart local v11    # "i":I
    .restart local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_19a
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move/from16 v41, v6

    move-object/from16 v6, v17

    check-cast v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1593
    .local v6, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v41    # "startingHeight":I
    move/from16 v42, v5

    iget-boolean v5, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 1593
    .end local v5    # "startingWidth":I
    .restart local v42    # "startingWidth":I
    if-nez v5, :cond_2ba

    iget-boolean v5, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v5, :cond_1af

    .line 1594
    goto :goto_196

    .line 1596
    :cond_1af
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v5

    move/from16 v43, v11

    const/16 v11, 0x8

    if-ne v5, v11, :cond_1bb

    .line 1597
    .end local v11    # "i":I
    .restart local v43    # "i":I
    goto/16 :goto_2bc

    .line 1600
    :cond_1bb
    if-eqz v7, :cond_1d3

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->isResolved()Z

    move-result v5

    if-eqz v5, :cond_1d3

    .line 1601
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->isResolved()Z

    move-result v5

    if-eqz v5, :cond_1d3

    .line 1602
    goto/16 :goto_2bc

    .line 1604
    :cond_1d3
    const/4 v5, 0x0

    .line 1605
    .local v5, "widthSpec":I
    const/4 v11, 0x0

    .line 1607
    .local v11, "heightSpec":I
    move/from16 v44, v5

    iget v5, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 1607
    .end local v5    # "widthSpec":I
    .local v44, "widthSpec":I
    move/from16 v45, v11

    const/4 v11, -0x2

    .line 1607
    .end local v11    # "heightSpec":I
    .local v45, "heightSpec":I
    if-ne v5, v11, :cond_1e9

    iget-boolean v5, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-eqz v5, :cond_1e9

    .line 1608
    iget v5, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-static {v1, v3, v5}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v5

    goto :goto_1f3

    .line 1610
    :cond_1e9
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1612
    .end local v44    # "widthSpec":I
    .restart local v5    # "widthSpec":I
    :goto_1f3
    iget v11, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v11, v1, :cond_203

    iget-boolean v1, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v1, :cond_203

    .line 1613
    iget v1, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-static {v2, v9, v1}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_20d

    .line 1615
    :cond_203
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1619
    .end local v45    # "heightSpec":I
    .local v1, "heightSpec":I
    :goto_20d
    invoke-virtual {v8, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1620
    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v11, :cond_223

    .line 1621
    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v46, v1

    iget-wide v1, v11, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    .line 1621
    .end local v1    # "heightSpec":I
    .local v46, "heightSpec":I
    move/from16 v48, v5

    move-object/from16 v47, v6

    add-long v5, v1, v37

    .line 1621
    .end local v5    # "widthSpec":I
    .end local v6    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .local v47, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .local v48, "widthSpec":I
    iput-wide v5, v11, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    goto :goto_229

    .line 1624
    .end local v46    # "heightSpec":I
    .end local v47    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v48    # "widthSpec":I
    .restart local v1    # "heightSpec":I
    .restart local v5    # "widthSpec":I
    .restart local v6    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_223
    move/from16 v46, v1

    move/from16 v48, v5

    move-object/from16 v47, v6

    .line 1624
    .end local v1    # "heightSpec":I
    .end local v5    # "widthSpec":I
    .end local v6    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v46    # "heightSpec":I
    .restart local v47    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v48    # "widthSpec":I
    :goto_229
    add-int/lit8 v21, v21, 0x1

    .line 1626
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1627
    .local v1, "measuredWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1629
    .local v2, "measuredHeight":I
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    if-eq v1, v5, :cond_263

    .line 1630
    invoke-virtual {v15, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1631
    if-eqz v7, :cond_245

    .line 1632
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1634
    :cond_245
    if-eqz v4, :cond_261

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v5

    if-le v5, v12, :cond_261

    .line 1635
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v5

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1636
    invoke-virtual {v15, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v5, v6

    .line 1637
    .local v5, "w":I
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1639
    .end local v12    # "minWidth":I
    .local v5, "minWidth":I
    move v12, v5

    .line 1639
    .end local v5    # "minWidth":I
    .restart local v12    # "minWidth":I
    :cond_261
    const/16 v16, 0x1

    .line 1641
    :cond_263
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    if-eq v2, v5, :cond_293

    .line 1642
    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1643
    if-eqz v7, :cond_275

    .line 1644
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1646
    :cond_275
    if-eqz v10, :cond_291

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v5

    if-le v5, v13, :cond_291

    .line 1647
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v5

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1648
    invoke-virtual {v15, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v5, v6

    .line 1649
    .local v5, "h":I
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1651
    .end local v13    # "minHeight":I
    .local v5, "minHeight":I
    move v13, v5

    .line 1651
    .end local v5    # "minHeight":I
    .restart local v13    # "minHeight":I
    :cond_291
    const/16 v16, 0x1

    .line 1653
    :cond_293
    move-object/from16 v5, v47

    iget-boolean v6, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1653
    .end local v47    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .local v5, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    if-eqz v6, :cond_2ab

    .line 1654
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v6

    .line 1655
    .local v6, "baseline":I
    const/4 v11, -0x1

    if-eq v6, v11, :cond_2ab

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v11

    if-eq v6, v11, :cond_2ab

    .line 1656
    invoke-virtual {v15, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1657
    const/16 v16, 0x1

    .line 1661
    .end local v6    # "baseline":I
    :cond_2ab
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xb

    if-lt v6, v11, :cond_2bc

    .line 1662
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v14, v6}, Landroid/support/constraint/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v14

    .line 1662
    .end local v1    # "measuredWidth":I
    .end local v2    # "measuredHeight":I
    .end local v5    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v8    # "child":Landroid/view/View;
    .end local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v46    # "heightSpec":I
    .end local v48    # "widthSpec":I
    goto :goto_2bc

    .line 1586
    .end local v43    # "i":I
    .local v11, "i":I
    :cond_2ba
    move/from16 v43, v11

    .line 1586
    .end local v11    # "i":I
    .restart local v43    # "i":I
    :cond_2bc
    :goto_2bc
    add-int/lit8 v11, v43, 0x1

    .line 1586
    .end local v43    # "i":I
    .restart local v11    # "i":I
    move/from16 v15, v39

    move/from16 v8, v40

    move/from16 v6, v41

    move/from16 v5, v42

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_177

    .line 1665
    .end local v11    # "i":I
    .end local v39    # "fitSizeWidth":Z
    .end local v40    # "sizeDependentWidgetsCount":I
    .end local v41    # "startingHeight":I
    .end local v42    # "startingWidth":I
    .local v5, "startingWidth":I
    .local v6, "startingHeight":I
    .local v8, "sizeDependentWidgetsCount":I
    .local v15, "fitSizeWidth":Z
    :cond_2cc
    move/from16 v42, v5

    move/from16 v41, v6

    move/from16 v40, v8

    move/from16 v39, v15

    .line 1665
    .end local v5    # "startingWidth":I
    .end local v6    # "startingHeight":I
    .end local v8    # "sizeDependentWidgetsCount":I
    .end local v15    # "fitSizeWidth":Z
    .restart local v39    # "fitSizeWidth":Z
    .restart local v40    # "sizeDependentWidgetsCount":I
    .restart local v41    # "startingHeight":I
    .restart local v42    # "startingWidth":I
    if-eqz v16, :cond_317

    .line 1666
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move/from16 v2, v42

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1667
    .end local v42    # "startingWidth":I
    .local v2, "startingWidth":I
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move/from16 v5, v41

    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1668
    .end local v41    # "startingHeight":I
    .local v5, "startingHeight":I
    if-eqz v7, :cond_2eb

    .line 1669
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    .line 1671
    :cond_2eb
    const-string v1, "2nd pass"

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1672
    const/4 v1, 0x0

    .line 1673
    .end local v16    # "needSolverPass":Z
    .local v1, "needSolverPass":Z
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v6

    if-ge v6, v12, :cond_2ff

    .line 1674
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1675
    const/4 v1, 0x1

    .line 1677
    :cond_2ff
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v6

    if-ge v6, v13, :cond_30d

    .line 1678
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1679
    const/4 v1, 0x1

    .line 1681
    .end local v1    # "needSolverPass":Z
    .restart local v16    # "needSolverPass":Z
    :cond_30d
    move/from16 v16, v1

    if-eqz v16, :cond_31b

    .line 1682
    const-string v1, "3rd pass"

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    goto :goto_31b

    .line 1685
    .end local v2    # "startingWidth":I
    .end local v5    # "startingHeight":I
    .restart local v41    # "startingHeight":I
    .restart local v42    # "startingWidth":I
    :cond_317
    move/from16 v5, v41

    move/from16 v2, v42

    .line 1685
    .end local v41    # "startingHeight":I
    .end local v42    # "startingWidth":I
    .restart local v2    # "startingWidth":I
    .restart local v5    # "startingHeight":I
    :cond_31b
    :goto_31b
    move/from16 v6, v22

    const/16 v25, 0x0

    .line 1685
    .end local v22    # "REMEASURES_B":I
    .local v6, "REMEASURES_B":I
    .local v25, "i":I
    :goto_31f
    move/from16 v1, v25

    .line 1685
    .end local v25    # "i":I
    .local v1, "i":I
    move/from16 v8, v40

    if-ge v1, v8, :cond_3b2

    .line 1686
    .end local v40    # "sizeDependentWidgetsCount":I
    .restart local v8    # "sizeDependentWidgetsCount":I
    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1687
    .local v11, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 1688
    .local v15, "child":Landroid/view/View;
    if-nez v15, :cond_343

    .line 1689
    nop

    .line 1685
    move/from16 v49, v2

    move/from16 v50, v4

    .line 1685
    .end local v2    # "startingWidth":I
    .end local v4    # "containerWrapWidth":Z
    .end local v5    # "startingHeight":I
    .end local v7    # "optimiseDimensions":Z
    .end local v8    # "sizeDependentWidgetsCount":I
    .end local v10    # "containerWrapHeight":Z
    .end local v11    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v15    # "child":Landroid/view/View;
    .local v49, "startingWidth":I
    .local v50, "containerWrapWidth":Z
    .local v51, "startingHeight":I
    .local v52, "optimiseDimensions":Z
    .local v53, "sizeDependentWidgetsCount":I
    .local v54, "containerWrapHeight":Z
    :cond_33a
    move/from16 v51, v5

    move/from16 v52, v7

    move/from16 v53, v8

    move/from16 v54, v10

    goto :goto_3a2

    .line 1691
    .end local v49    # "startingWidth":I
    .end local v50    # "containerWrapWidth":Z
    .end local v51    # "startingHeight":I
    .end local v52    # "optimiseDimensions":Z
    .end local v53    # "sizeDependentWidgetsCount":I
    .end local v54    # "containerWrapHeight":Z
    .restart local v2    # "startingWidth":I
    .restart local v4    # "containerWrapWidth":Z
    .restart local v5    # "startingHeight":I
    .restart local v7    # "optimiseDimensions":Z
    .restart local v8    # "sizeDependentWidgetsCount":I
    .restart local v10    # "containerWrapHeight":Z
    .restart local v11    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v15    # "child":Landroid/view/View;
    :cond_343
    move/from16 v49, v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1691
    .end local v2    # "startingWidth":I
    .restart local v49    # "startingWidth":I
    move/from16 v50, v4

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    .line 1691
    .end local v4    # "containerWrapWidth":Z
    .restart local v50    # "containerWrapWidth":Z
    if-ne v2, v4, :cond_35b

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    if-eq v2, v4, :cond_33a

    .line 1692
    :cond_35b
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_39a

    .line 1693
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1694
    .local v2, "widthSpec":I
    move/from16 v51, v5

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    .line 1694
    .end local v5    # "startingHeight":I
    .restart local v51    # "startingHeight":I
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1695
    .local v5, "heightSpec":I
    invoke-virtual {v15, v2, v5}, Landroid/view/View;->measure(II)V

    .line 1696
    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v4, :cond_38f

    .line 1697
    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v52, v7

    move/from16 v53, v8

    iget-wide v7, v4, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    .line 1697
    .end local v7    # "optimiseDimensions":Z
    .end local v8    # "sizeDependentWidgetsCount":I
    .restart local v52    # "optimiseDimensions":Z
    .restart local v53    # "sizeDependentWidgetsCount":I
    move/from16 v54, v10

    move-object/from16 v55, v11

    add-long v10, v7, v37

    .line 1697
    .end local v10    # "containerWrapHeight":Z
    .end local v11    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v54    # "containerWrapHeight":Z
    .local v55, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iput-wide v10, v4, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    goto :goto_397

    .line 1700
    .end local v52    # "optimiseDimensions":Z
    .end local v53    # "sizeDependentWidgetsCount":I
    .end local v54    # "containerWrapHeight":Z
    .end local v55    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "optimiseDimensions":Z
    .restart local v8    # "sizeDependentWidgetsCount":I
    .restart local v10    # "containerWrapHeight":Z
    .restart local v11    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_38f
    move/from16 v52, v7

    move/from16 v53, v8

    move/from16 v54, v10

    move-object/from16 v55, v11

    .line 1700
    .end local v7    # "optimiseDimensions":Z
    .end local v8    # "sizeDependentWidgetsCount":I
    .end local v10    # "containerWrapHeight":Z
    .end local v11    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v52    # "optimiseDimensions":Z
    .restart local v53    # "sizeDependentWidgetsCount":I
    .restart local v54    # "containerWrapHeight":Z
    .restart local v55    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_397
    add-int/lit8 v6, v6, 0x1

    .line 1700
    .end local v2    # "widthSpec":I
    .end local v5    # "heightSpec":I
    .end local v15    # "child":Landroid/view/View;
    .end local v55    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_3a2

    .line 1685
    .end local v51    # "startingHeight":I
    .end local v52    # "optimiseDimensions":Z
    .end local v53    # "sizeDependentWidgetsCount":I
    .end local v54    # "containerWrapHeight":Z
    .local v5, "startingHeight":I
    .restart local v7    # "optimiseDimensions":Z
    .restart local v8    # "sizeDependentWidgetsCount":I
    .restart local v10    # "containerWrapHeight":Z
    :cond_39a
    move/from16 v51, v5

    move/from16 v52, v7

    move/from16 v53, v8

    move/from16 v54, v10

    .line 1685
    .end local v5    # "startingHeight":I
    .end local v7    # "optimiseDimensions":Z
    .end local v8    # "sizeDependentWidgetsCount":I
    .end local v10    # "containerWrapHeight":Z
    .restart local v51    # "startingHeight":I
    .restart local v52    # "optimiseDimensions":Z
    .restart local v53    # "sizeDependentWidgetsCount":I
    .restart local v54    # "containerWrapHeight":Z
    :goto_3a2
    add-int/lit8 v25, v1, 0x1

    .line 1685
    .end local v1    # "i":I
    .restart local v25    # "i":I
    move/from16 v2, v49

    move/from16 v4, v50

    move/from16 v5, v51

    move/from16 v7, v52

    move/from16 v40, v53

    move/from16 v10, v54

    goto/16 :goto_31f

    .line 1705
    .end local v12    # "minWidth":I
    .end local v13    # "minHeight":I
    .end local v16    # "needSolverPass":Z
    .end local v25    # "i":I
    .end local v49    # "startingWidth":I
    .end local v50    # "containerWrapWidth":Z
    .end local v51    # "startingHeight":I
    .end local v52    # "optimiseDimensions":Z
    .end local v53    # "sizeDependentWidgetsCount":I
    .end local v54    # "containerWrapHeight":Z
    .local v2, "startingWidth":I
    .restart local v5    # "startingHeight":I
    .restart local v7    # "optimiseDimensions":Z
    .restart local v8    # "sizeDependentWidgetsCount":I
    :cond_3b2
    move/from16 v49, v2

    move/from16 v51, v5

    move/from16 v52, v7

    move/from16 v53, v8

    .line 1705
    .end local v2    # "startingWidth":I
    .end local v5    # "startingHeight":I
    .end local v7    # "optimiseDimensions":Z
    .end local v8    # "sizeDependentWidgetsCount":I
    .restart local v49    # "startingWidth":I
    .restart local v51    # "startingHeight":I
    .restart local v52    # "optimiseDimensions":Z
    .restart local v53    # "sizeDependentWidgetsCount":I
    goto :goto_3d3

    .line 1705
    .end local v31    # "heightSize":I
    .end local v32    # "validLastMeasure":Z
    .end local v33    # "sameSize":Z
    .end local v35    # "sameMode":Z
    .end local v36    # "sameMeasure":Z
    .end local v39    # "fitSizeWidth":Z
    .end local v49    # "startingWidth":I
    .end local v51    # "startingHeight":I
    .end local v52    # "optimiseDimensions":Z
    .end local v53    # "sizeDependentWidgetsCount":I
    .local v5, "startingWidth":I
    .local v6, "startingHeight":I
    .restart local v7    # "optimiseDimensions":Z
    .restart local v8    # "sizeDependentWidgetsCount":I
    .local v10, "heightSize":I
    .local v11, "validLastMeasure":Z
    .local v12, "sameSize":Z
    .local v13, "sameMode":Z
    .local v14, "sameMeasure":Z
    .local v15, "fitSizeWidth":Z
    .restart local v22    # "REMEASURES_B":I
    .restart local v27    # "childState":I
    :cond_3bb
    move/from16 v49, v5

    move/from16 v51, v6

    move/from16 v52, v7

    move/from16 v53, v8

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v39, v15

    move/from16 v6, v22

    move/from16 v14, v27

    .line 1705
    .end local v5    # "startingWidth":I
    .end local v7    # "optimiseDimensions":Z
    .end local v8    # "sizeDependentWidgetsCount":I
    .end local v10    # "heightSize":I
    .end local v11    # "validLastMeasure":Z
    .end local v12    # "sameSize":Z
    .end local v13    # "sameMode":Z
    .end local v15    # "fitSizeWidth":Z
    .end local v22    # "REMEASURES_B":I
    .end local v27    # "childState":I
    .local v6, "REMEASURES_B":I
    .local v14, "childState":I
    .restart local v31    # "heightSize":I
    .restart local v32    # "validLastMeasure":Z
    .restart local v33    # "sameSize":Z
    .restart local v35    # "sameMode":Z
    .restart local v36    # "sameMeasure":Z
    .restart local v39    # "fitSizeWidth":Z
    .restart local v49    # "startingWidth":I
    .restart local v51    # "startingHeight":I
    .restart local v52    # "optimiseDimensions":Z
    .restart local v53    # "sizeDependentWidgetsCount":I
    :goto_3d3
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    add-int/2addr v1, v3

    .line 1706
    .local v1, "androidLayoutWidth":I
    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v2

    add-int/2addr v2, v9

    .line 1708
    .local v2, "androidLayoutHeight":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_422

    .line 1709
    move/from16 v4, p1

    invoke-static {v1, v4, v14}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v5

    .line 1710
    .local v5, "resolvedWidthSize":I
    shl-int/lit8 v7, v14, 0x10

    move/from16 v8, p2

    invoke-static {v2, v8, v7}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v7

    .line 1712
    .local v7, "resolvedHeightSize":I
    const v10, 0xffffff

    and-int/2addr v5, v10

    .line 1713
    and-int/2addr v7, v10

    .line 1714
    iget v10, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1715
    iget v10, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1716
    iget-object v10, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v10

    const/high16 v11, 0x1000000

    if-eqz v10, :cond_411

    .line 1717
    or-int/2addr v5, v11

    .line 1719
    :cond_411
    iget-object v10, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v10

    if-eqz v10, :cond_41a

    .line 1720
    or-int/2addr v7, v11

    .line 1722
    :cond_41a
    invoke-virtual {v0, v5, v7}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1723
    iput v5, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 1724
    iput v7, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 1725
    .end local v5    # "resolvedWidthSize":I
    .end local v7    # "resolvedHeightSize":I
    goto :goto_42d

    .line 1726
    :cond_422
    move/from16 v4, p1

    move/from16 v8, p2

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1727
    iput v1, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 1728
    iput v2, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 1738
    :goto_42d
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 647
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_9

    .line 648
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 650
    :cond_9
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 651
    .local v0, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v1, p1, Landroid/support/constraint/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_2e

    .line 652
    instance-of v1, v0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v1, :cond_2e

    .line 653
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 654
    .local v1, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    new-instance v3, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 655
    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 656
    iget-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 659
    .end local v1    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_2e
    instance-of v1, p1, Landroid/support/constraint/ConstraintHelper;

    if-eqz v1, :cond_4d

    .line 660
    move-object v1, p1

    check-cast v1, Landroid/support/constraint/ConstraintHelper;

    .line 661
    .local v1, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v1}, Landroid/support/constraint/ConstraintHelper;->validateParams()V

    .line 662
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 663
    .local v3, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iput-boolean v2, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 664
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 665
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    .end local v1    # "helper":Landroid/support/constraint/ConstraintHelper;
    .end local v3    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_4d
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 669
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 670
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 677
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_9

    .line 678
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 680
    :cond_9
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 681
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 682
    .local v0, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 683
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 684
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 685
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 686
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 636
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 637
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_c

    .line 638
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 640
    :cond_c
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .line 3115
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3116
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 3118
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 3119
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 3120
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 3121
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 3122
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 3123
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 3124
    return-void
.end method

.method public setConstraintSet(Landroid/support/constraint/ConstraintSet;)V
    .registers 2
    .param p1, "set"    # Landroid/support/constraint/ConstraintSet;

    .line 1947
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 1948
    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "value2"    # Ljava/lang/Object;

    .line 533
    if-nez p1, :cond_37

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_37

    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_37

    .line 534
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez v0, :cond_15

    .line 535
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 537
    :cond_15
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 538
    .local v0, "name":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 539
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_27

    .line 540
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 542
    :cond_27
    move-object v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 543
    .local v2, "id":I
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v2    # "id":I
    :cond_37
    return-void
.end method

.method public setId(I)V
    .registers 4
    .param p1, "id"    # I

    .line 580
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 581
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 582
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 583
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3
    .param p1, "value"    # I

    .line 753
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    if-ne p1, v0, :cond_5

    .line 754
    return-void

    .line 756
    :cond_5
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 757
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 758
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3
    .param p1, "value"    # I

    .line 740
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_5

    .line 741
    return-void

    .line 743
    :cond_5
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 744
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 745
    return-void
.end method

.method public setMinHeight(I)V
    .registers 3
    .param p1, "value"    # I

    .line 707
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    if-ne p1, v0, :cond_5

    .line 708
    return-void

    .line 710
    :cond_5
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 711
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 712
    return-void
.end method

.method public setMinWidth(I)V
    .registers 3
    .param p1, "value"    # I

    .line 694
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    if-ne p1, v0, :cond_5

    .line 695
    return-void

    .line 697
    :cond_5
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 698
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 699
    return-void
.end method

.method public setOptimizationLevel(I)V
    .registers 3
    .param p1, "level"    # I

    .line 1898
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 1899
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .line 3132
    const/4 v0, 0x0

    return v0
.end method

.method protected solveLinearSystem(Ljava/lang/String;)V
    .registers 9
    .param p1, "reason"    # Ljava/lang/String;

    .line 1803
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 1804
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v0, :cond_13

    .line 1805
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v1, v0, Landroid/support/constraint/solver/Metrics;->resolutions:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    iput-wide v5, v0, Landroid/support/constraint/solver/Metrics;->resolutions:J

    .line 1807
    :cond_13
    return-void
.end method
