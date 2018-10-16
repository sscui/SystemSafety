.class Lcom/flower/checkinput/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flower/checkinput/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flower/checkinput/MainActivity;


# direct methods
.method constructor <init>(Lcom/flower/checkinput/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/flower/checkinput/MainActivity;

    .line 24
    iput-object p1, p0, Lcom/flower/checkinput/MainActivity$1;->this$0:Lcom/flower/checkinput/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/flower/checkinput/MainActivity$1;->this$0:Lcom/flower/checkinput/MainActivity;

    iget-object v0, v0, Lcom/flower/checkinput/MainActivity;->inputKey:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/flower/checkinput/MainActivity$1;->this$0:Lcom/flower/checkinput/MainActivity;

    # invokes: Lcom/flower/checkinput/MainActivity;->verify(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/flower/checkinput/MainActivity;->access$000(Lcom/flower/checkinput/MainActivity;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 31
    iget-object v1, p0, Lcom/flower/checkinput/MainActivity$1;->this$0:Lcom/flower/checkinput/MainActivity;

    const v3, 0x7f0b0024

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2e

    .line 33
    :cond_22
    iget-object v1, p0, Lcom/flower/checkinput/MainActivity$1;->this$0:Lcom/flower/checkinput/MainActivity;

    const v3, 0x7f0b0020

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 36
    :goto_2e
    return-void
.end method
