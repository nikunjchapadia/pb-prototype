.class public Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;
.super Ljava/lang/Object;
.source "FBFeedGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;
    }
.end annotation


# static fields
.field private static final BASE_GRAPH_URL:Ljava/lang/String; = "https://graph.facebook.com/"

.field private static final FB_GRAPH_QUERY_FEED:Ljava/lang/String; = null

.field private static final FB_GRAPH_QUERY_ONLY_LAST:Ljava/lang/String; = "feed.limit(1).fields(id,object_id,message,picture,source,link,name,description,type,from,likes.limit(1).summary(1),comments.limit(100).fields(message,from.fields(name,picture.type(small)))),name,picture.type(large),link"

.field private static LIMIT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

.field private _context:Landroid/content/Context;

.field private _fbPageId:Ljava/lang/String;

.field private _nextPage:Ljava/lang/String;

.field private _profileImage:Ljava/lang/String;

.field private _profileLink:Ljava/lang/String;

.field private _profileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-class v0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->TAG:Ljava/lang/String;

    .line 56
    const/16 v0, 0xf

    sput v0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->LIMIT:I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feed.limit("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->LIMIT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ").fields(id,object_id,message,picture,source,link,name,description,type,from,likes.limit(1).summary(1),comments.limit(100).fields(message,from.fields(name,picture.type(small)))),name,picture.type(large),link"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->FB_GRAPH_QUERY_FEED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_fbPageId:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_nextPage:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_context:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    .line 76
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getFBPageID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_fbPageId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;ZZLcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->getFeed(ZZLcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;)V

    return-void
.end method

