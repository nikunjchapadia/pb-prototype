.class Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;
.super Ljava/lang/Object;
.source "FBFeedGetter.java"

# interfaces
.implements Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->getFeedFromApi(ZLcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

.field final synthetic val$listener:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;

.field final synthetic val$loadNext:Z


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;Z)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;

    iput-boolean p3, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;->val$loadNext:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onApiCallCompleted(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;->onApiCallCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public onApiCallCompleted(Ljava/lang/String;)V
    .locals 9
    .parameter "result"

    .prologue
    const/4 v8, 0x0

    .line 204
    if-nez p1, :cond_0

    .line 205
    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;

    invoke-interface {v6, v8}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;->onFeedGet(Ljava/util/List;)V

    .line 209
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/facebook/android/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 211
    .local v5, rootObject:Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

    iget-boolean v7, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;->val$loadNext:Z

    invoke-virtual {v6, v5, v7}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->setNextPage(Lorg/json/JSONObject;Z)V

    .line 212
    iget-boolean v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;->val$loadNext:Z

    if-nez v6, :cond_1

    .line 213
    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

    invoke-virtual {v6, v5}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->setProfileInformation(Lorg/json/JSONObject;)V

    .line 215
    :cond_1
    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

    iget-boolean v7, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;->val$loadNext:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->convertFeedToFeedItems(Lorg/json/JSONObject;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v2

    .line 217
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/lilkillaware/fbapptemplate/model/FeedItem;>;"
    new-instance v4, Lcom/facebook/RequestBatch;

    invoke-direct {v4}, Lcom/facebook/RequestBatch;-><init>()V

    .line 218
    .local v4, requestBatch:Lcom/facebook/RequestBatch;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    .line 219
    .local v1, item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->getRequest(Lcom/facebook/Session;)Lcom/facebook/Request;

    move-result-object v3

    .line 220
    .local v3, request:Lcom/facebook/Request;
    if-eqz v3, :cond_2

    .line 221
    invoke-virtual {v4, v3}, Lcom/facebook/RequestBatch;->add(Lcom/facebook/Request;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 236
    .end local v1           #item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    .end local v2           #items:Ljava/util/List;,"Ljava/util/List<Lcom/lilkillaware/fbapptemplate/model/FeedItem;>;"
    .end local v3           #request:Lcom/facebook/Request;
    .end local v4           #requestBatch:Lcom/facebook/RequestBatch;
    .end local v5           #rootObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Lorg/json/JSONException;
    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;

    invoke-interface {v6, v8}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;->onFeedGet(Ljava/util/List;)V

    .line 241
    .end local v0           #e:Lorg/json/JSONException;
    :goto_1
    return-void

    .line 224
    .restart local v2       #items:Ljava/util/List;,"Ljava/util/List<Lcom/lilkillaware/fbapptemplate/model/FeedItem;>;"
    .restart local v4       #requestBatch:Lcom/facebook/RequestBatch;
    .restart local v5       #rootObject:Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Lcom/facebook/RequestBatch;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 225
    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;

    invoke-interface {v6, v2}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;->onFeedGet(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 238
    .end local v2           #items:Ljava/util/List;,"Ljava/util/List<Lcom/lilkillaware/fbapptemplate/model/FeedItem;>;"
    .end local v4           #requestBatch:Lcom/facebook/RequestBatch;
    .end local v5           #rootObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;

    invoke-interface {v6, v8}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;->onFeedGet(Ljava/util/List;)V

    goto :goto_1

    .line 227
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #items:Ljava/util/List;,"Ljava/util/List<Lcom/lilkillaware/fbapptemplate/model/FeedItem;>;"
    .restart local v4       #requestBatch:Lcom/facebook/RequestBatch;
    .restart local v5       #rootObject:Lorg/json/JSONObject;
    :cond_4
    :try_start_2
    new-instance v6, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3$1;

    invoke-direct {v6, p0, v2}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3$1;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;Ljava/util/List;)V

    invoke-virtual {v4, v6}, Lcom/facebook/RequestBatch;->addCallback(Lcom/facebook/RequestBatch$Callback;)V

    .line 234
    invoke-virtual {v4}, Lcom/facebook/RequestBatch;->executeAsync()Lcom/facebook/RequestAsyncTask;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
