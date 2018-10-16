.class public Lcom/flower/checkinput/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field inputKey:Landroid/widget/EditText;

.field verifyButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/flower/checkinput/MainActivity;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/flower/checkinput/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0, p1}, Lcom/flower/checkinput/MainActivity;->verify(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private verify(Ljava/lang/String;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 44
    return v0

    .line 48
    :cond_4
    const-string v1, "&we[hkra[aj_nulpekjy"

    .line 51
    .local v1, "flag":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    nop

    .line 53
    .local v0, "i":I
    :goto_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 57
    .end local v0    # "i":I
    :cond_1f
    const-string v0, "&we[hkra[aj_nulpekjy"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 17
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/flower/checkinput/MainActivity;->setContentView(I)V

    .line 21
    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/flower/checkinput/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/flower/checkinput/MainActivity;->inputKey:Landroid/widget/EditText;

    .line 22
    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Lcom/flower/checkinput/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/flower/checkinput/MainActivity;->verifyButton:Landroid/widget/Button;

    .line 24
    iget-object v0, p0, Lcom/flower/checkinput/MainActivity;->verifyButton:Landroid/widget/Button;

    new-instance v1, Lcom/flower/checkinput/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/flower/checkinput/MainActivity$1;-><init>(Lcom/flower/checkinput/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method
