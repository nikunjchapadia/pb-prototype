.class public Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
.super Ljava/lang/Object;
.source "PullToRefreshAttacher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewParams;,
        Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$DecorChildLayout;,
        Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AnimationCallback;,
        Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;,
        Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$EnvironmentDelegate;,
        Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;,
        Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;,
        Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;,
        Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_ANIM_HEADER_IN:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_ANIM_HEADER_OUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_HEADER_LAYOUT:I = 0x0

.field private static final DEFAULT_REFRESH_MINIMIZE:Z = true

.field private static final DEFAULT_REFRESH_MINIMIZED_DELAY:I = 0xbb8

.field private static final DEFAULT_REFRESH_ON_UP:Z = false

.field private static final DEFAULT_REFRESH_SCROLL_DISTANCE:F = 0.5f

.field private static final LOG_TAG:Ljava/lang/String; = "PullToRefreshAttacher"


# instance fields
.field private mEnabled:Z

.field private final mEnvironmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$EnvironmentDelegate;

.field private final mHandler:Landroid/os/Handler;

.field private final mHeaderInAnimation:Landroid/view/animation/Animation;

.field private final mHeaderOutAnimation:Landroid/view/animation/Animation;

.field private final mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;

.field private final mHeaderView:Landroid/view/View;

.field private mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;

.field private mInitialMotionY:I

.field private mIsBeingDragged:Z

.field private mIsHandlingTouchEvent:Z

.field private mIsRefreshing:Z

.field private mLastMotionY:I

.field private mPullBeginY:I

.field private final mRefreshMinimize:Z

.field private final mRefreshMinimizeDelay:I

.field private final mRefreshMinimizeRunnable:Ljava/lang/Runnable;

.field private final mRefreshOnUp:Z

.field private final mRefreshScrollDistance:F