.method private declared-synchronized getFeed(ZZLcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;)V
    .locals 10
    .parameter "loadNext"
    .parameter "fetchOnlyLastItem"
    .parameter "listener"

    .prologue
    .line 102
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    const-string v2, "feed"

    const-string v3, "load"

    const-string v8, "load_next_page"

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v3, v8, v9}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->gaTrackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    const-string v2, "feed"

    const-string v3, "load"

    const-string v8, "load 15 more pictures"

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v3, v8, v9}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->gaTrackEvent2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    :goto_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v4

    .line 112
    .local v4, activeSession:Lcom/facebook/Session;
    if-nez p2, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 114
    new-instance v5, Lcom/facebook/RequestBatch;

    invoke-direct {v5}, Lcom/facebook/RequestBatch;-><init>()V

    .line 115
    .local v5, requestBatch:Lcom/facebook/RequestBatch;
    new-instance v0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;ZLcom/facebook/Session;Lcom/facebook/RequestBatch;)V

    .line 161
    .local v0, requestCallback:Lcom/facebook/Request$Callback;
    if-eqz p1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_nextPage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_nextPage:Ljava/lang/String;

    const-string v2, "https://graph.facebook.com/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Lcom/facebook/Request;->executeGraphPathRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .end local v0           #requestCallback:Lcom/facebook/Request$Callback;
    .end local v5           #requestBatch:Lcom/facebook/RequestBatch;
    :goto_1
    monitor-exit p0

    return-void

    .line 107
    .end local v4           #activeSession:Lcom/facebook/Session;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    const-string v2, "feed"

    const-string v3, "load"

    const-string v8, "load_first_page"

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v3, v8, v9}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->gaTrackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    const-string v2, "feed"

    const-string v3, "load"

    const-string v8, "load pictures"

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v3, v8, v9}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->gaTrackEvent2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 165
    .restart local v0       #requestCallback:Lcom/facebook/Request$Callback;
    .restart local v4       #activeSession:Lcom/facebook/Session;
    .restart local v5       #requestBatch:Lcom/facebook/RequestBatch;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_context:Landroid/content/Context;

    sget v2, Lcom/lilkillaware/fbapptemplate/R$string;->you_have_reached_end_of_photo_feed:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 168
    :cond_2
    new-instance v7, Lcom/facebook/Request;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_fbPageId:Ljava/lang/String;

    invoke-direct {v7, v4, v1}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;)V

    .line 169
    .local v7, req:Lcom/facebook/Request;
    invoke-virtual {v7, v0}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 170
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v6, params:Landroid/os/Bundle;
    if-eqz p2, :cond_3

    .line 173
    const-string v1, "fields"

    const-string v2, "feed.limit(1).fields(id,object_id,message,picture,source,link,name,description,type,from,likes.limit(1).summary(1),comments.limit(100).fields(message,from.fields(name,picture.type(small)))),name,picture.type(large),link"

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_2
    invoke-virtual {v7, v6}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {v7}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    goto :goto_1

    .line 175
    :cond_3
    const-string v1, "fields"

    sget-object v2, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->FB_GRAPH_QUERY_FEED:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 183
    .end local v0           #requestCallback:Lcom/facebook/Request$Callback;
    .end local v5           #requestBatch:Lcom/facebook/RequestBatch;
    .end local v6           #params:Landroid/os/Bundle;
    .end local v7           #req:Lcom/facebook/Request;
    :cond_4
    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_nextPage:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 184
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_context:Landroid/content/Context;

    sget v2, Lcom/lilkillaware/fbapptemplate/R$string;->you_have_reached_end_of_photo_feed:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 186
    :cond_5
    if-eqz p1, :cond_6

    .line 187
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_nextPage:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v1}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->getFeedFromApi(ZLcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;Ljava/lang/String;)V

    goto :goto_1

    .line 188
    :cond_6
    if-eqz p2, :cond_7

    .line 189
    const-string v1, "feed.limit(1).fields(id,object_id,message,picture,source,link,name,description,type,from,likes.limit(1).summary(1),comments.limit(100).fields(message,from.fields(name,picture.type(small)))),name,picture.type(large),link"

    invoke-direct {p0, p1, p3, v1}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->getFeedFromApi(ZLcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;Ljava/lang/String;)V

    goto :goto_1

    .line 191
    :cond_7
    sget-object v1, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->FB_GRAPH_QUERY_FEED:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v1}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->getFeedFromApi(ZLcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private getFeedFromApi(ZLcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;Ljava/lang/String;)V
    .locals 4
    .parameter "loadNext"
    .parameter "listener"
    .parameter "query"

    .prologue
    const/4 v2, 0x0

    .line 198
    new-instance v0, Lcom/lilkillaware/fbapptemplate/network/Api;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lilkillaware/fbapptemplate/network/Api;-><init>(Landroid/content/Context;)V

    .line 199
    .local v0, api:Lcom/lilkillaware/fbapptemplate/network/Api;
    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    new-instance v3, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;

    invoke-direct {v3, p0, p2, p1}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;Z)V

    invoke-virtual {v0, v1, p3, v2, v3}, Lcom/lilkillaware/fbapptemplate/network/Api;->getFeed(ZLjava/lang/String;ZLcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;)V

    .line 243
    return-void

    :cond_0
    move v1, v2

    .line 199
    goto :goto_0
.end method


