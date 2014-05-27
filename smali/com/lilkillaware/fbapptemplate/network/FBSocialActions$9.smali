.class Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$9;
.super Ljava/lang/Object;
.source "FBSocialActions.java"

# interfaces
.implements Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->postPhoto(Landroid/net/Uri;Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

.field final synthetic val$photoCallback:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;

.field final synthetic val$photoUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;Landroid/net/Uri;Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$9;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$9;->val$photoUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$9;->val$photoCallback:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commentRecived(Ljava/lang/String;)V
    .locals 12
    .parameter "message"

    .prologue
    const/4 v11, 0x0

    .line 416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 417
    iget-object v5, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$9;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v5}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$000(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 434
    :goto_0
    return-void

    .line 422
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$9;->val$photoUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, photoUriString:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    .local v1, file:Ljava/io/File;
    iget-object v5, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$9;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    invoke-static {v5}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$600(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getFBPageID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$9;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;
    invoke-static {v6}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$200(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/facebook/Session;

    move-result-object v6

    iget-object v7, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$9;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    sget v8, Lcom/lilkillaware/fbapptemplate/R$string;->PHOTO_UPLOAD_SUCCESS:I

    iget-object v9, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$9;->val$photoCallback:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;

    .line 426
    invoke-static {}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$700()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->getRequestCallBack(ILcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;Ljava/lang/String;)Lcom/facebook/Request$Callback;
    invoke-static {v7, v8, v9, v10}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$800(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;ILcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;Ljava/lang/String;)Lcom/facebook/Request$Callback;

    move-result-object v7

    .line 425
    invoke-static {v5, v6, p1, v1, v7}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->getUploadPhotoRequestToPage(Ljava/lang/String;Lcom/facebook/Session;Ljava/lang/String;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v3

    .line 428
    .local v3, request:Lcom/facebook/Request;
    new-instance v4, Lcom/facebook/RequestAsyncTask;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/facebook/Request;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-direct {v4, v5}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    .line 429
    .local v4, task:Lcom/facebook/RequestAsyncTask;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    .end local v1           #file:Ljava/io/File;
    .end local v2           #photoUriString:Ljava/lang/String;
    .end local v3           #request:Lcom/facebook/Request;
    .end local v4           #task:Lcom/facebook/RequestAsyncTask;
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Ljava/io/FileNotFoundException;
    iget-object v5, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$9;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v5}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$000(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v5

    const-string v6, "Can not find photo for upload."

    invoke-static {v5, v6, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 432
    iget-object v5, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$9;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v5}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$000(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    goto :goto_0
.end method
