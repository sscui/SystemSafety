.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatApi15Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityRecordCompatApi15Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;)I
    .registers 3
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 57
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollX()I

    move-result v0

    return v0
.end method

.method public getMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;)I
    .registers 3
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 62
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollY()I

    move-result v0

    return v0
.end method

.method public setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V
    .registers 3
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p2, "maxScrollX"    # I

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 68
    return-void
.end method

.method public setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V
    .registers 3
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p2, "maxScrollY"    # I

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 73
    return-void
.end method
