.class Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;
.source "DrawableCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableCompatApi17Impl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawableCompatApi17"

.field private static sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sGetLayoutDirectionMethodFetched:Z

.field private static sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sSetLayoutDirectionMethodFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .registers 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 163
    sget-boolean v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethodFetched:Z

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 165
    const/4 v0, 0x1

    :try_start_6
    const-class v2, Landroid/graphics/drawable/Drawable;

    const-string v3, "getLayoutDirection"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 166
    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_17} :catch_18

    .line 169
    goto :goto_20

    .line 167
    :catch_18
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "DrawableCompatApi17"

    const-string v4, "Failed to retrieve getLayoutDirection() method"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_20
    sput-boolean v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethodFetched:Z

    .line 173
    :cond_22
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_40

    .line 175
    :try_start_26
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_34} :catch_35

    return v0

    .line 176
    :catch_35
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DrawableCompatApi17"

    const-string v3, "Failed to invoke getLayoutDirection() via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    const/4 v2, 0x0

    sput-object v2, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_40
    return v1
.end method

.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .registers 9
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "layoutDirection"    # I

    .line 138
    sget-boolean v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethodFetched:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_26

    .line 140
    :try_start_6
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v3, "setLayoutDirection"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 141
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 142
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1b} :catch_1c

    .line 145
    goto :goto_24

    .line 143
    :catch_1c
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "DrawableCompatApi17"

    const-string v4, "Failed to retrieve setLayoutDirection(int) method"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_24
    sput-boolean v2, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethodFetched:Z

    .line 149
    :cond_26
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_43

    .line 151
    :try_start_2a
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_37} :catch_38

    .line 152
    return v2

    .line 153
    :catch_38
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DrawableCompatApi17"

    const-string v3, "Failed to invoke setLayoutDirection(int) via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    const/4 v2, 0x0

    sput-object v2, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_43
    return v1
.end method
