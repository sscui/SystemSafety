.class public abstract Landroid/support/v4/media/session/IMediaControllerCallback$Stub;
.super Landroid/os/Binder;
.source "IMediaControllerCallback.java"

# interfaces
.implements Landroid/support/v4/media/session/IMediaControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/IMediaControllerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.session.IMediaControllerCallback"

.field static final TRANSACTION_onCaptioningEnabledChanged:I = 0xb

.field static final TRANSACTION_onEvent:I = 0x1

.field static final TRANSACTION_onExtrasChanged:I = 0x7

.field static final TRANSACTION_onMetadataChanged:I = 0x4

.field static final TRANSACTION_onPlaybackStateChanged:I = 0x3

.field static final TRANSACTION_onQueueChanged:I = 0x5

.field static final TRANSACTION_onQueueTitleChanged:I = 0x6

.field static final TRANSACTION_onRepeatModeChanged:I = 0x9

.field static final TRANSACTION_onSessionDestroyed:I = 0x2

.field static final TRANSACTION_onShuffleModeChanged:I = 0xc

.field static final TRANSACTION_onShuffleModeChangedDeprecated:I = 0xa

.field static final TRANSACTION_onVolumeInfoChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_4
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    if-eqz v1, :cond_14

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/support/v4/media/session/IMediaControllerCallback;

    return-object v1

    .line 35
    :cond_14
    new-instance v1, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_108

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_10e

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 170
    :pswitch_10
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onShuffleModeChanged(I)V

    .line 174
    return v1

    .line 162
    .end local v0    # "_arg0":I
    :pswitch_1d
    const-string v2, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v0, 0x1

    nop

    .line 165
    .local v0, "_arg0":Z
    :cond_2a
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onCaptioningEnabledChanged(Z)V

    .line 166
    return v1

    .line 154
    .end local v0    # "_arg0":Z
    :pswitch_2e
    const-string v2, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v0, 0x1

    nop

    .line 157
    .restart local v0    # "_arg0":Z
    :cond_3b
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onShuffleModeChangedDeprecated(Z)V

    .line 158
    return v1

    .line 146
    .end local v0    # "_arg0":Z
    :pswitch_3f
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 149
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onRepeatModeChanged(I)V

    .line 150
    return v1

    .line 133
    .end local v0    # "_arg0":I
    :pswitch_4c
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_61

    .line 136
    sget-object v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .line 136
    .local v2, "_arg0":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    goto :goto_62

    .line 139
    .end local v2    # "_arg0":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :cond_61
    nop

    .line 139
    .restart local v2    # "_arg0":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :goto_62
    move-object v0, v2

    .line 141
    .end local v2    # "_arg0":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    .local v0, "_arg0":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 142
    return v1

    .line 120
    .end local v0    # "_arg0":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :pswitch_67
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7c

    .line 123
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Bundle;

    .line 123
    .local v2, "_arg0":Landroid/os/Bundle;
    goto :goto_7d

    .line 126
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :cond_7c
    nop

    .line 126
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    :goto_7d
    move-object v0, v2

    .line 128
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 129
    return v1

    .line 107
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_82
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_97

    .line 110
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .line 110
    .local v2, "_arg0":Ljava/lang/CharSequence;
    goto :goto_98

    .line 113
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    :cond_97
    nop

    .line 113
    .restart local v2    # "_arg0":Ljava/lang/CharSequence;
    :goto_98
    move-object v0, v2

    .line 115
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    .local v0, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 116
    return v1

    .line 99
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    :pswitch_9d
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    sget-object v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueChanged(Ljava/util/List;)V

    .line 103
    return v1

    .line 86
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    :pswitch_ac
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c1

    .line 89
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v4/media/MediaMetadataCompat;

    .line 89
    .local v2, "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    goto :goto_c2

    .line 92
    .end local v2    # "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    :cond_c1
    nop

    .line 92
    .restart local v2    # "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    :goto_c2
    move-object v0, v2

    .line 94
    .end local v2    # "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    .local v0, "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 95
    return v1

    .line 73
    .end local v0    # "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    :pswitch_c7
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_dc

    .line 76
    sget-object v0, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 76
    .local v2, "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    goto :goto_dd

    .line 79
    .end local v2    # "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    :cond_dc
    nop

    .line 79
    .restart local v2    # "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    :goto_dd
    move-object v0, v2

    .line 81
    .end local v2    # "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    .local v0, "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 82
    return v1

    .line 67
    .end local v0    # "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    :pswitch_e2
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onSessionDestroyed()V

    .line 69
    return v1

    .line 52
    :pswitch_eb
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_103

    .line 57
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 57
    .local v2, "_arg1":Landroid/os/Bundle;
    goto :goto_104

    .line 60
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_103
    nop

    .line 62
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_104
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    return v1

    .line 47
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_108
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v1

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_eb
        :pswitch_e2
        :pswitch_c7
        :pswitch_ac
        :pswitch_9d
        :pswitch_82
        :pswitch_67
        :pswitch_4c
        :pswitch_3f
        :pswitch_2e
        :pswitch_1d
        :pswitch_10
    .end packed-switch
.end method
