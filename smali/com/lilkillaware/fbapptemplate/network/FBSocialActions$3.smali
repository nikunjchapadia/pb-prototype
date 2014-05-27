.class Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$3;
.super Ljava/lang/Object;
.source "FBSocialActions.java"

# interfaces
.implements Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->comment()V
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
    .line 176
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$3;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commentRecived(Ljava/lang/String;)V
    .locals 11
    .parameter "message"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$3;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v1}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$000(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 194
    :goto_0
    return-void

    .line 185
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 186
    .local v3, postParams:Landroid/os/Bundle;
    const-string v1, "message"

    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "%s/comments"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$3;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    invoke-static {v5}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$100(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    move-result-object v5

    iget-object v5, v5, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_id:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, graphPath:Ljava/lang/String;
    new-instance v0, Lcom/facebook/Request;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$3;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;
    invoke-static {v1}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$200(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/facebook/Session;

    move-result-object v1

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    iget-object v5, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$3;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    sget v7, Lcom/lilkillaware/fbapptemplate/R$string;->COMMENT_SUCCESS:I

    .line 190
    invoke-static {}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$300()Ljava/lang/String;

    move-result-object v8

    .line 189
    #calls: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->getRequestCallBack(ILjava/lang/String;)Lcom/facebook/Request$Callback;
    invoke-static {v5, v7, v8}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$400(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;ILjava/lang/String;)Lcom/facebook/Request$Callback;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 192
    .local v0, request:Lcom/facebook/Request;
    new-instance v6, Lcom/facebook/RequestAsyncTask;

    new-array v1, v10, [Lcom/facebook/Request;

    aput-object v0, v1, v9

    invoke-direct {v6, v1}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    .line 193
    .local v6, task:Lcom/facebook/RequestAsyncTask;
    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v6, v1}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
