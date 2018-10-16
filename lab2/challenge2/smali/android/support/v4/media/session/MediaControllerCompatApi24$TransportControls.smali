.class public Landroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;
.super Landroid/support/v4/media/session/MediaControllerCompatApi23$TransportControls;
.source "MediaControllerCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransportControls"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi23$TransportControls;-><init>()V

    return-void
.end method

.method public static prepare(Ljava/lang/Object;)V
    .registers 2
    .param p0, "controlsObj"    # Ljava/lang/Object;

    .line 29
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->prepare()V

    .line 30
    return-void
.end method

.method public static prepareFromMediaId(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "controlsObj"    # Ljava/lang/Object;
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 33
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 34
    return-void
.end method

.method public static prepareFromSearch(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "controlsObj"    # Ljava/lang/Object;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 37
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method public static prepareFromUri(Ljava/lang/Object;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "controlsObj"    # Ljava/lang/Object;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 41
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 42
    return-void
.end method
