.class public Lcom/alittle/lab1/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 15
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/alittle/lab1/MainActivity;->setContentView(I)V

    .line 17
    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/alittle/lab1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 18
    .local v0, "editText":Landroid/widget/EditText;
    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/alittle/lab1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 19
    .local v1, "button":Landroid/widget/Button;
    new-instance v2, Lcom/alittle/lab1/MainActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/alittle/lab1/MainActivity$1;-><init>(Lcom/alittle/lab1/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method

.method protected varify(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "string"    # Ljava/lang/String;

    .line 31
    const-string v0, "dboomc"

    .line 32
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 33
    .local v1, "chars_secret":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 36
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v3, "stringBuilder_1":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v4, "stringBuilder_2":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 38
    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_1

    .line 39
    aget-char v7, v1, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    add-int/lit8 v7, v6, 0x1

    if-ge v7, v2, :cond_0

    .line 41
    add-int/lit8 v7, v6, 0x1

    aget-char v7, v1, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    :cond_0
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 44
    .end local v6    # "i":I
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 48
    const/16 v6, 0xa

    .line 49
    .local v6, "offset":I
    const/4 v7, 0x0

    .line 49
    .local v7, "i":I
    :goto_1
    array-length v8, v1

    if-ge v7, v8, :cond_3

    .line 50
    aget-char v8, v1, v7

    add-int/2addr v8, v6

    int-to-char v8, v8

    aput-char v8, v1, v7

    .line 51
    aget-char v8, v1, v7

    const/16 v9, 0x7a

    if-le v8, v9, :cond_2

    .line 52
    aget-char v8, v1, v7

    add-int/lit8 v8, v8, -0x1a

    int-to-char v8, v8

    aput-char v8, v1, v7

    .line 49
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 57
    .end local v7    # "i":I
    :cond_3
    nop

    .line 57
    .local v5, "i":I
    :goto_2
    div-int/lit8 v7, v2, 0x2

    if-ge v5, v7, :cond_4

    .line 59
    aget-char v7, v1, v5

    .line 60
    .local v7, "tmp":C
    sub-int v8, v2, v5

    add-int/lit8 v8, v8, -0x1

    aget-char v8, v1, v8

    aput-char v8, v1, v5

    .line 61
    sub-int v8, v2, v5

    add-int/lit8 v8, v8, -0x1

    aput-char v7, v1, v8

    .line 57
    .end local v7    # "tmp":C
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 64
    .end local v5    # "i":I
    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 65
    const-string v5, "true"

    return-object v5

    .line 67
    :cond_5
    const-string v5, "false"

    return-object v5
.end method
