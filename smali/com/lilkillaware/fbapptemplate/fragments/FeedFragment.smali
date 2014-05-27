.class public Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;
.super Landroid/support/v4/app/ListFragment;
.source "FeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;
    }
.end annotation


# static fields
.field private static final SCREEN_LABEL:Ljava/lang/String; = "Feed Screen"


# instance fields
.field private _activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

.field private _adapter:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

.field private _listView:Landroid/widget/ListView;

.field private _pullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_adapter:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_pullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_listView:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    .line 40
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getPullToRefreshAttacher()Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_pullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    .line 41
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_pullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_pullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_listView:Landroid/widget/ListView;

    new-instance v2, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$1;

    invoke-direct {v2, p0}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$1;-><init>(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)V

    invoke-virtual {v0, v1, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->addRefreshableView(Landroid/view/View;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 52
    new-instance v0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    new-instance v2, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$2;

    invoke-direct {v2, p0}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$2;-><init>(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;-><init>(Landroid/app/Activity;Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$Listener;)V

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_adapter:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    .line 75
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_adapter:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_listView:Landroid/widget/ListView;

    new-instance v1, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;

    invoke-direct {v1, p0}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$EndlessScrollListener;-><init>(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 77
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "parent"
    .parameter "savedInstanceState"

    .prologue
    .line 94
    sget v0, Lcom/lilkillaware/fbapptemplate/R$layout;->fragment_feed:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_listView:Landroid/widget/ListView;

    .line 95
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_listView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 103
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    .line 104
    .local v0, gaTracker:Lcom/google/analytics/tracking/android/Tracker;
    const-string v1, "&cd"

    const-string v2, "Feed Screen"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/google/analytics/tracking/android/MapBuilder;->createAppView()Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 106
    return-void
.end method
