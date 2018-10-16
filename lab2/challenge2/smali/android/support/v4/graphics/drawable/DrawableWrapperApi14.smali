.class Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableWrapperApi14.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/support/v4/graphics/drawable/DrawableWrapper;
.implements Landroid/support/v4/graphics/drawable/TintAwareDrawable;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperStateBase;,
        Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;
    }
.end annotation


# static fields
.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private mColorFilterSet:Z

.field private mCurrentColor:I

.field private mCurrentMode:Landroid/graphics/PorterDuff$Mode;

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z

.field mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 64
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    .line 66
    invoke-virtual {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "state"    # Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    .line 55
    invoke-direct {p0, p2}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->updateLocalState(Landroid/content/res/Resources;)V

    .line 56
    return-void
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    iget-object v0, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_15

    .line 76
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    iget-object v0, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->newDrawableFromState(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_15
    return-void
.end method

.method private updateTint([I)Z
    .registers 7
    .param p1, "state"    # [I

    .line 288
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->isCompatTintEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 290
    return v1

    .line 293
    :cond_8
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    iget-object v0, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    .line 294
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 296
    .local v2, "tintMode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v0, :cond_35

    if-eqz v2, :cond_35

    .line 297
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v0, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 298
    .local v3, "color":I
    iget-boolean v4, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mColorFilterSet:Z

    if-eqz v4, :cond_2a

    iget v4, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mCurrentColor:I

    if-ne v3, v4, :cond_2a

    iget-object v4, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mCurrentMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v2, v4, :cond_29

    goto :goto_2a

    .line 305
    .end local v3    # "color":I
    :cond_29
    goto :goto_3a

    .line 299
    .restart local v3    # "color":I
    :cond_2a
    :goto_2a
    invoke-virtual {p0, v3, v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 300
    iput v3, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mCurrentColor:I

    .line 301
    iput-object v2, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mCurrentMode:Landroid/graphics/PorterDuff$Mode;

    .line 302
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mColorFilterSet:Z

    .line 303
    return v1

    .line 306
    .end local v3    # "color":I
    :cond_35
    iput-boolean v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mColorFilterSet:Z

    .line 307
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->clearColorFilter()V

    .line 309
    :goto_3a
    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 96
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    return-void
.end method

.method public getChangingConfigurations()I
    .registers 3

    .line 113
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    .line 114
    invoke-virtual {v1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->getChangingConfigurations()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 206
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    invoke-virtual {v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 207
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mChangingConfigurations:I

    .line 208
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    return-object v0

    .line 210
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 180
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 200
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .registers 2

    .line 155
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public final getWrappedDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 317
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 246
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->invalidateSelf()V

    .line 247
    return-void
.end method

.method protected isCompatTintEnabled()Z
    .registers 2

    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .registers 3

    .line 140
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->isCompatTintEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    iget-object v0, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 143
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    :goto_10
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_20

    :cond_18
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_20
    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1
.end method

.method public jumpToCurrentState()V
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 92
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 215
    iget-boolean v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mMutated:Z

    if-nez v0, :cond_30

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_30

    .line 216
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    .line 217
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    .line 218
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 220
    :cond_19
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    if-eqz v0, :cond_2d

    .line 221
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    iput-object v1, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 223
    :cond_2d
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mMutated:Z

    .line 225
    :cond_30
    return-object p0
.end method

.method mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 238
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperStateBase;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperStateBase;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected newDrawableFromState(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "state"    # Landroid/graphics/drawable/Drawable$ConstantState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 86
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 101
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 102
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 104
    :cond_9
    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 3
    .param p1, "level"    # I

    .line 267
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 254
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 255
    return-void
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .line 130
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 131
    return-void
.end method

.method public setChangingConfigurations(I)V
    .registers 3
    .param p1, "configs"    # I

    .line 108
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 109
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .line 135
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 136
    return-void
.end method

.method public setDither(Z)V
    .registers 3
    .param p1, "dither"    # Z

    .line 120
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 121
    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3
    .param p1, "filter"    # Z

    .line 125
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 126
    return-void
.end method

.method public setState([I)Z
    .registers 4
    .param p1, "stateSet"    # [I

    .line 148
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 149
    .local v0, "handled":Z
    invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->updateTint([I)Z

    move-result v1

    if-nez v1, :cond_11

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    move v0, v1

    .line 150
    return v0
.end method

.method public setTint(I)V
    .registers 3
    .param p1, "tint"    # I

    .line 272
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 273
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 277
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    iput-object p1, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    .line 278
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->updateTint([I)Z

    .line 279
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 283
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    iput-object p1, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 284
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->updateTint([I)Z

    .line 285
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 165
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public final setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 325
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 326
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 329
    :cond_a
    iput-object p1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 331
    if-eqz p1, :cond_3a

    .line 332
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 334
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->setVisible(ZZ)Z

    .line 335
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->setState([I)Z

    .line 336
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->setLevel(I)Z

    .line 337
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->setBounds(Landroid/graphics/Rect;)V

    .line 338
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    if-eqz v0, :cond_3a

    .line 339
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 343
    :cond_3a
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->invalidateSelf()V

    .line 344
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 262
    invoke-virtual {p0, p2}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method
