.class Lcom/lilkillaware/fbapptemplate/model/FeedItem$1;
.super Ljava/lang/Object;
.source "FeedItem.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/model/FeedItem;->getRequest(Lcom/facebook/Session;)Lcom/facebook/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/model/FeedItem;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem$1;->this$0:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 233
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v2

    .line 234
    .local v2, object:Lcom/facebook/model/GraphObject;
    if-eqz v2, :cond_0

    .line 235
    invoke-interface {v2}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 237
    .local v1, jObject:Lorg/json/JSONObject;
    const-string v3, "source"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    :try_start_0
    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/model/FeedItem$1;->this$0:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    const-string v4, "source"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_source:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v1           #jObject:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 240
    .restart local v1       #jObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
