.class public Landroid/support/v4/app/NotificationCompat$MessagingStyle;
.super Landroid/support/v4/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagingStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    }
.end annotation


# static fields
.field public static final MAXIMUM_RETAINED_MESSAGES:I = 0x19


# instance fields
.field mConversationTitle:Ljava/lang/CharSequence;

.field mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field mUserDisplayName:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 2448
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 2446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    .line 2449
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "userDisplayName"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2457
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 2446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    .line 2458
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    .line 2459
    return-void
.end method

.method public static extractMessagingStyleFromNotification(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    .registers 3
    .param p0, "notification"    # Landroid/app/Notification;

    .line 2540
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 2541
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_10

    const-string v1, "android.selfDisplayName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2542
    const/4 v1, 0x0

    .line 2542
    .local v1, "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    goto :goto_1b

    .line 2545
    .end local v1    # "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    :cond_10
    :try_start_10
    new-instance v1, Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;-><init>()V

    .line 2546
    .restart local v1    # "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->restoreFromCompatExtras(Landroid/os/Bundle;)V
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_18} :catch_19

    .line 2549
    goto :goto_1b

    .line 2547
    .end local v1    # "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    :catch_19
    move-exception v1

    .line 2548
    .local v1, "e":Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    .line 2551
    .local v1, "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    :goto_1b
    return-object v1
.end method

.method private findLatestIncomingMessage()Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2616
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2616
    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 2617
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .line 2619
    .local v1, "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 2620
    return-object v1

    .line 2616
    .end local v1    # "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2623
    .end local v0    # "i":I
    :cond_20
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 2625
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    return-object v0

    .line 2627
    :cond_39
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasMessagesWithoutSender()Z
    .registers 5

    .line 2631
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2631
    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 2632
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .line 2633
    .local v2, "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_19

    .line 2634
    return v1

    .line 2631
    .end local v2    # "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2637
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;
    .registers 9
    .param p1, "color"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2666
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v6
.end method

