.class public abstract Landroid/support/v4/app/FragmentHostCallback;
.super Landroid/support/v4/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedForLoaderManager:Z

.field final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field private mLoadersStarted:Z

.field private mRetainLoaders:Z

.field final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "windowAnimations"    # I

    .line 67
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    invoke-direct {p0}, Landroid/support/v4/app/FragmentContainer;-><init>()V

    .line 46
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 68
    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    .line 69
    iput-object p2, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 71
    iput p4, p0, Landroid/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "windowAnimations"    # I

    .line 58
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 60
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .registers 4
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .line 63
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 64
    return-void
.end method


# virtual methods
.method doLoaderDestroy()V
    .registers 2

    .line 282
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    .line 283
    return-void

    .line 285
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 286
    return-void
.end method

.method doLoaderRetain()V
    .registers 2

    .line 275
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    .line 276
    return-void

    .line 278
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    .line 279
    return-void
.end method

.method doLoaderStart()V
    .registers 5

    .line 237
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_5

    .line 238
    return-void

    .line 240
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 242
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_12

    .line 243
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    goto :goto_30

    .line 244
    :cond_12
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_30

    .line 245
    const-string v1, "(root)"

    iget-boolean v2, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 247
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_30

    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    iget-boolean v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v1, :cond_30

    .line 248
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 251
    :cond_30
    :goto_30
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 252
    return-void
.end method

.method doLoaderStop(Z)V
    .registers 3
    .param p1, "retain"    # Z

    .line 256
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentHostCallback;->mRetainLoaders:Z

    .line 258
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_7

    .line 259
    return-void

    .line 262
    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-nez v0, :cond_c

    .line 263
    return-void

    .line 265
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 267
    if-eqz p1, :cond_17

    .line 268
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    goto :goto_1c

    .line 270
    :cond_17
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    .line 272
    :goto_1c
    return-void
.end method

.method dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 361
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 363
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_41

    .line 364
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 369
    :cond_41
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .registers 2

    .line 194
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 198
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;
    .registers 2

    .line 206
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .registers 2

    .line 202
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
    .registers 6
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "started"    # Z
    .param p3, "create"    # Z

    .line 304
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v0, :cond_b

    .line 305
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    .line 307
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 308
    .local v0, "lm":Landroid/support/v4/app/LoaderManagerImpl;
    if-nez v0, :cond_23

    if-eqz p3, :cond_23

    .line 309
    new-instance v1, Landroid/support/v4/app/LoaderManagerImpl;

    invoke-direct {v1, p1, p0, p2}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/support/v4/app/FragmentHostCallback;Z)V

    move-object v0, v1

    .line 310
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 311
    :cond_23
    if-eqz p2, :cond_2e

    if-eqz v0, :cond_2e

    iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v1, :cond_2e

    .line 312
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 314
    :cond_2e
    :goto_2e
    return-object v0
.end method

.method getLoaderManagerImpl()Landroid/support/v4/app/LoaderManagerImpl;
    .registers 4

    .line 210
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_7

    .line 211
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    return-object v0

    .line 213
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 214
    const-string v1, "(root)"

    iget-boolean v2, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 215
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    return-object v0
.end method

.method getRetainLoaders()Z
    .registers 2

    .line 233
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mRetainLoaders:Z

    return v0
.end method

.method inactivateFragment(Ljava/lang/String;)V
    .registers 4
    .param p1, "who"    # Ljava/lang/String;

    .line 220
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_1a

    .line 221
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 222
    .local v0, "lm":Landroid/support/v4/app/LoaderManagerImpl;
    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_1a

    .line 223
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 224
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v0    # "lm":Landroid/support/v4/app/LoaderManagerImpl;
    :cond_1a
    return-void
.end method

.method onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 230
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 84
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 185
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .registers 3

    .line 98
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .registers 2

    .line 179
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    return v0
.end method

.method public onHasView()Z
    .registers 2

    .line 190
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .registers 2

    .line 172
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onRequestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .registers 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I

    .line 158
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z
    .registers 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 90
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 165
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .line 121
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 122
    return-void
.end method

.method public onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 130
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    if-eq p3, v0, :cond_b

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method public onStartIntentSenderFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 19
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 144
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    move v9, p3

    if-eq v9, v0, :cond_c

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_c
    move-object v0, p0

    iget-object v1, v0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    move-object v2, p2

    move v3, v9

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Landroid/support/v4/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 150
    return-void
