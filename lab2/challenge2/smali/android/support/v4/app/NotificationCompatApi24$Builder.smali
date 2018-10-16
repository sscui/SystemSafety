.class public Landroid/support/v4/app/NotificationCompatApi24$Builder;
.super Ljava/lang/Object;
.source "NotificationCompatApi24.java"

# interfaces
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
.implements Landroid/support/v4/app/NotificationBuilderWithActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private b:Landroid/app/Notification$Builder;

.field private mGroupAlertBehavior:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/CharSequence;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;I)V
    .registers 51
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "n"    # Landroid/app/Notification;
    .param p3, "contentTitle"    # Ljava/lang/CharSequence;
    .param p4, "contentText"    # Ljava/lang/CharSequence;
    .param p5, "contentInfo"    # Ljava/lang/CharSequence;
    .param p6, "tickerView"    # Landroid/widget/RemoteViews;
    .param p7, "number"    # I
    .param p8, "contentIntent"    # Landroid/app/PendingIntent;
    .param p9, "fullScreenIntent"    # Landroid/app/PendingIntent;
    .param p10, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p11, "progressMax"    # I
    .param p12, "progress"    # I
    .param p13, "progressIndeterminate"    # Z
    .param p14, "showWhen"    # Z
    .param p15, "useChronometer"    # Z
    .param p16, "priority"    # I
    .param p17, "subText"    # Ljava/lang/CharSequence;
    .param p18, "localOnly"    # Z
    .param p19, "category"    # Ljava/lang/String;
    .param p21, "extras"    # Landroid/os/Bundle;
    .param p22, "color"    # I
    .param p23, "visibility"    # I
    .param p24, "publicVersion"    # Landroid/app/Notification;
    .param p25, "groupKey"    # Ljava/lang/String;
    .param p26, "groupSummary"    # Z
    .param p27, "sortKey"    # Ljava/lang/String;
    .param p28, "remoteInputHistory"    # [Ljava/lang/CharSequence;
    .param p29, "contentView"    # Landroid/widget/RemoteViews;
    .param p30, "bigContentView"    # Landroid/widget/RemoteViews;
    .param p31, "headsUpContentView"    # Landroid/widget/RemoteViews;
    .param p32, "groupAlertBehavior"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Notification;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Landroid/widget/RemoteViews;",
            "I",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Landroid/graphics/Bitmap;",
            "IIZZZI",
            "Ljava/lang/CharSequence;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "II",
            "Landroid/app/Notification;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/CharSequence;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "I)V"
        }
    .end annotation

    .line 58
    .local p20, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p29

    move-object/from16 v3, p30

    move-object/from16 v4, p31

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v5, Landroid/app/Notification$Builder;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v7, v1, Landroid/app/Notification;->when:J

    .line 60
    invoke-virtual {v5, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 61
    move/from16 v7, p14

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v8, v1, Landroid/app/Notification;->icon:I

    iget v9, v1, Landroid/app/Notification;->iconLevel:I

    .line 62
    invoke-virtual {v5, v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v8, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 63
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v8, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 64
    move-object/from16 v9, p6

    invoke-virtual {v5, v8, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v8, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v10, v1, Landroid/app/Notification;->audioStreamType:I

    .line 65
    invoke-virtual {v5, v8, v10}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v8, v1, Landroid/app/Notification;->vibrate:[J

    .line 66
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v8, v1, Landroid/app/Notification;->ledARGB:I

    iget v10, v1, Landroid/app/Notification;->ledOnMS:I

    iget v11, v1, Landroid/app/Notification;->ledOffMS:I

    .line 67
    invoke-virtual {v5, v8, v10, v11}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v8, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x2

    const/4 v11, 0x1

    if-eqz v8, :cond_57

    .line 68
    const/4 v8, 0x1

    goto :goto_59

    .line 67
    :cond_57
    nop

    .line 68
    const/4 v8, 0x0

    :goto_59
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v8, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_65

    .line 69
    const/4 v8, 0x1

    goto :goto_67

    .line 68
    :cond_65
    nop

    .line 69
    const/4 v8, 0x0

    :goto_67
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v8, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_73

    .line 70
    const/4 v8, 0x1

    goto :goto_75

    .line 69
    :cond_73
    nop

    .line 70
    const/4 v8, 0x0

    :goto_75
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v8, v1, Landroid/app/Notification;->defaults:I

    .line 71
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 72
    move-object/from16 v8, p3

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 73
    move-object/from16 v12, p4

    invoke-virtual {v5, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 74
    move-object/from16 v13, p17

    invoke-virtual {v5, v13}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 75
    move-object/from16 v14, p5

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 76
    move-object/from16 v15, p8

    invoke-virtual {v5, v15}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v10, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 77
    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v10, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_aa

    goto :goto_ab

    .line 78
    :cond_aa
    const/4 v11, 0x0

    :goto_ab
    move-object/from16 v10, p9

    invoke-virtual {v5, v10, v11}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 80
    move-object/from16 v11, p10

    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 81
    move/from16 v1, p7

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 82
    move/from16 v1, p15

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 83
    move/from16 v1, p16

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 84
    move/from16 v1, p11

    move/from16 v6, p12

    move/from16 v7, p13

    invoke-virtual {v5, v1, v6, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 85
    move/from16 v1, p18

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 86
    move-object/from16 v1, p21

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 87
    move-object/from16 v1, p25

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 88
    move/from16 v1, p26

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 89
    move-object/from16 v1, p27

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 90
    move-object/from16 v1, p19

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 91
    move/from16 v1, p22

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 92
    move/from16 v1, p23

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 93
    move-object/from16 v1, p24

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 94
    move-object/from16 v1, p28

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iput-object v5, v0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    .line 95
    if-eqz v2, :cond_118

    .line 96
    iget-object v5, v0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 98
    :cond_118
    if-eqz v3, :cond_11f

    .line 99
    iget-object v5, v0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 101
    :cond_11f
    if-eqz v4, :cond_126

    .line 102
    iget-object v5, v0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 104
    :cond_126
    invoke-virtual/range {p20 .. p20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_143

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    .line 105
    .local v1, "person":Ljava/lang/String;
    iget-object v2, v0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 106
    .end local v1    # "person":Ljava/lang/String;
    nop

    .line 104
    move-object/from16 v1, p28

    move-object/from16 v2, p29

    goto :goto_12a

    .line 108
    :cond_143
    move/from16 v1, p32

    iput v1, v0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->mGroupAlertBehavior:I

    .line 109
    return-void
.end method

.method private removeSoundAndVibration(Landroid/app/Notification;)V
    .registers 3
    .param p1, "notification"    # Landroid/app/Notification;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 145
    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 146
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 147
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 148
    return-void
.end method


# virtual methods
.method public addAction(Landroid/support/v4/app/NotificationCompatBase$Action;)V
    .registers 3
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompatBase$Action;

    .line 113
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    invoke-static {v0, p1}, Landroid/support/v4/app/NotificationCompatApi24;->addAction(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)V

    .line 114
    return-void
.end method

.method public build()Landroid/app/Notification;
    .registers 4

    .line 123
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 125
    .local v0, "notification":Landroid/app/Notification;
    iget v1, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->mGroupAlertBehavior:I

    if-eqz v1, :cond_32

    .line 127
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1e

    iget v1, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->mGroupAlertBehavior:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1e

    .line 130
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompatApi24$Builder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 133
    :cond_1e
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_32

    iget v1, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->mGroupAlertBehavior:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 136
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompatApi24$Builder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 140
    :cond_32
    return-object v0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    return-object v0
.end method
