.class Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$11;
.super Ljava/lang/Object;
.source "FBSocialActions.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;
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
    .line 464
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$11;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 3
    .parameter "session"
    .parameter "state"
    .parameter "exception"

    .prologue
    const/4 v1, 0x0

    .line 468
    sget-object v0, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    invoke-virtual {p2, v0}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$11;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingShareReauthorization:Z
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$900(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$11;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #setter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingShareReauthorization:Z
    invoke-static {v0, v1}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$902(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;Z)Z

    .line 471
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$11;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->share()V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$11;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingLikeReauthorization:Z
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$1000(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$11;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #setter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingLikeReauthorization:Z
    invoke-static {v0, v1}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$1002(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;Z)Z

    .line 474
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$11;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->like()V

    goto :goto_0

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$11;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingCommentReauthorization:Z
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$1100(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$11;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #setter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingCommentReauthorization:Z
    invoke-static {v0, v1}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$1102(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;Z)Z

    .line 477
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$11;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->comment()V

    goto :goto_0

    .line 478
    :cond_3
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$11;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingPhotoUploadReauthorization:Z
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$1200(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$11;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #setter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingPhotoUploadReauthorization:Z
    invoke-static {v0, v1}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$1202(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;Z)Z

    .line 480
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$11;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$11;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_photoUploadUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$1300(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$11;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_photoUploadCallback:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;
    invoke-static {v2}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$1400(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->postPhoto(Landroid/net/Uri;Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;)V

    goto :goto_0
.end method
