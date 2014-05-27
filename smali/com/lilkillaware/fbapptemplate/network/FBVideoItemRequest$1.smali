.class Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$1;
.super Ljava/lang/Object;
.source "FBVideoItemRequest.java"

# interfaces
.implements Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->getVideoUrlFromApi(Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
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
    .line 57
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$1;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$1;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onServiceCompleted(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$1;->onServiceCompleted(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onServiceCompleted(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5
    .parameter "result"
    .parameter "exception"

    .prologue
    const/4 v4, 0x0

    .line 63
    if-eqz p2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$1;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;

    invoke-interface {v2, v4}, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;->onVideoUrlGet(Ljava/lang/String;)V

    .line 68
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/facebook/android/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 69
    .local v1, rootObject:Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$1;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$1;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;

    #calls: Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->getVideoUrl(Lorg/json/JSONObject;Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;)V
    invoke-static {v2, v1, v3}, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;->access$000(Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest;Lorg/json/JSONObject;Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    .end local v1           #rootObject:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Lorg/json/JSONException;
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$1;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;

    invoke-interface {v2, v4}, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;->onVideoUrlGet(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$1;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;

    invoke-interface {v2, v4}, Lcom/lilkillaware/fbapptemplate/network/FBVideoItemRequest$Listener;->onVideoUrlGet(Ljava/lang/String;)V

    goto :goto_0
.end method
