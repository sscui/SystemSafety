.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutMode(Landroid/view/ViewGroup;)I
    .registers 3
    .param p1, "group"    # Landroid/view/ViewGroup;

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .registers 3
    .param p1, "group"    # Landroid/view/ViewGroup;

    .line 65
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_c

    .line 66
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/NestedScrollingParent;

    invoke-interface {v0}, Landroid/support/v4/view/NestedScrollingParent;->getNestedScrollAxes()I

    move-result v0

    return v0

    .line 68
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isTransitionGroup(Landroid/view/ViewGroup;)Z
    .registers 3
    .param p1, "group"    # Landroid/view/ViewGroup;

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public setLayoutMode(Landroid/view/ViewGroup;I)V
    .registers 3
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "mode"    # I

    .line 55
    return-void
.end method

.method public setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .registers 3
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "isTransitionGroup"    # Z

    .line 58
    return-void
.end method
