.class Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;
.super Ljava/lang/Object;
.source "ReflectiveGenericLifecycleObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodReference"
.end annotation


# instance fields
.field final mCallType:I

.field final mMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(ILjava/lang/reflect/Method;)V
    .registers 5
    .param p1, "callType"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput p1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mCallType:I

    .line 193
    iput-object p2, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    .line 194
    iget-object v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 195
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 199
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 200
    return v0

    .line 202
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 206
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;

    .line 207
    .local v2, "that":Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;
    iget v3, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mCallType:I

    iget v4, v2, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mCallType:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    return v0

    .line 203
    .end local v2    # "that":Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;
    :cond_30
    :goto_30
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 212
    iget v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mCallType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
