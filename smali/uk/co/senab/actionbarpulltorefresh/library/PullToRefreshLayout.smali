.class public Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;
.super Landroid/widget/FrameLayout;
.source "PullToRefreshLayout.java"


# instance fields
.field private mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 87
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 69
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 70
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onInterceptTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 77
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setPullToRefreshAttacher(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;)V
    .locals 5
    .parameter "attacher"
    .parameter "refreshListener"

    .prologue
    .line 52
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getChildCount()I

    move-result v2

    .local v2, z:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 53
    invoke-virtual {p0, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, view:Landroid/view/View;
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-virtual {v3, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->removeRefreshableView(Landroid/view/View;)V

    .line 59
    :cond_0
    if-eqz p1, :cond_1

    .line 60
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v3, p2, v4}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->addRefreshableView(Landroid/view/View;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;Z)V

    .line 52
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v1           #view:Landroid/view/View;
    :cond_2
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    .line 65
    return-void
.end method
