.class public Lcom/lilkillaware/fbapptemplate/network/Api;
.super Ljava/lang/Object;
.source "Api.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;
    }
.end annotation


# static fields
.field public static final FEED_CONTROLLER:Ljava/lang/String; = "Feed"

.field public static final KILL_SWITCH_CONTROLLER:Ljava/lang/String; = "KillSwitch"


# instance fields
.field private _app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

.field private _baseUrl:Ljava/lang/String;

.field private _ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/Api;->_ctx:Landroid/content/Context;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/Api;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    .line 23
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/Api;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getBackendUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/Api;->_baseUrl:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getFeed(ZLjava/lang/String;ZLcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;)V
    .locals 5
    .parameter "sendFbPageId"
    .parameter "query"
    .parameter "showDialog"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Z",
            "Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, listener:Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;,"Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 47
    new-instance v1, Lcom/lilkillaware/fbapptemplate/network/WebService;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/lilkillaware/fbapptemplate/network/WebService;-><init>(Z)V

    .line 48
    .local v1, ws:Lcom/lilkillaware/fbapptemplate/network/WebService;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/Api;->_baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Feed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, url:Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/lilkillaware/fbapptemplate/network/WebService;->setIsJson(Z)V

    .line 50
    invoke-virtual {v1, v4}, Lcom/lilkillaware/fbapptemplate/network/WebService;->setIsPostMethod(Z)V

    .line 51
    invoke-virtual {v1, v4}, Lcom/lilkillaware/fbapptemplate/network/WebService;->setIsPostJson(Z)V

    .line 52
    const-string v2, "Query"

    invoke-virtual {v1, v2, p2}, Lcom/lilkillaware/fbapptemplate/network/WebService;->postEntityAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    const-string v2, "PageID"

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/Api;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v3}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getFBPageID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lilkillaware/fbapptemplate/network/WebService;->postEntityAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    new-instance v2, Lcom/lilkillaware/fbapptemplate/network/Api$2;

    invoke-direct {v2, p0, p4}, Lcom/lilkillaware/fbapptemplate/network/Api$2;-><init>(Lcom/lilkillaware/fbapptemplate/network/Api;Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/lilkillaware/fbapptemplate/network/WebService;->getResponseFromUrlAsync(Ljava/lang/String;Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;)V

    .line 68
    return-void
.end method

.method public getKillSwitch(Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;Z)V
    .locals 8
    .parameter
    .parameter "showDialog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener",
            "<",
            "Lcom/lilkillaware/fbapptemplate/model/KillSwitch;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, listener:Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;,"Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener<Lcom/lilkillaware/fbapptemplate/model/KillSwitch;>;"
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 27
    new-instance v0, Lcom/lilkillaware/fbapptemplate/network/WebService;

    invoke-direct {v0, v4}, Lcom/lilkillaware/fbapptemplate/network/WebService;-><init>(Z)V

    .line 28
    .local v0, ws:Lcom/lilkillaware/fbapptemplate/network/WebService;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/Api;->_baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "KillSwitch"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, url:Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/lilkillaware/fbapptemplate/network/WebService;->setIsJson(Z)V

    .line 30
    invoke-virtual {v0, v6}, Lcom/lilkillaware/fbapptemplate/network/WebService;->setIsPostMethod(Z)V

    .line 31
    invoke-virtual {v0, v6}, Lcom/lilkillaware/fbapptemplate/network/WebService;->setIsPostJson(Z)V

    .line 32
    const-string v1, "id"

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/Api;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v3}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getApplicationGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/lilkillaware/fbapptemplate/network/WebService;->postEntityAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/Api;->_ctx:Landroid/content/Context;

    const-class v3, Lcom/lilkillaware/fbapptemplate/model/KillSwitch;

    new-instance v7, Lcom/lilkillaware/fbapptemplate/network/Api$1;

    invoke-direct {v7, p0, p1}, Lcom/lilkillaware/fbapptemplate/network/Api$1;-><init>(Lcom/lilkillaware/fbapptemplate/network/Api;Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;)V

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/lilkillaware/fbapptemplate/network/WebService;->getModelFromUrlAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ZZZLcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;)V

    .line 44
    return-void
.end method
