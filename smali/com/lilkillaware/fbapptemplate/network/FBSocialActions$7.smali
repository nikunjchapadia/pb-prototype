.class Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$7;
.super Ljava/lang/Object;
.source "FBSocialActions.java"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->share2()V
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
    .line 291
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$7;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 2
    .parameter "values"
    .parameter "error"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$7;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->access$000(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 296
    return-void
.end method