.field private final mRefreshableViews:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget v0, Luk/co/senab/actionbarpulltorefresh/library/R$layout;->default_header:I

    sput v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->DEFAULT_HEADER_LAYOUT:I

    .line 45
    sget v0, Luk/co/senab/actionbarpulltorefresh/library/R$anim;->fade_in:I

    sput v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->DEFAULT_ANIM_HEADER_IN:I

    .line 46
    sget v0, Luk/co/senab/actionbarpulltorefresh/library/R$anim;->fade_out:I

    sput v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->DEFAULT_ANIM_HEADER_OUT:I

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;)V
    .locals 8
    .parameter "activity"
    .parameter "options"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v7, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mEnabled:Z

    .line 77
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHandler:Landroid/os/Handler;

    .line 965
    new-instance v3, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;

    invoke-direct {v3, p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;-><init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)V

    iput-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeRunnable:Ljava/lang/Runnable;

    .line 109
    if-nez p2, :cond_0

    .line 110
    const-string v3, "PullToRefreshAttacher"

    const-string v4, "Given null options so using default options."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance p2, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;

    .end local p2
    invoke-direct {p2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;-><init>()V

    .line 114
    .restart local p2
    :cond_0
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    .line 117
    iget v3, p2, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->refreshScrollDistance:F

    iput v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshScrollDistance:F

    .line 118
    iget-boolean v3, p2, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->refreshOnUp:Z

    iput-boolean v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshOnUp:Z

    .line 119
    iget v3, p2, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->refreshMinimizeDelay:I

    iput v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeDelay:I

    .line 120
    iget-boolean v3, p2, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->refreshMinimize:Z

    iput-boolean v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimize:Z

    .line 123
    iget-object v3, p2, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->environmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$EnvironmentDelegate;

    if-eqz v3, :cond_4

    iget-object v3, p2, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->environmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$EnvironmentDelegate;

    :goto_0
    iput-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mEnvironmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$EnvironmentDelegate;

    .line 127
    iget-object v3, p2, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->headerTransformer:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;

    if-eqz v3, :cond_5

    iget-object v3, p2, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->headerTransformer:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;

    :goto_1
    iput-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;

    .line 131
    iget v3, p2, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->headerInAnimation:I

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderInAnimation:Landroid/view/animation/Animation;

    .line 133
    iget v3, p2, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->headerOutAnimation:I

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderOutAnimation:Landroid/view/animation/Animation;

    .line 135
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderOutAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_1

    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_3

    .line 136
    :cond_1
    new-instance v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AnimationCallback;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AnimationCallback;-><init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;)V

    .line 137
    .local v0, callback:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AnimationCallback;
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_2

    .line 138
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 139
    :cond_2
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderOutAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_3

    .line 140
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 144
    .end local v0           #callback:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AnimationCallback;
    :cond_3
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mTouchSlop:I

    .line 147
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 151
    .local v2, decorView:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ne v3, v7, :cond_6

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$DecorChildLayout;

    if-eqz v3, :cond_6

    .line 153
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "View already installed to DecorView. This shouldn\'t happen."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 123
    .end local v2           #decorView:Landroid/view/ViewGroup;
    :cond_4
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->createDefaultEnvironmentDelegate()Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$EnvironmentDelegate;

    move-result-object v3

    goto :goto_0

    .line 127
    :cond_5
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->createDefaultHeaderTransformer()Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;

    move-result-object v3

    goto :goto_1

    .line 158
    .restart local v2       #decorView:Landroid/view/ViewGroup;
    :cond_6
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mEnvironmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$EnvironmentDelegate;

    invoke-virtual {v3, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$EnvironmentDelegate;->getContextForInflater(Landroid/app/Activity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget v4, p2, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->headerLayout:I

    invoke-virtual {v3, v4, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    .line 161
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    if-nez v3, :cond_7

    .line 162
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must supply valid layout id for header."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 165
    :cond_7
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 170
    new-instance v1, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$DecorChildLayout;

    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    invoke-direct {v1, p1, v2, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$DecorChildLayout;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 174
    .local v1, decorContents:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$DecorChildLayout;
    invoke-virtual {v2, v1, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 178
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;

    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    invoke-virtual {v3, p1, v4}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;->onViewCreated(Landroid/app/Activity;Landroid/view/View;)V

    .line 180
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;

    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    invoke-virtual {v3, v4}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;->onViewCreated(Landroid/view/View;)V

    .line 181
    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 41
    sget v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->DEFAULT_HEADER_LAYOUT:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 41
    sget v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->DEFAULT_ANIM_HEADER_OUT:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 41
    sget v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->DEFAULT_ANIM_HEADER_IN:I

    return v0
.end method

.method static synthetic access$400(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$500(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;

    return-object v0
.end method

.method static synthetic access$700(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;

    return-object v0
.end method

.method static synthetic access$800(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private canRefresh(ZLuk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;)Z
    .locals 1
    .parameter "fromTouch"
    .parameter "listener"

    .prologue
    .line 639
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkScrollForRefresh(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    const/4 v0, 0x1

    .line 593
    iget-boolean v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshOnUp:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 594
    iget v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mLastMotionY:I

    iget v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mPullBeginY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->getScrollNeededForRefresh(Landroid/view/View;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 595
    invoke-direct {p0, p1, v0, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setRefreshingInt(Landroid/view/View;ZZ)V

    .line 599
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static get(Landroid/app/Activity;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
    .locals 1
    .parameter "activity"

    .prologue
    .line 90
    new-instance v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;

    invoke-direct {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;-><init>()V

    invoke-static {p0, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->get(Landroid/app/Activity;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/app/Activity;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
    .locals 1
    .parameter "activity"
    .parameter "options"

    .prologue
    .line 105
    new-instance v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-direct {v0, p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;-><init>(Landroid/app/Activity;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;)V

    return-object v0
.end method

.method private getRefreshListenerForView(Landroid/view/View;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;
    .locals 2
    .parameter "view"

    .prologue
    .line 623
    if-eqz p1, :cond_0

    .line 624
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewParams;

    .line 625
    .local v0, params:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewParams;
    if-eqz v0, :cond_0

    .line 626
    iget-object v1, v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewParams;->onRefreshListener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;

    .line 629
    .end local v0           #params:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewParams;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getScrollNeededForRefresh(Landroid/view/View;)F
    .locals 2
    .parameter "view"

    .prologue
    .line 643
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshScrollDistance:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private reset(Z)V
    .locals 2
    .parameter "fromTouch"

    .prologue
    .line 648
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    .line 651
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimize:Z

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 656
    :cond_0
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->hideHeaderView()V

    .line 657
    return-void
.end method

.method private setRefreshingInt(Landroid/view/View;ZZ)V
    .locals 1
    .parameter "view"
    .parameter "refreshing"
    .parameter "fromTouch"

    .prologue
    .line 608
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    if-ne v0, p2, :cond_0

    .line 620
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->resetTouch()V

    .line 614
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->getRefreshListenerForView(Landroid/view/View;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->canRefresh(ZLuk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    invoke-direct {p0, p1, p3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->startRefresh(Landroid/view/View;Z)V

    goto :goto_0

    .line 618
    :cond_1
    invoke-direct {p0, p3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->reset(Z)V

    goto :goto_0
.end method

.method private startRefresh(Landroid/view/View;Z)V
    .locals 5
    .parameter "view"
    .parameter "fromTouch"

    .prologue
    .line 661
    const/4 v1, 0x1

    iput-boolean v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    .line 664
    if-eqz p2, :cond_0

    .line 665
    invoke-direct {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->getRefreshListenerForView(Landroid/view/View;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;

    move-result-object v0

    .line 666
    .local v0, listener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;
    if-eqz v0, :cond_0

    .line 667
    invoke-interface {v0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;->onRefreshStarted(Landroid/view/View;)V

    .line 672
    .end local v0           #listener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;
    :cond_0
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;

    invoke-virtual {v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;->onRefreshStarted()V

    .line 675
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->showHeaderView()V

    .line 678
    iget-boolean v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimize:Z

    if-eqz v1, :cond_1

    .line 679
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeRunnable:Ljava/lang/Runnable;

    iget v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeDelay:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 681
    :cond_1
    return-void
.end method


# virtual methods
.method public addRefreshableView(Landroid/view/View;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;)V
    .locals 1
    .parameter "view"
    .parameter "refreshListener"

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->addRefreshableView(Landroid/view/View;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;)V

    .line 195
    return-void
.end method

.method public addRefreshableView(Landroid/view/View;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;)V
    .locals 1
    .parameter "view"
    .parameter "viewDelegate"
    .parameter "refreshListener"

    .prologue
    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->addRefreshableView(Landroid/view/View;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;Z)V

    .line 212
    return-void
.end method

.method addRefreshableView(Landroid/view/View;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;Z)V
    .locals 2
    .parameter "view"
    .parameter "viewDelegate"
    .parameter "refreshListener"
    .parameter "setTouchListener"

    .prologue
    .line 232
    if-nez p1, :cond_1

    .line 233
    const-string v0, "PullToRefreshAttacher"

    const-string v1, "Refreshable View is null."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    if-nez p3, :cond_2

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OnRefreshListener not given. Please provide one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_2
    if-nez p2, :cond_3

    .line 244
    invoke-static {p1}, Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;->getBuiltInViewDelegate(Landroid/view/View;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;

    move-result-object p2

    .line 245
    if-nez p2, :cond_3

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No view handler found. Please provide one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_3
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    new-instance v1, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewParams;

    invoke-direct {v1, p2, p3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewParams;-><init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    if-eqz p4, :cond_0

    .line 255
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public clearRefreshableViews()V
    .locals 4

    .prologue
    .line 276
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 277
    .local v2, views:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 278
    .local v1, view:Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 280
    .end local v1           #view:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->clear()V

    .line 281
    return-void
.end method

.method protected createDefaultEnvironmentDelegate()Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$EnvironmentDelegate;
    .locals 1

    .prologue
    .line 585
    new-instance v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$EnvironmentDelegate;

    invoke-direct {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$EnvironmentDelegate;-><init>()V

    return-object v0
.end method

.method protected createDefaultHeaderTransformer()Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;
    .locals 1

    .prologue
    .line 589
    new-instance v0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;

    invoke-direct {v0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;-><init>()V

    return-object v0
.end method

.method public getHeaderTransformer()Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;

    return-object v0
.end method

.method public final getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method hideHeaderView()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 564
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 566
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderOutAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;->onReset()V

    .line 576
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;->onStateChanged(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mEnabled:Z

    return v0
.end method

.method public final isRefreshing()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 291
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;->onViewCreated(Landroid/view/View;)V

    .line 292
    return-void
.end method

.method final onInterceptTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 397
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isRefreshing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v3

    .line 401
    :cond_1
    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewParams;

    .line 402
    .local v0, params:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewParams;
    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 440
    :cond_2
    :goto_1
    iget-boolean v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    goto :goto_0

    .line 410
    :pswitch_0
    iget-boolean v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-nez v3, :cond_2

    iget v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mInitialMotionY:I

    if-lez v3, :cond_2

    .line 411
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 412
    .local v1, y:I
    iget v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mInitialMotionY:I

    sub-int v2, v1, v3

    .line 414
    .local v2, yDiff:I
    iget v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mTouchSlop:I

    if-le v2, v3, :cond_3

    .line 415
    iput-boolean v5, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    .line 416
    invoke-virtual {p0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onPullStarted(I)V

    goto :goto_1

    .line 417
    :cond_3
    iget v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mTouchSlop:I

    neg-int v3, v3

    if-ge v2, v3, :cond_2

    .line 418
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->resetTouch()V

    goto :goto_1

    .line 426
    .end local v1           #y:I
    .end local v2           #yDiff:I
    :pswitch_1
    iget-object v3, v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewParams;->onRefreshListener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;

    invoke-direct {p0, v5, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->canRefresh(ZLuk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewParams;->viewDelegate:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;

    invoke-virtual {v3, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;->isScrolledToTop(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 428
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mInitialMotionY:I

    goto :goto_1

    .line 435
    :pswitch_2
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->resetTouch()V

    goto :goto_1

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method onPull(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    .line 523
    invoke-direct {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->getScrollNeededForRefresh(Landroid/view/View;)F

    move-result v0

    .line 524
    .local v0, pxScrollForRefresh:F
    iget v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mPullBeginY:I

    sub-int v1, p2, v2

    .line 526
    .local v1, scrollLength:I
    int-to-float v2, v1

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    .line 527
    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;

    int-to-float v3, v1

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;->onPulled(F)V

    .line 535
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-boolean v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshOnUp:Z

    if-eqz v2, :cond_1

    .line 530
    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;

    invoke-virtual {v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;->onReleaseToRefresh()V

    goto :goto_0

    .line 532
    :cond_1
    invoke-direct {p0, p1, v3, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setRefreshingInt(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method onPullEnded()V
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    if-nez v0, :cond_0

    .line 542
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->reset(Z)V

    .line 544
    :cond_0
    return-void
.end method

.method onPullStarted(I)V
    .locals 0
    .parameter "y"

    .prologue
    .line 514
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->showHeaderView()V

    .line 515
    iput p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mPullBeginY:I

    .line 516
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 378
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsHandlingTouchEvent:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onInterceptTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsHandlingTouchEvent:Z

    .line 382
    :cond_0
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsHandlingTouchEvent:Z

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p0, p1, p2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 387
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method final onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 450
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v3

    .line 454
    :cond_1
    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewParams;

    .line 455
    .local v0, params:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewParams;
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 501
    :cond_2
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 462
    :pswitch_0
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isRefreshing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 466
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 468
    .local v1, y:I
    iget-boolean v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    iget v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mLastMotionY:I

    if-eq v1, v3, :cond_2

    .line 469
    iget v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mLastMotionY:I

    sub-int v2, v1, v3

    .line 476
    .local v2, yDx:I
    iget v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mTouchSlop:I

    neg-int v3, v3

    if-lt v2, v3, :cond_3

    .line 477
    invoke-virtual {p0, p1, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onPull(Landroid/view/View;I)V

    .line 479
    if-lez v2, :cond_2

    .line 480
    iput v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mLastMotionY:I

    goto :goto_1

    .line 483
    :cond_3
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onPullEnded()V

    .line 484
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->resetTouch()V

    goto :goto_1

    .line 492
    .end local v1           #y:I
    .end local v2           #yDx:I
    :pswitch_1
    invoke-direct {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->checkScrollForRefresh(Landroid/view/View;)Z

    .line 493
    iget-boolean v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-eqz v3, :cond_4

    .line 494
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onPullEnded()V

    .line 496
    :cond_4
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->resetTouch()V

    goto :goto_1

    .line 459
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeRefreshableView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 266
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 270
    :cond_0
    return-void
.end method

.method resetTouch()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 505
    iput-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    .line 506
    iput-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsHandlingTouchEvent:Z

    .line 507
    const/4 v0, -0x1

    iput v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mPullBeginY:I

    iput v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mLastMotionY:I

    iput v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mInitialMotionY:I

    .line 508
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 328
    iput-boolean p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mEnabled:Z

    .line 330
    if-nez p1, :cond_0

    .line 332
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->resetTouch()V

    .line 335
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->reset(Z)V

    .line 339
    :cond_0
    return-void
.end method

.method public final setHeaderViewListener(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 358
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;

    .line 359
    return-void
.end method

.method public final setRefreshComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setRefreshingInt(Landroid/view/View;ZZ)V

    .line 349
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 2
    .parameter "refreshing"

    .prologue
    .line 302
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setRefreshingInt(Landroid/view/View;ZZ)V

    .line 303
    return-void
.end method

.method showHeaderView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 547
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderInAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 559
    :cond_0
    :goto_0
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 561
    :cond_1
    return-void

    .line 554
    :cond_2
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;->onStateChanged(Landroid/view/View;I)V

    goto :goto_0
.end method
