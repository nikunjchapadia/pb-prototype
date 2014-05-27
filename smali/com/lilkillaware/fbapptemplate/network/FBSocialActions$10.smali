.class Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$10;
.super Ljava/lang/Object;
.source "FBSocialActions.java"

# interfaces
.implements Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$FBLoginListener;


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
    .line 438
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$10;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$10;->val$photoUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$10;->val$photoCallback:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginFail()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$10;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$000(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 448
    return-void
.end method

.method public onLoginSuccess()V
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$10;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$10;->val$photoUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$10;->val$photoCallback:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;

    invoke-virtual {v0, v1, v2}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->postPhoto(Landroid/net/Uri;Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;)V

    .line 443
    return-void
.end method
