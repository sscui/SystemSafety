.class Landroid/support/v4/media/MediaBrowserCompatApi23;
.super Ljava/lang/Object;
.source "MediaBrowserCompatApi23.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;,
        Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static createItemCallback(Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;)Ljava/lang/Object;
    .registers 2
    .param p0, "callback"    # Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;

    .line 28
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;-><init>(Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;)V

    return-object v0
.end method

.method public static getItem(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p0, "browserObj"    # Ljava/lang/Object;
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "itemCallbackObj"    # Ljava/lang/Object;

    .line 32
    move-object v0, p0

    check-cast v0, Landroid/media/browse/MediaBrowser;

    move-object v1, p2

    check-cast v1, Landroid/media/browse/MediaBrowser$ItemCallback;

    invoke-virtual {v0, p1, v1}, Landroid/media/browse/MediaBrowser;->getItem(Ljava/lang/String;Landroid/media/browse/MediaBrowser$ItemCallback;)V

    .line 33
    return-void
.end method
