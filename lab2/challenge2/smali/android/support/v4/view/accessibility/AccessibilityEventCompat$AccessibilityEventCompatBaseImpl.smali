.class Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventCompatBaseImpl;
.super Ljava/lang/Object;
.source "AccessibilityEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityEventCompatBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction(Landroid/view/accessibility/AccessibilityEvent;)I
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;)I
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public setAction(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "action"    # I

    .line 45
    return-void
.end method

.method public setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "types"    # I

    .line 31
    return-void
.end method

.method public setMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "granularity"    # I

    .line 38
    return-void
.end method
