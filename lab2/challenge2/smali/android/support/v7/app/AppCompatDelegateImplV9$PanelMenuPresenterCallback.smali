.class final Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .registers 2

    .line 1839
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1840
    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 9
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 1844
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    .line 1845
    .local v0, "parentMenu":Landroid/view/Menu;
    const/4 v1, 0x1

    if-eq v0, p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    .line 1846
    .local v2, "isSubMenu":Z
    :goto_a
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    if-eqz v2, :cond_10

    move-object v4, v0

    goto :goto_11

    :cond_10
    move-object v4, p1

    :goto_11
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v3

    .line 1847
    .local v3, "panel":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v3, :cond_2b

    .line 1848
    if-eqz v2, :cond_26

    .line 1849
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget v5, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-virtual {v4, v5, v3, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V

    .line 1850
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v4, v3, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_2b

    .line 1854
    :cond_26
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v1, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1857
    :cond_2b
    :goto_2b
    return-void
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .registers 4
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .line 1861
    if-nez p1, :cond_1d

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-boolean v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v0, :cond_1d

    .line 1862
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1863
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1d

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1864
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1867
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method
