.class public final Landroid/support/v4/text/ICUCompat;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/ICUCompat$ICUCompatApi21Impl;,
        Landroid/support/v4/text/ICUCompat$ICUCompatBaseImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 44
    new-instance v0, Landroid/support/v4/text/ICUCompat$ICUCompatApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/text/ICUCompat$ICUCompatApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/text/ICUCompat;->IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatBaseImpl;

    goto :goto_15

    .line 46
    :cond_e
    new-instance v0, Landroid/support/v4/text/ICUCompat$ICUCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/text/ICUCompat$ICUCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/text/ICUCompat;->IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatBaseImpl;

    .line 48
    :goto_15
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 75
    sget-object v0, Landroid/support/v4/text/ICUCompat;->IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/text/ICUCompat$ICUCompatBaseImpl;->maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
