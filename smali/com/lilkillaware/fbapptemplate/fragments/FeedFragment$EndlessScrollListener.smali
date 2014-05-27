.class public Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EndlessScrollListener"
.end annotation


# instance fields
.field private _loading:Z

.field private _previousTotal:I

.field private _visibleThreshold:I

.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;


# direct methods
.method public constructor <init>(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)V
    .locals 1
    .parameter "this$0"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x4

    iput v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;->_visibleThreshold:I

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;->_previousTotal:I

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;->_loading:Z

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;I)V
    .locals 1
    .parameter "this$0"
    .parameter "visibleThreshold"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x4

    iput v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;->_visibleThreshold:I

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;->_previousTotal:I

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;->_loading:Z

    .line 118
    iput p2, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;->_visibleThreshold:I

    .line 119
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v2, 0x1

    .line 123
    iget-boolean v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;->_loading:Z

    if-eqz v0, :cond_0

    .line 124
    iget v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;->_previousTotal:I

    if-le p4, v0, :cond_0

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;->_loading:Z

    .line 126
    iput p4, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;->_previousTotal:I

    .line 129
    :cond_0
    iget-boolean v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;->_loading:Z

    if-nez v0, :cond_1

    if-eq p4, v2, :cond_1

    sub-int v0, p4, p3

    iget v1, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;->_visibleThreshold:I

    add-int/2addr v1, p2

    if-gt v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;

    #getter for: Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->access$000(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 134
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;

    #getter for: Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_adapter:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->access$100(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->loadFeed(Z)V

    .line 135
    iput-boolean v2, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;->_loading:Z

    .line 137
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 141
    return-void
.end method
