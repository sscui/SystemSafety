.class Landroid/support/v4/media/session/MediaSessionCompatApi24;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi24.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;,
        Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSessionCompatApi24"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;)Ljava/lang/Object;
    .registers 2
    .param p0, "callback"    # Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;

    .line 33
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;)V

    return-object v0
.end method

.method public static getCallingPackage(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p0, "sessionObj"    # Ljava/lang/Object;

    .line 37
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 39
    .local v0, "session":Landroid/media/session/MediaSession;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getCallingPackage"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 40
    .local v1, "getCallingPackageMethod":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_18} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_18} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_18} :catch_19

    return-object v2

    .line 41
    .end local v1    # "getCallingPackageMethod":Ljava/lang/reflect/Method;
    :catch_19
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    const-string v2, "MediaSessionCompatApi24"

    const-string v3, "Cannot execute MediaSession.getCallingPackage()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    const/4 v1, 0x0

    return-object v1
.end method
