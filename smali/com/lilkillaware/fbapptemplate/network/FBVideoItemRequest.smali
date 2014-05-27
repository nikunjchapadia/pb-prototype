.class public Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;
.super Ljava/lang/Object;
.source "FBVideoItemRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;
    }
.end annotation


# static fields
.field private static final BASE_GRAPH_URL:Ljava/lang/String; = "https://graph.facebook.com/"


# instance fields
.field private _app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

.field private _context:Landroid/content/Context;

.field private _fbPageId:Ljava/lang/String;

.field private _feedApiUrl:Ljava/lang/String;

.field private _item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;


# direct methods
.method public constructor <init>(Lcom/lilkillaware/fbapptemplate/model/FeedItem;Landroid/content/Context;)V
    .locals 2
    .parameter "item"
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->_context:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    .line 35
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->_item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    .line 36
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getFBPageID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->_fbPageId:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getBackendUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "feed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->_feedApiUrl:Ljava/lang/String;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;Lorg/json/JSONObject;Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->getVideoUrl(Lorg/json/JSONObject;Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;)V

    return-void
.end method

.method private getVideoUrl(Lorg/json/JSONObject;Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;)V
    .locals 3
    .parameter "json"
    .parameter "listener"

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, source:Ljava/lang/String;
    const-string v2, "source"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    :try_start_0
    const-string v2, "source"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 112
    :cond_0
    :goto_0
    invoke-interface {p2, v1}, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;->onVideoUrlGet(Ljava/lang/String;)V

    .line 113
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getVideoUrlFromApi(Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;)V
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v2, 0x1

    .line 50
    new-instance v0, Lcom/lilkillaware/fbapptemplate/network/WebService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lilkillaware/fbapptemplate/network/WebService;-><init>(Z)V

    .line 51
    .local v0, ws:Lcom/lilkillaware/fbapptemplate/network/WebService;
    invoke-virtual {v0, v2}, Lcom/lilkillaware/fbapptemplate/network/WebService;->setIsJson(Z)V

    .line 52
    invoke-virtual {v0, v2}, Lcom/lilkillaware/fbapptemplate/network/WebService;->setIsPostMethod(Z)V

    .line 53
    invoke-virtual {v0, v2}, Lcom/lilkillaware/fbapptemplate/network/WebService;->setIsPostJson(Z)V

    .line 54
    const-string v1, "Query"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://graph.facebook.com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->_item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    iget-object v3, v3, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_objectId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?fields=source"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lilkillaware/fbapptemplate/network/WebService;->postEntityAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->_feedApiUrl:Ljava/lang/String;

    new-instance v2, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$1;

    invoke-direct {v2, p0, p1}, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$1;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;)V

    invoke-virtual {v0, v1, v2}, Lcom/lilkillaware/fbapptemplate/network/WebService;->getResponseFromUrlAsync(Ljava/lang/String;Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;)V

    .line 77
    return-void
.end method

.method private getVideoUrlFromFacebook(Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 81
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 82
    .local v0, activeSession:Lcom/facebook/Session;
    new-instance v2, Lcom/facebook/Request;

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->_item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    iget-object v3, v3, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_objectId:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;)V

    .line 83
    .local v2, req:Lcom/facebook/Request;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v1, params:Landroid/os/Bundle;
    const-string v3, "fields"

    const-string v4, "source"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2, v1}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 86
    new-instance v3, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$2;

    invoke-direct {v3, p0, p1}, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$2;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;)V

    invoke-virtual {v2, v3}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 97
    invoke-virtual {v2}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 98
    return-void
.end method


# virtual methods
.method public getItem(Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 41
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 42
    .local v0, activeSession:Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-direct {p0, p1}, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->getVideoUrlFromFacebook(Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-direct {p0, p1}, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->getVideoUrlFromApi(Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;)V

    goto :goto_0
.end method
