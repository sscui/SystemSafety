.class public Landroid/support/v4/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

.field private mNestedScrollingParentTouch:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 57
    return-void
.end method

.method private getNestedScrollingParentForType(I)Landroid/view/ViewParent;
    .registers 3
    .param p1, "type"    # I

    .line 382
    packed-switch p1, :pswitch_data_c

    .line 388
    const/4 v0, 0x0

    return-object v0

    .line 386
    :pswitch_5
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    return-object v0

    .line 384
    :pswitch_8
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private setNestedScrollingParentForType(ILandroid/view/ViewParent;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "p"    # Landroid/view/ViewParent;

    .line 392
    packed-switch p1, :pswitch_data_c

    goto :goto_a

    .line 397
    :pswitch_4
    iput-object p2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    goto :goto_a

    .line 394
    :pswitch_7
    iput-object p2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    .line 395
    nop

    .line 400
    :goto_a
    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .registers 6
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .line 326
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 327
    invoke-direct {p0, v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 328
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_14

    .line 329
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v1

    return v1

    .line 333
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_14
    return v1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 5
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 346
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 347
    invoke-direct {p0, v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 348
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_14

    .line 349
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v1

    return v1

    .line 353
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_14
    return v1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "offsetInWindow"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 263
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 21
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "offsetInWindow"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "type"    # I

    move-object v0, p0

    move-object/from16 v1, p4

    .line 277
    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6d

    .line 278
    move/from16 v2, p5

    invoke-direct {v0, v2}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v10

    .line 279
    .local v10, "parent":Landroid/view/ViewParent;
    if-nez v10, :cond_13

    .line 280
    return v3

    .line 283
    :cond_13
    const/4 v11, 0x1

    if-nez p1, :cond_20

    if-eqz p2, :cond_19

    goto :goto_20

    .line 308
    :cond_19
    if-eqz v1, :cond_6f

    .line 309
    aput v3, v1, v3

    .line 310
    aput v3, v1, v11

    .line 310
    .end local v10    # "parent":Landroid/view/ViewParent;
    goto :goto_6f

    .line 284
    .restart local v10    # "parent":Landroid/view/ViewParent;
    :cond_20
    :goto_20
    const/4 v4, 0x0

    .line 285
    .local v4, "startX":I
    const/4 v5, 0x0

    .line 286
    .local v5, "startY":I
    if-eqz v1, :cond_2d

    .line 287
    iget-object v6, v0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 288
    aget v4, v1, v3

    .line 289
    aget v5, v1, v11

    .line 292
    .end local v4    # "startX":I
    .end local v5    # "startY":I
    .local v12, "startX":I
    .local v13, "startY":I
    :cond_2d
    move v12, v4

    move v13, v5

    if-nez p3, :cond_3e

    .line 293
    iget-object v5, v0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-nez v5, :cond_3a

    .line 294
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, v0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 296
    :cond_3a
    iget-object v4, v0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 298
    .end local p3    # "consumed":[I
    .local v4, "consumed":[I
    move-object v14, v4

    goto :goto_40

    .line 298
    .end local v4    # "consumed":[I
    .restart local p3    # "consumed":[I
    :cond_3e
    move-object/from16 v14, p3

    .line 298
    .end local p3    # "consumed":[I
    .local v14, "consumed":[I
    :goto_40
    aput v3, v14, v3

    .line 299
    aput v3, v14, v11

    .line 300
    iget-object v5, v0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move-object v4, v10

    move/from16 v6, p1

    move/from16 v7, p2

    move-object v8, v14

    move v9, v2

    invoke-static/range {v4 .. v9}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 302
    if-eqz v1, :cond_61

    .line 303
    iget-object v4, v0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 304
    aget v4, v1, v3

    sub-int/2addr v4, v12

    aput v4, v1, v3

    .line 305
    aget v4, v1, v11

    sub-int/2addr v4, v13

    aput v4, v1, v11

    .line 307
    :cond_61
    aget v4, v14, v3

    if-nez v4, :cond_6c

    aget v4, v14, v11

    if-eqz v4, :cond_6a

    goto :goto_6c

    :cond_6a
    const/4 v11, 0x0

    nop

    :cond_6c
    :goto_6c
    return v11

    .line 313
    .end local v10    # "parent":Landroid/view/ViewParent;
    .end local v12    # "startX":I
    .end local v13    # "startY":I
    .end local v14    # "consumed":[I
    .restart local p3    # "consumed":[I
    :cond_6d
    move/from16 v2, p5

    :cond_6f
    :goto_6f
    return v3
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 13
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 203
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .registers 22
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "type"    # I

    move-object v0, p0

    move-object/from16 v1, p5

    .line 219
    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_54

    .line 220
    move/from16 v2, p6

    invoke-direct {v0, v2}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v11

    .line 221
    .local v11, "parent":Landroid/view/ViewParent;
    if-nez v11, :cond_13

    .line 222
    return v3

    .line 225
    :cond_13
    const/4 v12, 0x1

    if-nez p1, :cond_24

    if-nez p2, :cond_24

    if-nez p3, :cond_24

    if-eqz p4, :cond_1d

    goto :goto_24

    .line 243
    :cond_1d
    if-eqz v1, :cond_56

    .line 245
    aput v3, v1, v3

    .line 246
    aput v3, v1, v12

    .line 246
    .end local v11    # "parent":Landroid/view/ViewParent;
    goto :goto_56

    .line 226
    .restart local v11    # "parent":Landroid/view/ViewParent;
    :cond_24
    :goto_24
    const/4 v4, 0x0

    .line 227
    .local v4, "startX":I
    const/4 v5, 0x0

    .line 228
    .local v5, "startY":I
    if-eqz v1, :cond_31

    .line 229
    iget-object v6, v0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 230
    aget v4, v1, v3

    .line 231
    aget v5, v1, v12

    .line 234
    .end local v4    # "startX":I
    .end local v5    # "startY":I
    .local v13, "startX":I
    .local v14, "startY":I
    :cond_31
    move v13, v4

    move v14, v5

    iget-object v5, v0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move-object v4, v11

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move v10, v2

    invoke-static/range {v4 .. v10}, Landroid/support/v4/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    .line 237
    if-eqz v1, :cond_53

    .line 238
    iget-object v4, v0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 239
    aget v4, v1, v3

    sub-int/2addr v4, v13

    aput v4, v1, v3

    .line 240
    aget v3, v1, v12

    sub-int/2addr v3, v14

    aput v3, v1, v12

    .line 242
    :cond_53
    return v12

    .line 249
    .end local v11    # "parent":Landroid/view/ViewParent;
    .end local v13    # "startX":I
    .end local v14    # "startY":I
    :cond_54
    move/from16 v2, p6

    :cond_56
    :goto_56
    return v3
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 113
    invoke-direct {p0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .line 85
    iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 365
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 366
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 378
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 379
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 69
    iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-eqz v0, :cond_9

    .line 70
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 72
    :cond_9
    iput-boolean p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 73
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3
    .param p1, "axes"    # I

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(II)Z
    .registers 7
    .param p1, "axes"    # I
    .param p2, "type"    # I

    .line 144
    invoke-virtual {p0, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 146
    return v1

    .line 148
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 149
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 150
    .local v0, "p":Landroid/view/ViewParent;
    iget-object v2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 151
    .local v2, "child":Landroid/view/View;
    :goto_16
    if-eqz v0, :cond_35

    .line 152
    iget-object v3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Landroid/support/v4/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 153
    invoke-direct {p0, p2, v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    .line 154
    iget-object v3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Landroid/support/v4/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    .line 155
    return v1

    .line 157
    :cond_29
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_30

    .line 158
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 160
    :cond_30
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_16

    .line 163
    .end local v0    # "p":Landroid/view/ViewParent;
    .end local v2    # "child":Landroid/view/View;
    :cond_35
    const/4 v0, 0x0

    return v0
.end method

.method public stopNestedScroll()V
    .registers 2

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    .line 175
    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 4
    .param p1, "type"    # I

    .line 185
    invoke-direct {p0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 186
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_f

    .line 187
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroid/support/v4/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 188
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    .line 190
    :cond_f
    return-void
.end method
