.class Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;
.super Ljava/lang/Object;
.source "FBSocialActions.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->getRequestCallBack(ILcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;Ljava/lang/String;)Lcom/facebook/Request$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$photoCallback:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;

.field final synthetic val$successStringId:I


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;ILcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;Ljava/lang/String;)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    iput p2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->val$successStringId:I

    iput-object p3, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->val$photoCallback:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;

    iput-object p4, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->val$eventName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 8
    .parameter "response"

    .prologue
    const/4 v7, 0x0

    .line 535
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    .line 536
    .local v1, error:Lcom/facebook/FacebookRequestError;
    if-eqz v1, :cond_2

    .line 538
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "(#200) Subject does not have permission to post photos on this page"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    invoke-static {v5}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$600(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getApplicationNameForMail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v5}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$000(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v5

    sget v6, Lcom/lilkillaware/fbapptemplate/R$string;->cannot_post_message:I

    invoke-virtual {v5, v6}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v4}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$000(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v3}, Lcom/lilkillaware/fbapptemplate/util/DialogHelper;->showInfoMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    invoke-static {v4}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$600(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->setCanPost(Z)V

    .line 553
    .end local v3           #message:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;
    invoke-static {v4}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$200(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/facebook/Session;

    move-result-object v4

    iget-object v5, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->FB_session_callback:Lcom/facebook/Session$StatusCallback;
    invoke-static {v5}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$1500(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/facebook/Session$StatusCallback;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 554
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v4}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$000(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 556
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->val$photoCallback:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;

    if-eqz v4, :cond_0

    .line 557
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->val$photoCallback:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;

    invoke-interface {v4}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;->onPhotoUploaded()V

    .line 560
    :cond_0
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_fbLogger:Lcom/facebook/AppEventsLogger;
    invoke-static {v4}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$1600(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/facebook/AppEventsLogger;

    move-result-object v4

    iget-object v5, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->val$eventName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    .line 561
    return-void

    .line 544
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occured: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 548
    .local v2, errorMessage:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v4}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$000(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 545
    .end local v2           #errorMessage:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 546
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Error occured"

    .restart local v2       #errorMessage:Ljava/lang/String;
    goto :goto_1

    .line 551
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #errorMessage:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v4}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$000(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v5}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$000(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v5

    iget v6, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;->val$successStringId:I

    invoke-virtual {v5, v6}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
