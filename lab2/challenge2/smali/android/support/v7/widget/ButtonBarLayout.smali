.class public Landroid/support/v7/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ALLOW_STACKING_MIN_HEIGHT_DP:I = 0x140

.field private static final PEEK_BUTTON_DP:I = 0x10


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I

.field private mMinimumHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mMinimumHeight:I

    .line 53
    nop

    .line 54
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v2, 0x140

    if-lt v1, v2, :cond_1a

    const/4 v0, 0x1

    nop

    .line 55
    .local v0, "allowStackingDefault":Z
    :cond_1a
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 56
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 58
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void
.end method

.method private getNextVisibleChildIndex(I)I
    .registers 5
    .param p1, "index"    # I

    .line 145
    move v0, p1

    .line 145
    .local v0, "i":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    .line 145
    .local v1, "count":I
    :goto_5
    if-ge v0, v1, :cond_15

    .line 146
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12

    .line 147
    return v0

    .line 145
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 150
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method private isStacked()Z
    .registers 3

    .line 176
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method private setStacked(Z)V
    .registers 6
    .param p1, "stacked"    # Z

    .line 159
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ButtonBarLayout;->setOrientation(I)V

    .line 160
    if-eqz p1, :cond_7

    const/4 v0, 0x5

    goto :goto_9

    :cond_7
    const/16 v0, 0x50

    :goto_9
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->setGravity(I)V

    .line 162
    sget v0, Landroid/support/v7/appcompat/R$id;->spacer:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "spacer":Landroid/view/View;
    if-eqz v0, :cond_1d

    .line 164
    if-eqz p1, :cond_19

    const/16 v1, 0x8

    goto :goto_1a

    :cond_19
    const/4 v1, 0x4

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_1d
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    .line 170
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x2

    .line 170
    .local v2, "i":I
    :goto_23
    if-ltz v2, :cond_2f

    .line 171
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 170
    add-int/lit8 v2, v2, -0x1

    goto :goto_23

    .line 173
    .end local v2    # "i":I
    :cond_2f
    return-void
.end method


# virtual methods
.method public getMinimumHeight()I
    .registers 3

    .line 155
    iget v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mMinimumHeight:I

    invoke-super {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 73
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 75
    .local v0, "widthSize":I
    iget-boolean v1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 76
    iget v1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v0, v1, :cond_16

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 78
    invoke-direct {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 81
    :cond_16
    iput v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 84
    :cond_18
    const/4 v1, 0x0

    .line 90
    .local v1, "needsRemeasure":Z
    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_2f

    .line 91
    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 94
    .local v3, "initialWidthMeasureSpec":I
    const/4 v1, 0x1

    goto :goto_30

    .line 96
    .end local v3    # "initialWidthMeasureSpec":I
    :cond_2f
    move v3, p1

    .line 99
    .restart local v3    # "initialWidthMeasureSpec":I
    :goto_30
    invoke-super {p0, v3, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 101
    iget-boolean v4, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v4, :cond_52

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v4

    if-nez v4, :cond_52

    .line 104
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v4

    .line 105
    .local v4, "measuredWidth":I
    const/high16 v5, -0x1000000

    and-int/2addr v5, v4

    .line 106
    .local v5, "measuredWidthState":I
    const/high16 v6, 0x1000000

    const/4 v7, 0x1

    if-ne v5, v6, :cond_4b

    const/4 v6, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v6, 0x0

    .line 108
    .local v6, "stack":Z
    :goto_4c
    if-eqz v6, :cond_52

    .line 109
    invoke-direct {p0, v7}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 111
    const/4 v1, 0x1

    .line 115
    .end local v4    # "measuredWidth":I
    .end local v5    # "measuredWidthState":I
    .end local v6    # "stack":Z
    :cond_52
    if-eqz v1, :cond_57

    .line 116
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 121
    :cond_57
    const/4 v4, 0x0

    .line 122
    .local v4, "minHeight":I
    invoke-direct {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v2

    .line 123
    .local v2, "firstVisible":I
    if-ltz v2, :cond_a5

    .line 124
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 125
    .local v5, "firstButton":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 126
    .local v6, "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 128
    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v7

    if-eqz v7, :cond_a0

    .line 129
    add-int/lit8 v7, v2, 0x1

    invoke-direct {p0, v7}, Landroid/support/v7/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v7

    .line 130
    .local v7, "secondVisible":I
    if-ltz v7, :cond_9f

    .line 131
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    const/high16 v9, 0x41800000    # 16.0f

    .line 132
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    mul-float v10, v10, v9

    float-to-int v9, v10

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 134
    .end local v7    # "secondVisible":I
    :cond_9f
    goto :goto_a5

    .line 135
    :cond_a0
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v4, v7

    .line 139
    .end local v5    # "firstButton":Landroid/view/View;
    .end local v6    # "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a5
    :goto_a5
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    if-eq v5, v4, :cond_ae

    .line 140
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/ButtonBarLayout;->setMinimumHeight(I)V

    .line 142
    :cond_ae
    return-void
.end method

.method public setAllowStacking(Z)V
    .registers 4
    .param p1, "allowStacking"    # Z

    .line 62
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_18

    .line 63
    iput-boolean p1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 64
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 67
    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->requestLayout()V

    .line 69
    :cond_18
    return-void
.end method
