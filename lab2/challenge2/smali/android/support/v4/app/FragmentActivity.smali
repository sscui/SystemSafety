.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/support/v4/app/BaseFragmentActivityApi16;
.source "FragmentActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Landroid/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentActivity$HostCallbacks;,
        Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    }
.end annotation


# static fields
.field static final ALLOCATED_REQUEST_INDICIES_TAG:Ljava/lang/String; = "android:support:request_indicies"

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field static final MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS:I = 0xfffe

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field static final NEXT_CANDIDATE_REQUEST_INDEX_TAG:Ljava/lang/String; = "android:support:next_request_index"

.field static final REQUEST_FRAGMENT_WHO_TAG:Ljava/lang/String; = "android:support:request_fragment_who"

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mCreated:Z

.field final mFragments:Landroid/support/v4/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field mNextCandidateRequestIndex:I

.field mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReallyStopped:Z

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mRetaining:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Landroid/support/v4/app/BaseFragmentActivityApi16;-><init>()V

    .line 81
    new-instance v0, Landroid/support/v4/app/FragmentActivity$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$HostCallbacks;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v0}, Landroid/support/v4/app/FragmentController;->createController(Landroid/support/v4/app/FragmentHostCallback;)Landroid/support/v4/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 105
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 869
    return-void
.end method

.method private allocateRequestIndex(Landroid/support/v4/app/Fragment;)I
    .registers 6
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 831
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    const v1, 0xfffe

    if-lt v0, v1, :cond_13

    .line 832
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many pending Fragment activity results."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    iget v2, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_25

    .line 837
    iget v0, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    goto :goto_13

    .line 841
    :cond_25
    iget v0, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 842
    .local v0, "requestIndex":I
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 843
    iget v2, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v1

    iput v2, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 846
    return v0
.end method

