.class Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$1;
.super Ljava/lang/Object;
.source "FeedCheckService.java"

# interfaces
.implements Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->checkForNewFeedItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$1;->this$0:Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeedGet(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lilkillaware/fbapptemplate/model/FeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, feed:Ljava/util/List;,"Ljava/util/List<Lcom/lilkillaware/fbapptemplate/model/FeedItem;>;"
    const/4 v5, 0x0

    .line 75
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$1;->this$0:Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;

    #getter for: Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    invoke-static {v3}, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->access$000(Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;)Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getLastPhotoId()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, lastPhotoId:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    iget-object v0, v3, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_id:Ljava/lang/String;

    .line 78
    .local v0, _id:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$1;->this$0:Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    invoke-virtual {v4, v3}, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->showNotificationForNewFeed(Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V

    .line 80
    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$1;->this$0:Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;

    #getter for: Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    invoke-static {v3}, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->access$000(Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;)Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    move-result-object v4

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    iget-object v3, v3, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_id:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->setLastPhotoId(Ljava/lang/String;)V

    .line 83
    .end local v0           #_id:Ljava/lang/String;
    .end local v2           #lastPhotoId:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->access$102(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v5}, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->access$102(Z)Z

    .line 86
    sget-object v3, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->TAG:Ljava/lang/String;

    const-string v4, "checkForNewFeedItem-onFeedGet"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
