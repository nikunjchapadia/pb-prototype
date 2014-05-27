.class public Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lilkillaware/fbapptemplate/model/FeedItem;",
        ">;"
    }
.end annotation


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _inflater:Landroid/view/LayoutInflater;

.field private _listener:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$Listener;

.field private fb:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$Listener;)V
    .locals 2
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 31
    const v1, 0x1090004

    invoke-direct {p0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 32
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->_inflater:Landroid/view/LayoutInflater;

    .line 33
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->_activity:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->_listener:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$Listener;

    .line 36
    new-instance v1, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

    invoke-direct {v1, p1}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->fb:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, loadNext:Z
    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->loadFeed(Z)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;)Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->_listener:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$Listener;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 107
    if-nez p2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->_inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/lilkillaware/fbapptemplate/R$layout;->list_fb_feed:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lilkillaware/fbapptemplate/view/FeedView;

    .line 113
    .local v1, view:Lcom/lilkillaware/fbapptemplate/view/FeedView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    .line 114
    .local v0, item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    invoke-virtual {v1, v0, p1}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->showFeed(Lcom/lilkillaware/fbapptemplate/model/FeedItem;I)V

    .line 116
    return-object v1

    .end local v0           #item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    .end local v1           #view:Lcom/lilkillaware/fbapptemplate/view/FeedView;
    :cond_0
    move-object v1, p2

    .line 110
    check-cast v1, Lcom/lilkillaware/fbapptemplate/view/FeedView;

    .restart local v1       #view:Lcom/lilkillaware/fbapptemplate/view/FeedView;
    goto :goto_0
.end method

.method protected isItemAlreadyInAdapter(Lcom/lilkillaware/fbapptemplate/model/FeedItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 98
    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    .line 99
    .local v1, oldItem:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    iget-object v2, v1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    const/4 v2, 0x1

    .line 102
    .end local v1           #oldItem:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    :goto_1
    return v2

    .line 97
    .restart local v1       #oldItem:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v1           #oldItem:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public loadFeed(Z)V
    .locals 4
    .parameter "loadNext"

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->fb:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

    new-instance v3, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;-><init>(Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;Z)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, p1, v1, v3, v0}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->getFeed(ZZLcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;Z)V

    .line 94
    return-void

    :cond_0
    move v0, v1

    .line 43
    goto :goto_0
.end method
