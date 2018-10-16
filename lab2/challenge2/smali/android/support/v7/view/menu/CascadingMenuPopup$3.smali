.class Landroid/support/v7/view/menu/CascadingMenuPopup$3;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/support/v7/widget/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v7/view/menu/CascadingMenuPopup;

    .line 135
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemHoverEnter(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .registers 13
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 148
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 151
    const/4 v0, -0x1

    .line 152
    .local v0, "menuIndex":I
    const/4 v2, 0x0

    .line 152
    .local v2, "i":I
    iget-object v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    iget-object v3, v3, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 152
    .local v3, "count":I
    :goto_12
    if-ge v2, v3, :cond_27

    .line 153
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    iget-object v4, v4, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v4, v4, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_24

    .line 154
    move v0, v2

    .line 155
    goto :goto_27

    .line 152
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 159
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_27
    :goto_27
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2b

    .line 160
    return-void

    .line 164
    :cond_2b
    add-int/lit8 v2, v0, 0x1

    .line 165
    .local v2, "nextIndex":I
    iget-object v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    iget-object v3, v3, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 166
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    iget-object v1, v1, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 166
    .local v1, "nextInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    goto :goto_43

    .line 168
    .end local v1    # "nextInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_42
    nop

    .line 171
    .restart local v1    # "nextInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :goto_43
    new-instance v3, Landroid/support/v7/view/menu/CascadingMenuPopup$3$1;

    invoke-direct {v3, p0, v1, p2, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup$3$1;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup$3;Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 190
    .local v3, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xc8

    add-long v8, v4, v6

    .line 191
    .local v8, "uptimeMillis":J
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    iget-object v4, v4, Landroid/support/v7/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, p1, v8, v9}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 192
    return-void
.end method

.method public onItemHoverExit(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 141
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$3;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 142
    return-void
.end method
