.class Lcom/alittle/lab1/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alittle/lab1/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alittle/lab1/MainActivity;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/alittle/lab1/MainActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alittle/lab1/MainActivity;

    .line 19
    iput-object p1, p0, Lcom/alittle/lab1/MainActivity$1;->this$0:Lcom/alittle/lab1/MainActivity;

    iput-object p2, p0, Lcom/alittle/lab1/MainActivity$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/alittle/lab1/MainActivity$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

# String tmp = editText.getText().toString();
# Toast.makeText(getApplicationContext(), varify(tmp), Toast.LENGTH_SHORT).show();
    .line 23
    .local v0, "tmp":Ljava/lang/String;
    iget-object v1, p0, Lcom/alittle/lab1/MainActivity$1;->this$0:Lcom/alittle/lab1/MainActivity;

    invoke-virtual {v1}, Lcom/alittle/lab1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alittle/lab1/MainActivity$1;->this$0:Lcom/alittle/lab1/MainActivity;

    invoke-virtual {v2, v0}, Lcom/alittle/lab1/MainActivity;->varify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 24
    return-void
.end method
