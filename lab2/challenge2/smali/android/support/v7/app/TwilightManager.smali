.class Landroid/support/v7/app/TwilightManager;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/TwilightManager$TwilightState;
    }
.end annotation


# static fields
.field private static final SUNRISE:I = 0x6

.field private static final SUNSET:I = 0x16

.field private static final TAG:Ljava/lang/String; = "TwilightManager"

.field private static sInstance:Landroid/support/v7/app/TwilightManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "locationManager"    # Landroid/location/LocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/support/v7/app/TwilightManager$TwilightState;

    invoke-direct {v0}, Landroid/support/v7/app/TwilightManager$TwilightState;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    .line 64
    iput-object p1, p0, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    .line 66
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Landroid/support/v7/app/TwilightManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    sget-object v0, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;

    if-nez v0, :cond_17

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 46
    new-instance v0, Landroid/support/v7/app/TwilightManager;

    const-string v1, "location"

    .line 47
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/TwilightManager;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v0, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;

    .line 49
    :cond_17
    sget-object v0, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;

    return-object v0
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .registers 9

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "coarseLoc":Landroid/location/Location;
    const/4 v1, 0x0

    .line 103
    .local v1, "fineLoc":Landroid/location/Location;
    iget-object v2, p0, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 105
    .local v2, "permission":I
    if-nez v2, :cond_12

    .line 106
    const-string v3, "network"

    invoke-direct {p0, v3}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 109
    :cond_12
    iget-object v3, p0, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v4}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 111
    if-nez v2, :cond_22

    .line 112
    const-string v3, "gps"

    invoke-direct {p0, v3}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 115
    :cond_22
    if-eqz v1, :cond_36

    if-eqz v0, :cond_36

    .line 117
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_34

    move-object v3, v1

    goto :goto_35

    :cond_34
    move-object v3, v0

    :goto_35
    return-object v3

    .line 120
    :cond_36
    if-eqz v1, :cond_3a

    move-object v3, v1

    goto :goto_3b

    :cond_3a
    move-object v3, v0

    :goto_3b
    return-object v3
.end method

.method private getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1c

    .line 127
    :try_start_4
    iget-object v0, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 128
    iget-object v0, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_14

    return-object v0

    .line 132
    :cond_13
    goto :goto_1c

    .line 130
    :catch_14
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TwilightManager"

    const-string v2, "Failed to get last known location"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method private isStateValid()Z
    .registers 6

    .line 138
    iget-object v0, p0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    iget-wide v0, v0, Landroid/support/v7/app/TwilightManager$TwilightState;->nextUpdate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method static setInstance(Landroid/support/v7/app/TwilightManager;)V
    .registers 1
    .param p0, "twilightManager"    # Landroid/support/v7/app/TwilightManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 54
    sput-object p0, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;

    .line 55
    return-void
.end method

