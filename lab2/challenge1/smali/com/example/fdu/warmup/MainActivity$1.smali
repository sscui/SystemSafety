.class Lcom/example/fdu/warmup/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/fdu/warmup/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/fdu/warmup/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/fdu/warmup/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/fdu/warmup/MainActivity;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/example/fdu/warmup/MainActivity$1;->this$0:Lcom/example/fdu/warmup/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/example/fdu/warmup/MainActivity$1;->this$0:Lcom/example/fdu/warmup/MainActivity;

    iget-object v1, p0, Lcom/example/fdu/warmup/MainActivity$1;->this$0:Lcom/example/fdu/warmup/MainActivity;

    iget-object v1, v1, Lcom/example/fdu/warmup/MainActivity;->input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/fdu/warmup/MainActivity;->check(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 46
    iget-object v0, p0, Lcom/example/fdu/warmup/MainActivity$1;->this$0:Lcom/example/fdu/warmup/MainActivity;

    iget-object v0, v0, Lcom/example/fdu/warmup/MainActivity;->view1:Landroid/widget/TextView;

    const-string/jumbo v1, "Correct!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :goto_1f
    return-void

    .line 48
    :cond_20
    iget-object v0, p0, Lcom/example/fdu/warmup/MainActivity$1;->this$0:Lcom/example/fdu/warmup/MainActivity;

    iget-object v0, v0, Lcom/example/fdu/warmup/MainActivity;->view1:Landroid/widget/TextView;

    const-string/jumbo v1, "Wrong!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f
.end method
