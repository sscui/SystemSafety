.class public Landroid/support/v4/content/pm/ShortcutInfoCompat;
.super Ljava/lang/Object;
.source "ShortcutInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mDisabledMessage:Ljava/lang/CharSequence;

.field private mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

.field private mId:Ljava/lang/String;

.field private mIntents:[Landroid/content/Intent;

.field private mLabel:Ljava/lang/CharSequence;

.field private mLongLabel:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/pm/ShortcutInfoCompat$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/support/v4/content/pm/ShortcutInfoCompat$1;

    .line 35
    invoke-direct {p0}, Landroid/support/v4/content/pm/ShortcutInfoCompat;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/content/pm/ShortcutInfoCompat;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/content/pm/ShortcutInfoCompat;

    .line 35
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Landroid/support/v4/content/pm/ShortcutInfoCompat;Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/content/pm/ShortcutInfoCompat;
    .param p1, "x1"    # Landroid/content/Context;

    .line 35
    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$202(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/content/pm/ShortcutInfoCompat;
    .param p1, "x1"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Landroid/support/v4/content/pm/ShortcutInfoCompat;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/content/pm/ShortcutInfoCompat;

    .line 35
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$302(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/content/pm/ShortcutInfoCompat;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 35
    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$402(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/content/pm/ShortcutInfoCompat;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 35
    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$502(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/content/pm/ShortcutInfoCompat;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 35
    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$600(Landroid/support/v4/content/pm/ShortcutInfoCompat;)[Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/content/pm/ShortcutInfoCompat;

    .line 35
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$602(Landroid/support/v4/content/pm/ShortcutInfoCompat;[Landroid/content/Intent;)[Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/content/pm/ShortcutInfoCompat;
    .param p1, "x1"    # [Landroid/content/Intent;

    .line 35
    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$702(Landroid/support/v4/content/pm/ShortcutInfoCompat;Landroid/support/v4/graphics/drawable/IconCompat;)Landroid/support/v4/graphics/drawable/IconCompat;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/content/pm/ShortcutInfoCompat;
    .param p1, "x1"    # Landroid/support/v4/graphics/drawable/IconCompat;

    .line 35
    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    return-object p1
.end method

.method static synthetic access$802(Landroid/support/v4/content/pm/ShortcutInfoCompat;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/content/pm/ShortcutInfoCompat;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 35
    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    return-object p1
.end method


# virtual methods
.method addToIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 5
    .param p1, "outIntent"    # Landroid/content/Intent;

    .line 72
    const-string v0, "android.intent.extra.shortcut.INTENT"

    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v2, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 73
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    if-eqz v0, :cond_23

    .line 75
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/graphics/drawable/IconCompat;->addToShortcutIntent(Landroid/content/Intent;)V

    .line 77
    :cond_23
    return-object p1
.end method

.method public getActivity()Landroid/content/ComponentName;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 103
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getDisabledMessage()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 134
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 89
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 145
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 155
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    return-object v0
.end method

.method public getLongLabel()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 123
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getShortLabel()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 113
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method toShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 4
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 53
    new-instance v0, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 56
    .local v0, "builder":Landroid/content/pm/ShortcutInfo$Builder;
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    if-eqz v1, :cond_22

    .line 57
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    invoke-virtual {v1}, Landroid/support/v4/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 59
    :cond_22
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 60
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 62
    :cond_2f
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 63
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 65
    :cond_3c
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_45

    .line 66
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 68
    :cond_45
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    return-object v1
.end method
