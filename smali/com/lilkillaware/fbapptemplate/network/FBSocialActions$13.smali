.class Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$13;
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


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$13;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$13;->val$callback:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$13;->val$callback:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;->commentRecived(Ljava/lang/String;)V

    .line 508
    return-void
.end method
