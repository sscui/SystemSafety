.class final Landroid/support/v4/provider/FontsContractCompat$3;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/widget/TextView;III)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback<",
        "Landroid/graphics/Typeface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 261
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReply(Landroid/graphics/Typeface;)V
    .registers 6
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 265
    # getter for: Landroid/support/v4/provider/FontsContractCompat;->sLock:Ljava/lang/Object;
    invoke-static {}, Landroid/support/v4/provider/FontsContractCompat;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 266
    const/4 v1, 0x0

    :try_start_6
    # getter for: Landroid/support/v4/provider/FontsContractCompat;->sPendingReplies:Landroid/support/v4/util/SimpleArrayMap;
    invoke-static {}, Landroid/support/v4/provider/FontsContractCompat;->access$300()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object v1, v2

    .line 267
    .local v1, "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback<Landroid/graphics/Typeface;>;>;"
    # getter for: Landroid/support/v4/provider/FontsContractCompat;->sPendingReplies:Landroid/support/v4/util/SimpleArrayMap;
    invoke-static {}, Landroid/support/v4/provider/FontsContractCompat;->access$300()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_31

    .line 269
    const/4 v0, 0x0

    .line 269
    .local v0, "i":I
    :goto_1e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_30

    .line 270
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback;

    invoke-interface {v2, p1}, Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback;->onReply(Ljava/lang/Object;)V

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 272
    .end local v0    # "i":I
    :cond_30
    return-void

    .line 268
    .end local v1    # "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback<Landroid/graphics/Typeface;>;>;"
    :catchall_31
    move-exception v2

    .line 268
    .restart local v1    # "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback<Landroid/graphics/Typeface;>;>;"
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public bridge synthetic onReply(Ljava/lang/Object;)V
    .registers 2

    .line 261
    check-cast p1, Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/support/v4/provider/FontsContractCompat$3;->onReply(Landroid/graphics/Typeface;)V

    return-void
.end method
