.class Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$2;
.super Ljava/lang/Object;
.source "FBVideoItemRequest.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->getVideoUrlFromFacebook(Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;

.field final synthetic val$listener:Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$2;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$2;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v1

    .line 91
    .local v1, object:Lcom/facebook/model/GraphObject;
    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v1}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    .local v0, jObject:Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$2;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$2;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;

    #calls: Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->getVideoUrl(Lorg/json/JSONObject;Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;)V
    invoke-static {v2, v0, v3}, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->access$000(Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;Lorg/json/JSONObject;Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;)V

    .line 95
    .end local v0           #jObject:Lorg/json/JSONObject;
    :cond_0
    return-void
.end method