# virtual methods
.method protected convertFeedToFeedItems(Lorg/json/JSONObject;Ljava/lang/Boolean;)Ljava/util/List;
    .locals 8
    .parameter "rootObject"
    .parameter "loadNext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lilkillaware/fbapptemplate/model/FeedItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 295
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/lilkillaware/fbapptemplate/model/FeedItem;>;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 297
    .local v4, jsonFeeds:Lorg/json/JSONArray;
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 298
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 299
    .local v3, jsonFeed:Lorg/json/JSONObject;
    new-instance v1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    invoke-direct {v1}, Lcom/lilkillaware/fbapptemplate/model/FeedItem;-><init>()V

    .line 300
    .local v1, item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    iget-object v5, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_profileName:Ljava/lang/String;

    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_profileLink:Ljava/lang/String;

    iget-object v7, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_profileImage:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v3, v7}, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->populate(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 303
    iget-object v5, v1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_type:Ljava/lang/String;

    const-string v6, "status"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_message:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_message:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 297
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    .end local v0           #i:I
    .end local v1           #item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    .end local v3           #jsonFeed:Lorg/json/JSONObject;
    .end local v4           #jsonFeeds:Lorg/json/JSONArray;
    :cond_1
    const-string v5, "feed"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    goto :goto_0

    .line 306
    .restart local v0       #i:I
    .restart local v1       #item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    .restart local v3       #jsonFeed:Lorg/json/JSONObject;
    .restart local v4       #jsonFeeds:Lorg/json/JSONArray;
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 309
    .end local v1           #item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    .end local v3           #jsonFeed:Lorg/json/JSONObject;
    :cond_3
    return-object v2
.end method

.method public declared-synchronized getFeed(ZZLcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;Z)V
    .locals 3
    .parameter "loadNext"
    .parameter "fetchOnlyLastItem"
    .parameter "listener"
    .parameter "checkKillSwitch"

    .prologue
    .line 81
    monitor-enter p0

    if-nez p4, :cond_0

    .line 82
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->getFeed(ZZLcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_0
    monitor-exit p0

    return-void

    .line 86
    :cond_0
    :try_start_1
    new-instance v0, Lcom/lilkillaware/fbapptemplate/network/Api;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lilkillaware/fbapptemplate/network/Api;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, api:Lcom/lilkillaware/fbapptemplate/network/Api;
    new-instance v1, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$1;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;ZZLcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lilkillaware/fbapptemplate/network/Api;->getKillSwitch(Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    .end local v0           #api:Lcom/lilkillaware/fbapptemplate/network/Api;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected getNextPage(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .parameter "jPaging"

    .prologue
    const/4 v2, 0x0

    .line 327
    const-string v1, ""

    .line 329
    .local v1, nextPage:Ljava/lang/String;
    :try_start_0
    const-string v3, "next"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 336
    :goto_0
    return-object v2

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 332
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 333
    .local v0, e:Lorg/json/JSONException;
    goto :goto_0
.end method

.method protected setNextPage(Lorg/json/JSONObject;Z)V
    .locals 3
    .parameter "rootObject"
    .parameter "loadNext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 314
    if-eqz p2, :cond_2

    move-object v1, p1

    .line 316
    .local v1, json:Lorg/json/JSONObject;
    :goto_0
    const-string v2, "paging"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    const-string v2, "paging"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 318
    .local v0, jPaging:Lorg/json/JSONObject;
    const-string v2, "next"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_nextPage:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz p2, :cond_3

    .line 319
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->getNextPage(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_nextPage:Ljava/lang/String;

    .line 323
    .end local v0           #jPaging:Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-void

    .line 314
    .end local v1           #json:Lorg/json/JSONObject;
    :cond_2
    const-string v2, "feed"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    .line 321
    .restart local v0       #jPaging:Lorg/json/JSONObject;
    .restart local v1       #json:Lorg/json/JSONObject;
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_nextPage:Ljava/lang/String;

    goto :goto_1
.end method

.method protected setProfileInformation(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "rootObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 340
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_profileName:Ljava/lang/String;

    .line 345
    :goto_0
    const-string v1, "link"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 346
    const-string v1, "link"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_profileLink:Ljava/lang/String;

    .line 350
    :goto_1
    const-string v1, "picture"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    const-string v1, "picture"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 352
    .local v0, tmp:Lorg/json/JSONObject;
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 353
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_profileImage:Ljava/lang/String;

    .line 358
    .end local v0           #tmp:Lorg/json/JSONObject;
    :cond_0
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_profileImage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getProfilePhotoUrlString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_profileImage:Ljava/lang/String;

    .line 360
    :cond_1
    return-void

    .line 343
    :cond_2
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getProfileNameString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_profileName:Ljava/lang/String;

    goto :goto_0

    .line 348
    :cond_3
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getPageLinkString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_profileLink:Ljava/lang/String;

    goto :goto_1
.end method