.method private updateState(Landroid/location/Location;)V
    .registers 25
    .param p1, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    .line 143
    .local v1, "state":Landroid/support/v7/app/TwilightManager$TwilightState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 144
    .local v9, "now":J
    invoke-static {}, Landroid/support/v7/app/TwilightCalculator;->getInstance()Landroid/support/v7/app/TwilightCalculator;

    move-result-object v11

    .line 147
    .local v11, "calculator":Landroid/support/v7/app/TwilightCalculator;
    const-wide/32 v12, 0x5265c00

    sub-long v3, v9, v12

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 147
    move-object v2, v11

    invoke-virtual/range {v2 .. v8}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 149
    iget-wide v14, v11, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    .line 152
    .local v14, "yesterdaySunset":J
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    move-wide v3, v9

    invoke-virtual/range {v2 .. v8}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 153
    iget v2, v11, Landroid/support/v7/app/TwilightCalculator;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    goto :goto_32

    :cond_31
    const/4 v3, 0x0

    :goto_32
    move v7, v3

    .line 154
    .local v7, "isNight":Z
    iget-wide v5, v11, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    .line 155
    .local v5, "todaySunrise":J
    iget-wide v3, v11, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    .line 158
    .local v3, "todaySunset":J
    add-long v16, v9, v12

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    .line 158
    move-object v2, v11

    move-wide/from16 v20, v14

    move-wide v14, v3

    move-wide/from16 v3, v16

    .line 158
    .end local v3    # "todaySunset":J
    .local v14, "todaySunset":J
    .local v20, "yesterdaySunset":J
    move-object/from16 v22, v1

    move-wide v0, v5

    move-wide v5, v12

    .line 158
    .end local v1    # "state":Landroid/support/v7/app/TwilightManager$TwilightState;
    .end local v5    # "todaySunrise":J
    .local v0, "todaySunrise":J
    .local v22, "state":Landroid/support/v7/app/TwilightManager$TwilightState;
    move v12, v7

    move-wide/from16 v7, v18

    .line 158
    .end local v7    # "isNight":Z
    .local v12, "isNight":Z
    invoke-virtual/range {v2 .. v8}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 160
    iget-wide v2, v11, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    .line 163
    .local v2, "tomorrowSunrise":J
    const-wide/16 v4, 0x0

    .line 164
    .local v4, "nextUpdate":J
    const-wide/16 v6, -0x1

    cmp-long v8, v0, v6

    if-eqz v8, :cond_78

    cmp-long v8, v14, v6

    if-nez v8, :cond_60

    goto :goto_78

    .line 168
    :cond_60
    cmp-long v6, v9, v14

    if-lez v6, :cond_67

    .line 169
    add-long v6, v4, v2

    .line 169
    .end local v4    # "nextUpdate":J
    .local v6, "nextUpdate":J
    :goto_66
    goto :goto_72

    .line 170
    .end local v6    # "nextUpdate":J
    .restart local v4    # "nextUpdate":J
    :cond_67
    cmp-long v6, v9, v0

    if-lez v6, :cond_6e

    .line 171
    add-long v6, v4, v14

    goto :goto_66

    .line 173
    :cond_6e
    const/4 v6, 0x0

    add-long v6, v4, v0

    goto :goto_66

    .line 176
    .end local v4    # "nextUpdate":J
    .restart local v6    # "nextUpdate":J
    :goto_72
    const-wide/32 v4, 0xea60

    add-long v16, v6, v4

    .line 176
    .end local v6    # "nextUpdate":J
    .local v16, "nextUpdate":J
    goto :goto_7d

    .line 166
    .end local v16    # "nextUpdate":J
    .restart local v4    # "nextUpdate":J
    :cond_78
    :goto_78
    const-wide/32 v6, 0x2932e00

    add-long v16, v9, v6

    .line 180
    :goto_7d
    move-wide/from16 v4, v16

    move-object/from16 v6, v22

    iput-boolean v12, v6, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    .line 181
    .end local v22    # "state":Landroid/support/v7/app/TwilightManager$TwilightState;
    .local v6, "state":Landroid/support/v7/app/TwilightManager$TwilightState;
    move-wide/from16 v7, v20

    iput-wide v7, v6, Landroid/support/v7/app/TwilightManager$TwilightState;->yesterdaySunset:J

    .line 182
    .end local v20    # "yesterdaySunset":J
    .local v7, "yesterdaySunset":J
    iput-wide v0, v6, Landroid/support/v7/app/TwilightManager$TwilightState;->todaySunrise:J

    .line 183
    iput-wide v14, v6, Landroid/support/v7/app/TwilightManager$TwilightState;->todaySunset:J

    .line 184
    iput-wide v2, v6, Landroid/support/v7/app/TwilightManager$TwilightState;->tomorrowSunrise:J

    .line 185
    iput-wide v4, v6, Landroid/support/v7/app/TwilightManager$TwilightState;->nextUpdate:J

    .line 186
    return-void
.end method


# virtual methods
.method isNight()Z
    .registers 6

    .line 74
    iget-object v0, p0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    .line 76
    .local v0, "state":Landroid/support/v7/app/TwilightManager$TwilightState;
    invoke-direct {p0}, Landroid/support/v7/app/TwilightManager;->isStateValid()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 78
    iget-boolean v1, v0, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    return v1

    .line 82
    :cond_b
    invoke-direct {p0}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    .line 83
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_17

    .line 84
    invoke-direct {p0, v1}, Landroid/support/v7/app/TwilightManager;->updateState(Landroid/location/Location;)V

    .line 85
    iget-boolean v2, v0, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    return v2

    .line 88
    :cond_17
    const-string v2, "TwilightManager"

    const-string v3, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 95
    .local v2, "calendar":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 96
    .local v3, "hour":I
    const/4 v4, 0x6

    if-lt v3, v4, :cond_32

    const/16 v4, 0x16

    if-lt v3, v4, :cond_30

    goto :goto_32

    :cond_30
    const/4 v4, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v4, 0x1

    :goto_33
    return v4
.end method