.method private makeMessageLine(Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;
    .registers 12
    .param p1, "message"    # Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .line 2641
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    .line 2642
    .local v0, "bidi":Landroid/support/v4/text/BidiFormatter;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2643
    .local v1, "sb":Landroid/text/SpannableStringBuilder;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 2644
    .local v2, "afterLollipop":Z
    :goto_12
    if-eqz v2, :cond_17

    const/high16 v3, -0x1000000

    goto :goto_18

    :cond_17
    const/4 v3, -0x1

    .line 2645
    .local v3, "color":I
    :goto_18
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v4

    .line 2646
    .local v4, "replyName":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 2647
    iget-object v5, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    if-nez v5, :cond_2d

    const-string v5, ""

    goto :goto_2f

    :cond_2d
    iget-object v5, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    :goto_2f
    move-object v4, v5

    .line 2649
    if-eqz v2, :cond_41

    iget-object v5, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v5

    if-eqz v5, :cond_41

    iget-object v5, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2650
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v5

    goto :goto_42

    :cond_41
    move v5, v3

    :goto_42
    move v3, v5

    .line 2653
    :cond_43
    invoke-virtual {v0, v4}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2654
    .local v5, "senderText":Ljava/lang/CharSequence;
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2655
    invoke-direct {p0, v3}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;

    move-result-object v6

    .line 2656
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v7, v8

    .line 2657
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x21

    .line 2655
    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2659
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_69

    const-string v6, ""

    goto :goto_6d

    :cond_69
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 2660
    .local v6, "text":Ljava/lang/CharSequence;
    :goto_6d
    const-string v7, "  "

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v0, v6}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2661
    return-object v1
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 2671
    invoke-super {p0, p1}, Landroid/support/v4/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    .line 2672
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    .line 2673
    const-string v0, "android.selfDisplayName"

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2675
    :cond_e
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_19

    .line 2676
    const-string v0, "android.conversationTitle"

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2678
    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "android.messages"

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    .line 2679
    invoke-static {v1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v1

    .line 2678
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2681
    :cond_2c
    return-void
.end method

.method public addMessage(Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    .registers 4
    .param p1, "message"    # Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .line 2516
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2517
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_15

    .line 2518
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2520
    :cond_15
    return-object p0
.end method

.method public addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Ljava/lang/CharSequence;

    .line 2503
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    new-instance v1, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2504
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_1a

    .line 2505
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2507
    :cond_1a
    return-object p0
.end method

.method public apply(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V
    .registers 15
    .param p1, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2560
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_6c

    .line 2561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2562
    .local v0, "texts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 2563
    .local v9, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v1

    .line 2564
    .local v10, "senders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    .line 2565
    .local v11, "dataMimeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v1

    .line 2567
    .local v12, "dataUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .line 2568
    .local v2, "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2569
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2570
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2571
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2572
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2573
    .end local v2    # "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    goto :goto_29

    .line 2574
    :cond_5d
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    move-object v1, p1

    move-object v4, v0

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    invoke-static/range {v1 .. v8}, Landroid/support/v4/app/NotificationCompatApi24;->addMessagingStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2577
    .end local v0    # "texts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v9    # "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v10    # "senders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v11    # "dataMimeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "dataUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    goto/16 :goto_f0

    .line 2578
    :cond_6c
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->findLatestIncomingMessage()Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v0

    .line 2580
    .local v0, "latestIncomingMessage":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7e

    .line 2581
    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_8b

    .line 2582
    :cond_7e
    if-eqz v0, :cond_8b

    .line 2583
    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2586
    :cond_8b
    :goto_8b
    if-eqz v0, :cond_a1

    .line 2587
    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_9a

    .line 2588
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->makeMessageLine(Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_9e

    .line 2589
    :cond_9a
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2587
    :goto_9e
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2592
    :cond_a1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_f0

    .line 2593
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2594
    .local v1, "completeMessage":Landroid/text/SpannableStringBuilder;
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_bb

    .line 2595
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->hasMessagesWithoutSender()Z

    move-result v2

    if-eqz v2, :cond_b9

    goto :goto_bb

    :cond_b9
    const/4 v2, 0x0

    goto :goto_bc

    :cond_bb
    :goto_bb
    const/4 v2, 0x1

    .line 2596
    .local v2, "showNames":Z
    :goto_bc
    iget-object v5, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .line 2596
    .local v5, "i":I
    :goto_c3
    if-ltz v5, :cond_ec

    .line 2597
    iget-object v6, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .line 2599
    .local v6, "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    if-eqz v2, :cond_d4

    invoke-direct {p0, v6}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->makeMessageLine(Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_d8

    :cond_d4
    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 2600
    .local v7, "line":Ljava/lang/CharSequence;
    :goto_d8
    iget-object v8, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    if-eq v5, v8, :cond_e6

    .line 2601
    const-string v8, "\n"

    invoke-virtual {v1, v4, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2603
    :cond_e6
    invoke-virtual {v1, v4, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2596
    .end local v6    # "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .end local v7    # "line":Ljava/lang/CharSequence;
    add-int/lit8 v5, v5, -0x1

    goto :goto_c3

    .line 2605
    .end local v5    # "i":I
    :cond_ec
    const/4 v3, 0x0

    invoke-static {p1, v3, v4, v3, v1}, Landroid/support/v4/app/NotificationCompatJellybean;->addBigTextStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2612
    .end local v0    # "latestIncomingMessage":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .end local v1    # "completeMessage":Landroid/text/SpannableStringBuilder;
    .end local v2    # "showNames":Z
    :cond_f0
    :goto_f0
    return-void
.end method

.method public getConversationTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 2484
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .line 2527
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method public getUserDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 2465
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2689
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2690
    const-string v0, "android.selfDisplayName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    .line 2691
    const-string v0, "android.conversationTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 2692
    const-string v0, "android.messages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 2693
    .local v0, "parcelables":[Landroid/os/Parcelable;
    if-eqz v0, :cond_23

    .line 2694
    invoke-static {v0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    .line 2696
    :cond_23
    return-void
.end method

.method public setConversationTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    .registers 2
    .param p1, "conversationTitle"    # Ljava/lang/CharSequence;

    .line 2475
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 2476
    return-object p0
.end method
