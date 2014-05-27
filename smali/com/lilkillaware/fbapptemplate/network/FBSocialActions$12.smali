.class Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$12;
.super Ljava/lang/Object;
.source "FBSocialActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->getComment(ILcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

.field final synthetic val$callback:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;Landroid/widget/EditText;Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$12;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$12;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$12;->val$callback:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 498
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$12;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 500
    const-string v0, ""

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$12;->val$callback:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;

    invoke-interface {v1, v0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;->commentRecived(Ljava/lang/String;)V

    .line 502
    return-void
.end method
