.class Landroid/support/v7/widget/TooltipCompatHandler;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final HOVER_HIDE_TIMEOUT_MS:J = 0x3a98L

.field private static final HOVER_HIDE_TIMEOUT_SHORT_MS:J = 0xbb8L

.field private static final LONG_CLICK_HIDE_TIMEOUT_MS:J = 0x9c4L

.field private static final TAG:Ljava/lang/String; = "TooltipCompatHandler"

.field private static sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private mAnchorX:I

.field private mAnchorY:I

.field private mFromTouch:Z

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private mPopup:Landroid/support/v7/widget/TooltipPopup;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private final mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "tooltipText"    # Ljava/lang/CharSequence;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/support/v7/widget/TooltipCompatHandler$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/TooltipCompatHandler$1;-><init>(Landroid/support/v7/widget/TooltipCompatHandler;)V

    iput-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Landroid/support/v7/widget/TooltipCompatHandler$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/TooltipCompatHandler$2;-><init>(Landroid/support/v7/widget/TooltipCompatHandler;)V

    iput-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    .line 92
    iput-object p1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 93
    iput-object p2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    .line 95
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 96
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/TooltipCompatHandler;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/TooltipCompatHandler;
    .param p1, "x1"    # Z

    .line 39
    invoke-direct {p0, p1}, Landroid/support/v7/widget/TooltipCompatHandler;->show(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/TooltipCompatHandler;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/v7/widget/TooltipCompatHandler;

    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/TooltipCompatHandler;->hide()V

    return-void
.end method

.method private hide()V
    .registers 3

    .line 173
    sget-object v0, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    if-ne v0, p0, :cond_1f

    .line 174
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    .line 175
    iget-object v1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    if-eqz v1, :cond_18

    .line 176
    iget-object v1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    invoke-virtual {v1}, Landroid/support/v7/widget/TooltipPopup;->hide()V

    .line 177
    iput-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    .line 178
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_1f

    .line 180
    :cond_18
    const-string v0, "TooltipCompatHandler"

    const-string v1, "sActiveHandler.mPopup == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 184
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 80
    sget-object v0, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    if-eqz v0, :cond_15

    sget-object v0, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    iget-object v0, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    if-ne v0, p0, :cond_15

    .line 81
    sget-object v0, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    invoke-direct {v0}, Landroid/support/v7/widget/TooltipCompatHandler;->hide()V

    .line 83
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 84
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_26

    .line 87
    :cond_21
    new-instance v0, Landroid/support/v7/widget/TooltipCompatHandler;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/TooltipCompatHandler;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 89
    :goto_26
    return-void
.end method

.method private show(Z)V
    .registers 10
    .param p1, "fromTouch"    # Z

    .line 145
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 146
    return-void

    .line 148
    :cond_9
    sget-object v0, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    if-eqz v0, :cond_12

    .line 149
    sget-object v0, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    invoke-direct {v0}, Landroid/support/v7/widget/TooltipCompatHandler;->hide()V

    .line 151
    :cond_12
    sput-object p0, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    .line 153
    iput-boolean p1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mFromTouch:Z

    .line 154
    new-instance v0, Landroid/support/v7/widget/TooltipPopup;

    iget-object v1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/TooltipPopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    .line 155
    iget-object v2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    iget-object v3, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget v4, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchorX:I

    iget v5, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchorY:I

    iget-boolean v6, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mFromTouch:Z

    iget-object v7, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/TooltipPopup;->show(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 160
    iget-boolean v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mFromTouch:Z

    if-eqz v0, :cond_3f

    .line 161
    const-wide/16 v0, 0x9c4

    .line 166
    .local v0, "timeout":J
    move-wide v4, v0

    goto :goto_5c

    .line 162
    .end local v0    # "timeout":J
    :cond_3f
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_53

    .line 164
    const-wide/16 v0, 0xbb8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    sub-long v4, v0, v2

    .line 164
    .local v4, "timeout":J
    goto :goto_5c

    .line 166
    .end local v4    # "timeout":J
    :cond_53
    const-wide/16 v0, 0x3a98

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    sub-long v4, v0, v2

    .line 166
    .restart local v4    # "timeout":J
    :goto_5c
    move-wide v0, v4

    .line 168
    .end local v4    # "timeout":J
    .restart local v0    # "timeout":J
    iget-object v2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 169
    iget-object v2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 109
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mFromTouch:Z

    if-eqz v0, :cond_a

    .line 110
    return v1

    .line 112
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 114
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 115
    return v1

    .line 117
    :cond_25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_35

    const/16 v3, 0xa

    if-eq v2, v3, :cond_31

    goto :goto_62

    .line 127
    :cond_31
    invoke-direct {p0}, Landroid/support/v7/widget/TooltipCompatHandler;->hide()V

    goto :goto_62

    .line 119
    :cond_35
    iget-object v2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_62

    iget-object v2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    if-nez v2, :cond_62

    .line 120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchorX:I

    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchorY:I

    .line 122
    iget-object v2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 123
    iget-object v2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    :cond_62
    :goto_62
    return v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchorX:I

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchorY:I

    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/TooltipCompatHandler;->show(Z)V

    .line 104
    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 137
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 141
    invoke-direct {p0}, Landroid/support/v7/widget/TooltipCompatHandler;->hide()V

    .line 142
    return-void
.end method
