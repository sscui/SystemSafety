.class Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoApi16Impl;
.super Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoBaseImpl;
.source "AccessibilityServiceInfoCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityServiceInfoApi16Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public loadDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 4
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .line 49
    invoke-virtual {p1, p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