.method private static markState(Landroid/support/v4/app/FragmentManager;Landroid/arch/lifecycle/Lifecycle$State;)V
    .registers 6
    .param p0, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "state"    # Landroid/arch/lifecycle/Lifecycle$State;

    .line 961
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 962
    .local v0, "fragments":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/support/v4/app/Fragment;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 963
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v2, :cond_17

    .line 964
    goto :goto_8

    .line 966
    :cond_17
    iget-object v3, v2, Landroid/support/v4/app/Fragment;->mLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-virtual {v3, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->markState(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 967
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/support/v4/app/FragmentActivity;->markState(Landroid/support/v4/app/FragmentManager;Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 968
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_8

    .line 969
    :cond_24
    return-void
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 338
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method doReallyStop(Z)V
    .registers 4
    .param p1, "retaining"    # Z

    .line 652
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 653
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 654
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    .line 655
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 656
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onReallyStop()V

    goto :goto_1e

    .line 657
    :cond_12
    if-eqz p1, :cond_1e

    .line 662
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->doLoaderStart()V

    .line 663
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentController;->doLoaderStop(Z)V

    .line 665
    :cond_1e
    :goto_1e
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 637
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/BaseFragmentActivityApi16;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 638
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 639
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 640
    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 643
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 645
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 647
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/support/v4/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 648
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .line 606
    nop

    .line 607
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    .line 608
    .local v0, "nc":Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    if-eqz v0, :cond_c

    iget-object v1, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .registers 2

    .line 274
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityApi16;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .registers 2

    .line 700
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
    .registers 2

    .line 704
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 137
    shr-int/lit8 v0, p1, 0x10

    .line 138
    .local v0, "requestIndex":I
    if-eqz v0, :cond_49

    .line 139
    add-int/lit8 v0, v0, -0x1

    .line 141
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    .local v1, "who":Ljava/lang/String;
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 143
    if-nez v1, :cond_22

    .line 144
    const-string v2, "FragmentActivity"

    const-string v3, "Activity result delivered for unknown Fragment."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 147
    :cond_22
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 148
    .local v2, "targetFragment":Landroid/support/v4/app/Fragment;
    if-nez v2, :cond_41

    .line 149
    const-string v3, "FragmentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity result no fragment exists for who: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 151
    :cond_41
    const v3, 0xffff

    and-int/2addr v3, p1

    invoke-virtual {v2, v3, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 153
    :goto_48
    return-void

    .line 156
    .end local v1    # "who":Ljava/lang/String;
    .end local v2    # "targetFragment":Landroid/support/v4/app/Fragment;
    :cond_49
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onActivityResult(IILandroid/content/Intent;)V

    .line 157
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 693
    return-void
.end method

.method public onBackPressed()V
    .registers 5

    .line 165
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 166
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->isStateSaved()Z

    move-result v1

    .line 167
    .local v1, "isStateSaved":Z
    if-eqz v1, :cond_13

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_13

    .line 172
    return-void

    .line 174
    :cond_13
    if-nez v1, :cond_1b

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 175
    :cond_1b
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onBackPressed()V

    .line 177
    :cond_1e
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 268
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 269
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 270
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 283
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentController;->attachHost(Landroid/support/v4/app/Fragment;)V

    .line 285
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onCreate(Landroid/os/Bundle;)V

    .line 287
    nop

    .line 288
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    .line 289
    .local v0, "nc":Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    if-eqz v0, :cond_19

    .line 290
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    iget-object v3, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentController;->restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 292
    :cond_19
    const/4 v2, 0x0

    if-eqz p1, :cond_70

    .line 293
    const-string v3, "android:support:fragments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 294
    .local v3, "p":Landroid/os/Parcelable;
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    if-eqz v0, :cond_29

    iget-object v1, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Landroid/support/v4/app/FragmentManagerNonConfig;

    nop

    :cond_29
    invoke-virtual {v4, v3, v1}, Landroid/support/v4/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V

    .line 297
    const-string v1, "android:support:next_request_index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 298
    const-string v1, "android:support:next_request_index"

    .line 299
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 300
    const-string v1, "android:support:request_indicies"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 301
    .local v1, "requestCodes":[I
    const-string v4, "android:support:request_fragment_who"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "fragmentWhos":[Ljava/lang/String;
    if-eqz v1, :cond_69

    if-eqz v4, :cond_69

    array-length v5, v1

    array-length v6, v4

    if-eq v5, v6, :cond_51

    goto :goto_69

    .line 306
    :cond_51
    new-instance v5, Landroid/support/v4/util/SparseArrayCompat;

    array-length v6, v1

    invoke-direct {v5, v6}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    iput-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    .line 307
    const/4 v5, 0x0

    .line 307
    .local v5, "i":I
    :goto_5a
    array-length v6, v1

    if-ge v5, v6, :cond_70

    .line 308
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    aget v7, v1, v5

    aget-object v8, v4, v5

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 307
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    .line 304
    .end local v5    # "i":I
    :cond_69
    :goto_69
    const-string v5, "FragmentActivity"

    const-string v6, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v1    # "requestCodes":[I
    .end local v3    # "p":Landroid/os/Parcelable;
    .end local v4    # "fragmentWhos":[Ljava/lang/String;
    :cond_70
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v1, :cond_7d

    .line 315
    new-instance v1, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v1}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    .line 316
    iput v2, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 319
    :cond_7d
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->dispatchCreate()V

    .line 320
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 327
    if-nez p1, :cond_12

    .line 328
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 329
    .local v0, "show":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 330
    return v0

    .line 332
    .end local v0    # "show":Z
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onDestroy()V
    .registers 2

    .line 346
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onDestroy()V

    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 350
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchDestroy()V

    .line 351
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->doLoaderDestroy()V

    .line 352
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .line 359
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onLowMemory()V

    .line 360
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchLowMemory()V

    .line 361
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 368
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 369
    const/4 v0, 0x1

    return v0

    .line 372
    :cond_8
    if-eqz p1, :cond_16

    const/4 v0, 0x6

    if-eq p1, v0, :cond_f

    .line 380
    const/4 v0, 0x0

    return v0

    .line 377
    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 374
    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 3
    .param p1, "isInMultiWindowMode"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 245
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentController;->dispatchMultiWindowModeChanged(Z)V

    .line 246
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 423
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onNewIntent(Landroid/content/Intent;)V

    .line 424
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 425
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 389
    if-eqz p1, :cond_3

    goto :goto_8

    .line 391
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 394
    :goto_8
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onPanelClosed(ILandroid/view/Menu;)V

    .line 395
    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 402
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onPause()V

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 404
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 405
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 408
    :cond_17
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchPause()V

    .line 409
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 3
    .param p1, "isInPictureInPictureMode"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 260
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentController;->dispatchPictureInPictureModeChanged(Z)V

    .line 261
    return-void
.end method

.method protected onPostResume()V
    .registers 3

    .line 457
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onPostResume()V

    .line 458
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 460
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z

    .line 461
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 491
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 478
    if-nez p1, :cond_10

    if-eqz p3, :cond_10

    .line 479
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 480
    .local v0, "goforit":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 481
    return v0

    .line 483
    .end local v0    # "goforit":Z
    :cond_10
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method onReallyStop()V
    .registers 3

    .line 675
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentController;->doLoaderStop(Z)V

    .line 677
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchReallyStop()V

    .line 678
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 758
    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 759
    .local v0, "index":I
    if-eqz v0, :cond_44

    .line 760
    add-int/lit8 v0, v0, -0x1

    .line 762
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 763
    .local v2, "who":Ljava/lang/String;
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 764
    if-nez v2, :cond_21

    .line 765
    const-string v1, "FragmentActivity"

    const-string v3, "Activity result delivered for unknown Fragment."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    return-void

    .line 768
    :cond_21
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 769
    .local v3, "frag":Landroid/support/v4/app/Fragment;
    if-nez v3, :cond_40

    .line 770
    const-string v1, "FragmentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity result no fragment exists for who: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 772
    :cond_40
    and-int/2addr v1, p1

    invoke-virtual {v3, v1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 775
    .end local v2    # "who":Ljava/lang/String;
    .end local v3    # "frag":Landroid/support/v4/app/Fragment;
    :cond_44
    :goto_44
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 446
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onResume()V

    .line 447
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 449
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z

    .line 450
    return-void
.end method

.method protected onResumeFragments()V
    .registers 2

    .line 470
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchResume()V

    .line 471
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .line 597
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 5

    .line 501
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    if-eqz v0, :cond_8

    .line 502
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 505
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 507
    .local v0, "custom":Ljava/lang/Object;
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->retainNestedNonConfig()Landroid/support/v4/app/FragmentManagerNonConfig;

    move-result-object v1

    .line 508
    .local v1, "fragments":Landroid/support/v4/app/FragmentManagerNonConfig;
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentController;->retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v2

    .line 510
    .local v2, "loaders":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<Ljava/lang/String;Landroid/support/v4/app/LoaderManager;>;"
    if-nez v1, :cond_20

    if-nez v2, :cond_20

    if-nez v0, :cond_20

    .line 511
    const/4 v3, 0x0

    return-object v3

    .line 514
    :cond_20
    new-instance v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    invoke-direct {v3}, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    .line 515
    .local v3, "nci":Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    iput-object v0, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    .line 516
    iput-object v1, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 517
    iput-object v2, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/util/SimpleArrayMap;

    .line 518
    return-object v3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 526
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 527
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentActivity;->markState(Landroid/support/v4/app/FragmentManager;Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 528
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 529
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_19

    .line 530
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 532
    :cond_19
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    if-lez v1, :cond_60

    .line 533
    const-string v1, "android:support:next_request_index"

    iget v2, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 535
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 536
    .local v1, "requestCodes":[I
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 537
    .local v2, "fragmentWhos":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 537
    .local v3, "i":I
    :goto_39
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    if-ge v3, v4, :cond_56

    .line 538
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 539
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 537
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 541
    .end local v3    # "i":I
    :cond_56
    const-string v3, "android:support:request_indicies"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 542
    const-string v3, "android:support:request_fragment_who"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 544
    .end local v1    # "requestCodes":[I
    .end local v2    # "fragmentWhos":[Ljava/lang/String;
    :cond_60
    return-void
.end method

.method protected onStart()V
    .registers 3

    .line 552
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onStart()V

    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 555
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 556
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 558
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    if-nez v0, :cond_19

    .line 559
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    .line 560
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchActivityCreated()V

    .line 563
    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 564
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z

    .line 566
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->doLoaderStart()V

    .line 570
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchStart()V

    .line 571
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->reportLoaderStart()V

    .line 572
    return-void
.end method

.method public onStateNotSaved()V
    .registers 2

    .line 432
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 433
    return-void
.end method

.method protected onStop()V
    .registers 4

    .line 579
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityApi16;->onStop()V

    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 582
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v1, v2}, Landroid/support/v4/app/FragmentActivity;->markState(Landroid/support/v4/app/FragmentManager;Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 583
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 585
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchStop()V

    .line 586
    return-void
.end method

.method requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .registers 8
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 854
    const/4 v0, -0x1

    if-ne p3, v0, :cond_7

    .line 855
    invoke-static {p0, p2, p3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 856
    return-void

    .line 858
    :cond_7
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 860
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 861
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroid/support/v4/app/Fragment;)I

    move-result v1

    .line 862
    .local v1, "requestIndex":I
    add-int/lit8 v2, v1, 0x1

    shl-int/lit8 v2, v2, 0x10

    const v3, 0xffff

    and-int/2addr v3, p3

    add-int/2addr v2, v3

    invoke-static {p0, p2, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_22

    .line 865
    .end local v1    # "requestIndex":I
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 866
    nop

    .line 867
    return-void

    .line 865
    :catchall_22
    move-exception v1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    throw v1
.end method

.method public setEnterSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/support/v4/app/SharedElementCallback;

    .line 201
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V

    .line 202
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/v4/app/SharedElementCallback;

    .line 214
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V

    .line 215
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 715
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_a

    .line 716
    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    .line 717
    invoke-static {p2}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 720
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityApi16;->startActivityForResult(Landroid/content/Intent;I)V

    .line 721
    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityApi16;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .line 782
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 783
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 9
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 792
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_f

    .line 793
    :try_start_7
    invoke-static {p0, p2, v0, p4}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_d

    .line 801
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 794
    return-void

    .line 801
    :catchall_d
    move-exception v0

    goto :goto_26

    .line 796
    :cond_f
    :try_start_f
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 797
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroid/support/v4/app/Fragment;)I

    move-result v0

    .line 798
    .local v0, "requestIndex":I
    add-int/lit8 v2, v0, 0x1

    shl-int/lit8 v2, v2, 0x10

    const v3, 0xffff

    and-int/2addr v3, p3

    add-int/2addr v2, v3

    invoke-static {p0, p2, v2, p4}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_d

    .line 801
    .end local v0    # "requestIndex":I
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 802
    nop

    .line 803
    return-void

    .line 801
    :goto_26
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    throw v0
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 7
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 67
    invoke-super/range {p0 .. p6}, Landroid/support/v4/app/BaseFragmentActivityApi16;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 8
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 67
    invoke-super/range {p0 .. p7}, Landroid/support/v4/app/BaseFragmentActivityApi16;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 22
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

    move-object v9, p0

    move/from16 v10, p3

    .line 811
    const/4 v1, 0x1

    iput-boolean v1, v9, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 813
    const/4 v1, -0x1

    const/4 v11, 0x0

    if-ne v10, v1, :cond_20

    .line 814
    move-object v1, v9

    move-object v2, p2

    move v3, v10

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    :try_start_17
    invoke-static/range {v1 .. v8}, Landroid/support/v4/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1d

    .line 824
    iput-boolean v11, v9, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 816
    return-void

    .line 824
    :catchall_1d
    move-exception v0

    move-object v1, v0

    goto :goto_45

    .line 818
    :cond_20
    :try_start_20
    invoke-static/range {p3 .. p3}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 819
    invoke-direct {v9, p1}, Landroid/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroid/support/v4/app/Fragment;)I

    move-result v1

    move v12, v1

    .line 820
    .local v12, "requestIndex":I
    add-int/lit8 v1, v12, 0x1

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, v10

    add-int v3, v1, v2

    move-object v1, v9

    move-object v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Landroid/support/v4/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_1d

    .line 824
    .end local v12    # "requestIndex":I
    iput-boolean v11, v9, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 825
    nop

    .line 826
    return-void

    .line 824
    :goto_45
    iput-boolean v11, v9, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    throw v1
.end method

.method public supportFinishAfterTransition()V
    .registers 1

    .line 189
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    .line 190
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 622
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 623
    return-void
.end method

.method public supportPostponeEnterTransition()V
    .registers 1

    .line 222
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 223
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .registers 1

    .line 230
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 231
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .registers 3
    .param p1, "requestCode"    # I

    .line 732
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    if-nez v0, :cond_a

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 734
    invoke-static {p1}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 736
    :cond_a
    return-void
.end method
