.class final Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$DecorChildLayout;
.super Landroid/widget/FrameLayout;
.source "PullToRefreshAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DecorChildLayout"
.end annotation


# instance fields
.field private final mHeaderViewWrapper:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 6
    .parameter "context"
    .parameter "systemDecorView"
    .parameter "headerView"

    .prologue
    .line 919
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 922
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .local v2, z:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 923
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 924
    .local v0, child:Landroid/view/View;
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 925
    invoke-virtual {p0, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$DecorChildLayout;->addView(Landroid/view/View;)V

    .line 922
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 933
    .end local v0           #child:Landroid/view/View;
    :cond_0
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$DecorChildLayout;->mHeaderViewWrapper:Landroid/view/ViewGroup;

    .line 934
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$DecorChildLayout;->mHeaderViewWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 935
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$DecorChildLayout;->mHeaderViewWrapper:Landroid/view/ViewGroup;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {p0, v3, v4, v5}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$DecorChildLayout;->addView(Landroid/view/View;II)V

    .line 937
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "insets"

    .prologue
    .line 946
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$DecorChildLayout;->mHeaderViewWrapper:Landroid/view/ViewGroup;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 950
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method