.end method

.method public onSupportInvalidateOptionsMenu()V
    .registers 1

    .line 114
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method reportLoaderStart()V
    .registers 5

    .line 289
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_2b

    .line 290
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    .line 291
    .local v0, "N":I
    new-array v1, v0, [Landroid/support/v4/app/LoaderManagerImpl;

    .line 292
    .local v1, "loaders":[Landroid/support/v4/app/LoaderManagerImpl;
    add-int/lit8 v2, v0, -0x1

    .line 292
    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_1d

    .line 293
    iget-object v3, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/LoaderManagerImpl;

    aput-object v3, v1, v2

    .line 292
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 295
    .end local v2    # "i":I
    :cond_1d
    const/4 v2, 0x0

    .line 295
    .restart local v2    # "i":I
    :goto_1e
    if-ge v2, v0, :cond_2b

    .line 296
    aget-object v3, v1, v2

    .line 297
    .local v3, "lm":Landroid/support/v4/app/LoaderManagerImpl;
    invoke-virtual {v3}, Landroid/support/v4/app/LoaderManagerImpl;->finishRetain()V

    .line 298
    invoke-virtual {v3}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V

    .line 295
    .end local v3    # "lm":Landroid/support/v4/app/LoaderManagerImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 301
    .end local v0    # "N":I
    .end local v1    # "loaders":[Landroid/support/v4/app/LoaderManagerImpl;
    .end local v2    # "i":I
    :cond_2b
    return-void
.end method

.method restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .line 352
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    .local p1, "loaderManagers":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<Ljava/lang/String;Landroid/support/v4/app/LoaderManager;>;"
    if-eqz p1, :cond_15

    .line 353
    const/4 v0, 0x0

    .line 353
    .local v0, "i":I
    invoke-virtual {p1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    .line 353
    .local v1, "N":I
    :goto_7
    if-ge v0, v1, :cond_15

    .line 354
    invoke-virtual {p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v2, p0}, Landroid/support/v4/app/LoaderManagerImpl;->updateHostController(Landroid/support/v4/app/FragmentHostCallback;)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 357
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_15
    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    .line 358
    return-void
.end method

.method retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .line 318
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    .line 319
    .local v0, "retainLoaders":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v1, :cond_4a

    .line 322
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    .line 323
    .local v1, "N":I
    new-array v2, v1, [Landroid/support/v4/app/LoaderManagerImpl;

    .line 324
    .local v2, "loaders":[Landroid/support/v4/app/LoaderManagerImpl;
    add-int/lit8 v3, v1, -0x1

    .line 324
    .local v3, "i":I
    :goto_f
    if-ltz v3, :cond_1e

    .line 325
    iget-object v4, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/LoaderManagerImpl;

    aput-object v4, v2, v3

    .line 324
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 327
    .end local v3    # "i":I
    :cond_1e
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v3

    .line 328
    .local v3, "doRetainLoaders":Z
    const/4 v4, 0x0

    .line 328
    .local v4, "i":I
    :goto_23
    if-ge v4, v1, :cond_4a

    .line 329
    aget-object v5, v2, v4

    .line 330
    .local v5, "lm":Landroid/support/v4/app/LoaderManagerImpl;
    iget-boolean v6, v5, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v6, :cond_37

    if-eqz v3, :cond_37

    .line 331
    iget-boolean v6, v5, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v6, :cond_34

    .line 332
    invoke-virtual {v5}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 334
    :cond_34
    invoke-virtual {v5}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    .line 336
    :cond_37
    iget-boolean v6, v5, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v6, :cond_3d

    .line 337
    const/4 v0, 0x1

    goto :goto_47

    .line 339
    :cond_3d
    invoke-virtual {v5}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 340
    iget-object v6, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v7, v5, Landroid/support/v4/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .end local v5    # "lm":Landroid/support/v4/app/LoaderManagerImpl;
    :goto_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 345
    .end local v1    # "N":I
    .end local v2    # "loaders":[Landroid/support/v4/app/LoaderManagerImpl;
    .end local v3    # "doRetainLoaders":Z
    .end local v4    # "i":I
    :cond_4a
    if-eqz v0, :cond_4f

    .line 346
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    return-object v1

    .line 348
    :cond_4f
    const/4 v1, 0x0

    return-object v1
.end method
