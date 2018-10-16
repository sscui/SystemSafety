.class public Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatApi16Impl;,
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatApi15Impl;,
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;


# instance fields
.field private final mRecord:Landroid/view/accessibility/AccessibilityRecord;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    .line 86
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatApi16Impl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatApi16Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;

    goto :goto_23

    .line 87
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1c

    .line 88
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatApi15Impl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatApi15Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;

    goto :goto_23

    .line 90
    :cond_1c
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;

    .line 92
    :goto_23
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    move-object v0, p1

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    iput-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    .line 108
    return-void
.end method

.method public static getMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;)I
    .registers 2
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 541
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;->getMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;)I

    move-result v0

    return v0
.end method

.method public static getMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;)I
    .registers 2
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 585
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;->getMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;)I

    move-result v0

    return v0
.end method

.method public static obtain()Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .registers 3
    .param p0, "record"    # Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityRecord;->obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V
    .registers 3
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p1, "maxScrollX"    # I

    .line 563
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 564
    return-void
.end method

.method public static setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V
    .registers 3
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p1, "maxScrollY"    # I

    .line 607
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 608
    return-void
.end method

.method public static setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V
    .registers 4
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 200
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 201
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 810
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 811
    return v0

    .line 813
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 814
    return v1

    .line 816
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 817
    return v1

    .line 819
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    .line 820
    .local v2, "other":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    iget-object v3, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v3, :cond_1f

    .line 821
    iget-object v3, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    if-eqz v3, :cond_2a

    .line 822
    return v1

    .line 824
    :cond_1f
    iget-object v3, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    iget-object v4, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 825
    return v1

    .line 827
    :cond_2a
    return v0
.end method

.method public getAddedCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 619
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getAddedCount()I

    move-result v0

    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 710
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 671
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 736
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItemIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 399
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getCurrentItemIndex()I

    move-result v0

    return v0
.end method

.method public getFromIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 428
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result v0

    return v0
.end method

.method public getImpl()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 373
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getMaxScrollX()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 531
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;)I

    move-result v0

    return v0
.end method

.method public getMaxScrollY()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 575
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;)I

    move-result v0

    return v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 762
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 645
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getRemovedCount()I

    move-result v0

    return v0
.end method

.method public getScrollX()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 483
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 507
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 698
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 458
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    move-result v0

    return v0
.end method

.method public getWindowId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 801
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_c
    return v0
.end method

.method public isChecked()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 269
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isPassword()Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 347
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 792
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->recycle()V

    .line 793
    return-void
.end method

.method public setAddedCount(I)V
    .registers 3
    .param p1, "addedCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 633
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 634
    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "beforeText"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 724
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 725
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "isChecked"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 258
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "className"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 685
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 686
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 750
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 751
    return-void
.end method

.method public setCurrentItemIndex(I)V
    .registers 3
    .param p1, "currentItemIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 413
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    .line 414
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "isEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 284
    return-void
.end method

.method public setFromIndex(I)V
    .registers 3
    .param p1, "fromIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 445
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 446
    return-void
.end method

.method public setFullScreen(Z)V
    .registers 3
    .param p1, "isFullScreen"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 335
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFullScreen(Z)V

    .line 336
    return-void
.end method

.method public setItemCount(I)V
    .registers 3
    .param p1, "itemCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 387
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 388
    return-void
.end method

.method public setMaxScrollX(I)V
    .registers 3
    .param p1, "maxScrollX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 553
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 554
    return-void
.end method

.method public setMaxScrollY(I)V
    .registers 3
    .param p1, "maxScrollY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 597
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 598
    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .registers 3
    .param p1, "parcelableData"    # Landroid/os/Parcelable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 776
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setParcelableData(Landroid/os/Parcelable;)V

    .line 777
    return-void
.end method

.method public setPassword(Z)V
    .registers 3
    .param p1, "isPassword"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 310
    return-void
.end method

.method public setRemovedCount(I)V
    .registers 3
    .param p1, "removedCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 659
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 660
    return-void
.end method

.method public setScrollX(I)V
    .registers 3
    .param p1, "scrollX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 495
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 496
    return-void
.end method

.method public setScrollY(I)V
    .registers 3
    .param p1, "scrollY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 519
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 520
    return-void
.end method

.method public setScrollable(Z)V
    .registers 3
    .param p1, "scrollable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 362
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .registers 3
    .param p1, "source"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    .line 160
    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .registers 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 181
    return-void
.end method

.method public setToIndex(I)V
    .registers 3
    .param p1, "toIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 471
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 472
    return-void
.end method
