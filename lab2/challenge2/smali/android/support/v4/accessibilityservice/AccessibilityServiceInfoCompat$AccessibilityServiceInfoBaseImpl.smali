.class Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoBaseImpl;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityServiceInfoBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .registers 3
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 34
    invoke-static {p1}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 35
    const/4 v0, 0x1

    return v0

    .line 37
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public loadDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 4
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method
