.class public final Landroid/support/coreui/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/coreui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_font:I = 0x0

.field public static final FontFamilyFont_fontStyle:I = 0x1

.field public static final FontFamilyFont_fontWeight:I = 0x2

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 117
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Landroid/support/coreui/R$styleable;->FontFamily:[I

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Landroid/support/coreui/R$styleable;->FontFamilyFont:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x7f020078
        0x7f020079
        0x7f02007a
        0x7f02007b
        0x7f02007c
        0x7f02007d
    .end array-data

    :array_22
    .array-data 4
        0x7f020076
        0x7f02007e
        0x7f02007f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
