.class Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;
.super Ljava/lang/Object;
.source "FBFeedGetter.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->getFeed(ZZLcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

.field final synthetic val$activeSession:Lcom/facebook/Session;

.field final synthetic val$listener:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;

.field final synthetic val$loadNext:Z

.field final synthetic val$requestBatch:Lcom/facebook/RequestBatch;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;ZLcom/facebook/Session;Lcom/facebook/RequestBatch;)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;

    iput-boolean p3, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->val$loadNext:Z

    iput-object p4, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->val$activeSession:Lcom/facebook/Session;

    iput-object p5, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->val$requestBatch:Lcom/facebook/RequestBatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 8
    .parameter "response"

    .prologue
    .line 119
    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;

    if-eqz v6, :cond_2

    .line 122
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v3

    .line 123
    .local v3, object:Lcom/facebook/model/GraphObject;
    if-eqz v3, :cond_3

    .line 124
    invoke-interface {v3}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    .line 126
    .local v5, rootObject:Lorg/json/JSONObject;
    :try_start_0
    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

    iget-boolean v7, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->val$loadNext:Z

    invoke-virtual {v6, v5, v7}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->setNextPage(Lorg/json/JSONObject;Z)V

    .line 127
    iget-boolean v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->val$loadNext:Z

    if-nez v6, :cond_0

    .line 128
    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

    invoke-virtual {v6, v5}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->setProfileInformation(Lorg/json/JSONObject;)V

    .line 130
    :cond_0
    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

    iget-boolean v7, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->val$loadNext:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->convertFeedToFeedItems(Lorg/json/JSONObject;Ljava/lang/Boolean;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 139
    .end local v5           #rootObject:Lorg/json/JSONObject;
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/lilkillaware/fbapptemplate/model/FeedItem;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    .line 140
    .local v1, item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    iget-object v7, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->val$activeSession:Lcom/facebook/Session;

    invoke-virtual {v1, v7}, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->getRequest(Lcom/facebook/Session;)Lcom/facebook/Request;

    move-result-object v4

    .line 141
    .local v4, request:Lcom/facebook/Request;
    if-eqz v4, :cond_1

    .line 142
    iget-object v7, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->val$requestBatch:Lcom/facebook/RequestBatch;

    invoke-virtual {v7, v4}, Lcom/facebook/RequestBatch;->add(Lcom/facebook/Request;)Z

    goto :goto_1

    .line 131
    .end local v1           #item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    .end local v2           #items:Ljava/util/List;,"Ljava/util/List<Lcom/lilkillaware/fbapptemplate/model/FeedItem;>;"
    .end local v4           #request:Lcom/facebook/Request;
    .restart local v5       #rootObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Lorg/json/JSONException;
    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;->onFeedGet(Ljava/util/List;)V

    .line 158
    .end local v0           #e:Lorg/json/JSONException;
    .end local v3           #object:Lcom/facebook/model/GraphObject;
    .end local v5           #rootObject:Lorg/json/JSONObject;
    :cond_2
    :goto_2
    return-void

    .line 136
    .restart local v3       #object:Lcom/facebook/model/GraphObject;
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2       #items:Ljava/util/List;,"Ljava/util/List<Lcom/lilkillaware/fbapptemplate/model/FeedItem;>;"
    goto :goto_0

    .line 145
    :cond_4
    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->val$requestBatch:Lcom/facebook/RequestBatch;

    invoke-virtual {v6}, Lcom/facebook/RequestBatch;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 146
    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;

    invoke-interface {v6, v2}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;->onFeedGet(Ljava/util/List;)V

    goto :goto_2

    .line 148
    :cond_5
    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->val$requestBatch:Lcom/facebook/RequestBatch;

    new-instance v7, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2$1;

    invoke-direct {v7, p0, v2}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2$1;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lcom/facebook/RequestBatch;->addCallback(Lcom/facebook/RequestBatch$Callback;)V

    .line 155
    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$2;->val$requestBatch:Lcom/facebook/RequestBatch;

    invoke-virtual {v6}, Lcom/facebook/RequestBatch;->executeAsync()Lcom/facebook/RequestAsyncTask;

    goto :goto_2
.end method
