.class Landroid/support/v7/app/AppCompatViewInflater;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatViewInflater"

.field private static final sClassPrefixList:[Ljava/lang/String;

.field private static final sConstructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sOnClickAttrs:[I


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    .line 65
    new-array v0, v3, [I

    const v1, 0x101026f

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sOnClickAttrs:[I

    .line 67
    const-string v0, "android.widget."

    const-string v1, "android.view."

    const-string v2, "android.webkit."

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 269
    return-void
.end method

.method private checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 196
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_15

    .line 197
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasOnClickListeners(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_2e

    .line 204
    :cond_15
    sget-object v1, Landroid/support/v7/app/AppCompatViewInflater;->sOnClickAttrs:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 205
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "handlerName":Ljava/lang/String;
    if-eqz v2, :cond_2a

    .line 207
    new-instance v3, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;

    invoke-direct {v3, p1, v2}, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    :cond_2a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    return-void

    .line 201
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "handlerName":Ljava/lang/String;
    :cond_2e
    :goto_2e
    return-void
.end method

.method private createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 214
    sget-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 217
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    if-nez v0, :cond_3a

    .line 219
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz p3, :cond_20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_20
    move-object v2, p2

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/view/View;

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 222
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    sget-object v2, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    move-object v0, v2

    .line 223
    sget-object v2, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    goto :goto_3a

    .line 227
    :catch_38
    move-exception v1

    goto :goto_47

    .line 225
    :cond_3a
    :goto_3a
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 226
    iget-object v1, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_46} :catch_38

    return-object v1

    .line 227
    :goto_47
    nop

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method

.method private createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 158
    const-string v0, "view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 159
    const-string v0, "class"

    invoke-interface {p3, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 163
    :cond_f
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_11
    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 164
    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p3, v3, v0

    .line 166
    const/4 v3, -0x1

    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v3, v4, :cond_49

    .line 167
    const/4 v3, 0x0

    .line 167
    .local v3, "i":I
    :goto_23
    sget-object v4, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3f

    .line 168
    sget-object v4, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_30} :catch_60
    .catchall {:try_start_11 .. :try_end_30} :catchall_56

    .line 169
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_3c

    .line 170
    nop

    .line 183
    iget-object v5, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v5, v2

    .line 184
    iget-object v2, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v2, v0

    return-object v4

    .line 167
    .end local v4    # "view":Landroid/view/View;
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 173
    .end local v3    # "i":I
    :cond_3f
    nop

    .line 183
    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 184
    iget-object v2, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v2, v0

    return-object v1

    .line 175
    :cond_49
    :try_start_49
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4d} :catch_60
    .catchall {:try_start_49 .. :try_end_4d} :catchall_56

    .line 183
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v4, v2

    .line 184
    iget-object v2, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v2, v0

    return-object v3

    .line 183
    :catchall_56
    move-exception v3

    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v4, v2

    .line 184
    iget-object v2, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v2, v0

    throw v3

    .line 177
    :catch_60
    move-exception v3

    .line 180
    .local v3, "e":Ljava/lang/Exception;
    nop

    .line 183
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v4, v2

    .line 184
    iget-object v2, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v2, v0

    return-object v1
.end method

.method private static themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "useAndroidTheme"    # Z
    .param p3, "useAppTheme"    # Z

    .line 239
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->View:[I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 240
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 241
    .local v2, "themeId":I
    if-eqz p2, :cond_10

    .line 243
    sget v3, Landroid/support/v7/appcompat/R$styleable;->View_android_theme:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 245
    :cond_10
    if-eqz p3, :cond_23

    if-nez v2, :cond_23

    .line 247
    sget v3, Landroid/support/v7/appcompat/R$styleable;->View_theme:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 249
    if-eqz v2, :cond_23

    .line 250
    const-string v1, "AppCompatViewInflater"

    const-string v3, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_23
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 256
    if-eqz v2, :cond_3b

    instance-of v1, p0, Landroid/support/v7/view/ContextThemeWrapper;

    if-eqz v1, :cond_35

    move-object v1, p0

    check-cast v1, Landroid/support/v7/view/ContextThemeWrapper;

    .line 257
    invoke-virtual {v1}, Landroid/support/v7/view/ContextThemeWrapper;->getThemeResId()I

    move-result v1

    if-eq v1, v2, :cond_3b

    .line 260
    :cond_35
    new-instance v1, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v1

    .line 262
    :cond_3b
    return-object p0
.end method


# virtual methods
.method public final createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
    .registers 13
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "inheritContext"    # Z
    .param p6, "readAndroidTheme"    # Z
    .param p7, "readAppTheme"    # Z
    .param p8, "wrapContext"    # Z

    .line 83
    move-object v0, p3

    .line 87
    .local v0, "originalContext":Landroid/content/Context;
    if-eqz p5, :cond_9

    if-eqz p1, :cond_9

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 90
    :cond_9
    if-nez p6, :cond_d

    if-eqz p7, :cond_11

    .line 92
    :cond_d
    invoke-static {p3, p4, p6, p7}, Landroid/support/v7/app/AppCompatViewInflater;->themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    move-result-object p3

    .line 94
    :cond_11
    if-eqz p8, :cond_17

    .line 95
    invoke-static {p3}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    .line 98
    :cond_17
    const/4 v1, 0x0

    .line 101
    .local v1, "view":Landroid/view/View;
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_11a

    goto/16 :goto_ab

    :sswitch_22
    const-string v3, "Button"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    const/4 v2, 0x2

    goto/16 :goto_ab

    :sswitch_2d
    const-string v3, "EditText"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    const/4 v2, 0x3

    goto/16 :goto_ab

    :sswitch_38
    const-string v3, "CheckBox"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    const/4 v2, 0x6

    goto/16 :goto_ab

    :sswitch_43
    const-string v3, "AutoCompleteTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    const/16 v2, 0x9

    goto :goto_ab

    :sswitch_4e
    const-string v3, "ImageView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    const/4 v2, 0x1

    goto :goto_ab

    :sswitch_58
    const-string v3, "RadioButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    const/4 v2, 0x7

    goto :goto_ab

    :sswitch_62
    const-string v3, "Spinner"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    const/4 v2, 0x4

    goto :goto_ab

    :sswitch_6c
    const-string v3, "SeekBar"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    const/16 v2, 0xc

    goto :goto_ab

    :sswitch_77
    const-string v3, "ImageButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    const/4 v2, 0x5

    goto :goto_ab

    :sswitch_81
    const-string v3, "TextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    const/4 v2, 0x0

    goto :goto_ab

    :sswitch_8b
    const-string v3, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    const/16 v2, 0xa

    goto :goto_ab

    :sswitch_96
    const-string v3, "CheckedTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    const/16 v2, 0x8

    goto :goto_ab

    :sswitch_a1
    const-string v3, "RatingBar"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    const/16 v2, 0xb

    :cond_ab
    :goto_ab
    packed-switch v2, :pswitch_data_150

    goto/16 :goto_10c

    .line 139
    :pswitch_b0
    new-instance v2, Landroid/support/v7/widget/AppCompatSeekBar;

    invoke-direct {v2, p3, p4}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v1, v2

    goto/16 :goto_10c

    .line 136
    :pswitch_b8
    new-instance v2, Landroid/support/v7/widget/AppCompatRatingBar;

    invoke-direct {v2, p3, p4}, Landroid/support/v7/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v1, v2

    .line 137
    goto :goto_10c

    .line 133
    :pswitch_bf
    new-instance v2, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;

    invoke-direct {v2, p3, p4}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v1, v2

    .line 134
    goto :goto_10c

    .line 130
    :pswitch_c6
    new-instance v2, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;

    invoke-direct {v2, p3, p4}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v1, v2

    .line 131
    goto :goto_10c

    .line 127
    :pswitch_cd
    new-instance v2, Landroid/support/v7/widget/AppCompatCheckedTextView;

    invoke-direct {v2, p3, p4}, Landroid/support/v7/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v1, v2

    .line 128
    goto :goto_10c

    .line 124
    :pswitch_d4
    new-instance v2, Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-direct {v2, p3, p4}, Landroid/support/v7/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v1, v2

    .line 125
    goto :goto_10c

    .line 121
    :pswitch_db
    new-instance v2, Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-direct {v2, p3, p4}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v1, v2

    .line 122
    goto :goto_10c

    .line 118
    :pswitch_e2
    new-instance v2, Landroid/support/v7/widget/AppCompatImageButton;

    invoke-direct {v2, p3, p4}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v1, v2

    .line 119
    goto :goto_10c

    .line 115
    :pswitch_e9
    new-instance v2, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-direct {v2, p3, p4}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v1, v2

    .line 116
    goto :goto_10c

    .line 112
    :pswitch_f0
    new-instance v2, Landroid/support/v7/widget/AppCompatEditText;

    invoke-direct {v2, p3, p4}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v1, v2

    .line 113
    goto :goto_10c

    .line 109
    :pswitch_f7
    new-instance v2, Landroid/support/v7/widget/AppCompatButton;

    invoke-direct {v2, p3, p4}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v1, v2

    .line 110
    goto :goto_10c

    .line 106
    :pswitch_fe
    new-instance v2, Landroid/support/v7/widget/AppCompatImageView;

    invoke-direct {v2, p3, p4}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v1, v2

    .line 107
    goto :goto_10c

    .line 103
    :pswitch_105
    new-instance v2, Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {v2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v1, v2

    .line 104
    nop

    .line 143
    :goto_10c
    if-nez v1, :cond_114

    if-eq v0, p3, :cond_114

    .line 146
    invoke-direct {p0, p3, p2, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 149
    :cond_114
    if-eqz v1, :cond_119

    .line 151
    invoke-direct {p0, v1, p4}, Landroid/support/v7/app/AppCompatViewInflater;->checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 154
    :cond_119
    return-object v1

    :sswitch_data_11a
    .sparse-switch
        -0x7404ceea -> :sswitch_a1
        -0x56c015e7 -> :sswitch_96
        -0x503aa7ad -> :sswitch_8b
        -0x37f7066e -> :sswitch_81
        -0x37e04bb3 -> :sswitch_77
        -0x274065a5 -> :sswitch_6c
        -0x1440b607 -> :sswitch_62
        0x2e46a6ed -> :sswitch_58
        0x431b5280 -> :sswitch_4e
        0x5445f9ba -> :sswitch_43
        0x5f7507c3 -> :sswitch_38
        0x63577677 -> :sswitch_2d
        0x77471352 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_105
        :pswitch_fe
        :pswitch_f7
        :pswitch_f0
        :pswitch_e9
        :pswitch_e2
        :pswitch_db
        :pswitch_d4
        :pswitch_cd
        :pswitch_c6
        :pswitch_bf
        :pswitch_b8
        :pswitch_b0
    .end packed-switch
.end method
