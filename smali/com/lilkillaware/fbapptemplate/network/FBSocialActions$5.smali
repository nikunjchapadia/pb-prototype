.class Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$5;
.super Ljava/lang/Object;
.source "FBSocialActions.java"

# interfaces
.implements Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->share()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$5;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commentRecived(Ljava/lang/String;)V
    .locals 10
    .parameter "comment"

    .prologue
    const/4 v9, 0x0

    .line 244
    if-nez p1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$5;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v1}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$000(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 262
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v3, postParams:Landroid/os/Bundle;
    const-string v1, "name"

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$5;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v2}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$000(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v2

    sget v4, Lcom/lilkillaware/fbapptemplate/R$string;->app_name:I

    invoke-virtual {v2, v4}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "caption"

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$5;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    invoke-static {v2}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$100(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    move-result-object v2

    iget-object v2, v2, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_message:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v1, "description"

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$5;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    invoke-static {v2}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$100(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    move-result-object v2

    iget-object v2, v2, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_message:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v1, "message"

    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "link"

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$5;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    invoke-static {v2}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$100(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    move-result-object v2

    iget-object v2, v2, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_itemLink:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v0, Lcom/facebook/Request;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$5;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;
    invoke-static {v1}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$200(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/facebook/Session;

    move-result-object v1

    const-string v2, "me/feed"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    iget-object v5, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$5;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    sget v7, Lcom/lilkillaware/fbapptemplate/R$string;->SHARE_SUCCESS:I

    .line 258
    invoke-static {}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$500()Ljava/lang/String;

    move-result-object v8

    .line 257
    #calls: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->getRequestCallBack(ILjava/lang/String;)Lcom/facebook/Request$Callback;
    invoke-static {v5, v7, v8}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$400(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;ILjava/lang/String;)Lcom/facebook/Request$Callback;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 260
    .local v0, request:Lcom/facebook/Request;
    new-instance v6, Lcom/facebook/RequestAsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/Request;

    aput-object v0, v1, v9

    invoke-direct {v6, v1}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    .line 261
    .local v6, task:Lcom/facebook/RequestAsyncTask;
    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v6, v1}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
