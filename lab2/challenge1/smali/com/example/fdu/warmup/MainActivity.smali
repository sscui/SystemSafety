.class public Lcom/example/fdu/warmup/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field protected input:Landroid/widget/EditText;

.field protected view1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)I
    .registers 9
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 54
    const-string/jumbo v0, "qwerfdsazxcvbgtyhjuioplkmnb"

    .line 55
    .local v0, "a":Ljava/lang/String;
    const-string/jumbo v1, "czgstdubqvz"

    .line 56
    .local v1, "b":Ljava/lang/String;
    const/4 v3, 0x0

    .line 57
    .local v3, "j":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_29

    .line 58
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2d

    .line 59
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x61

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_2a

    .line 68
    .end local v2    # "i":I
    :cond_29
    :goto_29
    return v4

    .line 58
    .restart local v2    # "i":I
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 68
    :cond_2d
    const/4 v4, 0x1

    goto :goto_29
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v1}, Lcom/example/fdu/warmup/MainActivity;->setContentView(I)V

    .line 39
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/example/fdu/warmup/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/fdu/warmup/MainActivity;->input:Landroid/widget/EditText;

    .line 40
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/example/fdu/warmup/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/example/fdu/warmup/MainActivity;->view1:Landroid/widget/TextView;

    .line 41
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/example/fdu/warmup/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 42
    .local v0, "cBtn":Landroid/widget/Button;
    new-instance v1, Lcom/example/fdu/warmup/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/example/fdu/warmup/MainActivity$1;-><init>(Lcom/example/fdu/warmup/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method
