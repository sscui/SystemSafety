.class Landroid/support/v4/text/ICUCompatIcs;
.super Ljava/lang/Object;
.source "ICUCompatIcs.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompatIcs"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

.field private static sGetScriptMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 36
    :try_start_0
    const-string v0, "libcore.icu.ICU"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 37
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_26

    .line 38
    const-string v1, "getScript"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    .line 40
    const-string v1, "addLikelySubtags"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 49
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_26
    goto :goto_32

    .line 43
    :catch_27
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-object v1, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    .line 45
    sput-object v1, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    .line 48
    const-string v1, "ICUCompatIcs"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;

    .line 79
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "localeStr":Ljava/lang/String;
    :try_start_4
    sget-object v1, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_25

    .line 82
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 83
    .local v1, "args":[Ljava/lang/Object;
    sget-object v2, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_17} :catch_1f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_17} :catch_18

    return-object v2

    .line 89
    .end local v1    # "args":[Ljava/lang/Object;
    :catch_18
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "ICUCompatIcs"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_26

    .line 85
    :catch_1f
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "ICUCompatIcs"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_25
    nop

    .line 94
    :goto_26
    return-object v0
.end method

.method private static getScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "localeStr"    # Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_21

    .line 64
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 65
    .local v1, "args":[Ljava/lang/Object;
    sget-object v2, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_13} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_13} :catch_14

    return-object v2

    .line 71
    .end local v1    # "args":[Ljava/lang/Object;
    :catch_14
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "ICUCompatIcs"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_22

    .line 67
    :catch_1b
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "ICUCompatIcs"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_21
    nop

    .line 75
    :goto_22
    return-object v0
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 53
    invoke-static {p0}, Landroid/support/v4/text/ICUCompatIcs;->addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "localeWithSubtags":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 55
    invoke-static {v0}, Landroid/support/v4/text/ICUCompatIcs;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 58
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method
