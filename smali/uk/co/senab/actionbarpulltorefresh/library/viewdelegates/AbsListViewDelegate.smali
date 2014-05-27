.class public Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/AbsListViewDelegate;
.super Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;
.source "AbsListViewDelegate.java"


# static fields
.field public static final SUPPORTED_VIEW_CLASS:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Landroid/widget/AbsListView;

    sput-object v0, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/AbsListViewDelegate;->SUPPORTED_VIEW_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public isScrolledToTop(Landroid/view/View;)Z
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 34
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView;

    .line 35
    .local v0, absListView:Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v2

    .line 37
    :cond_1
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_3

    .line 38
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, firstVisibleChild:Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    .end local v1           #firstVisibleChild:Landroid/view/View;
    :cond_3
    move v2, v3

    .line 41
    goto :goto_0
.end method
