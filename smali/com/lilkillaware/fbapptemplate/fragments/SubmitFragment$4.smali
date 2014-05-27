.class Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment$4;
.super Ljava/lang/Object;
.source "SubmitFragment.java"

# interfaces
.implements Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->onUpload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment$4;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoUploaded()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment$4;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;

    const/4 v1, 0x0

    #setter for: Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_imageUriForUpload:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->access$002(Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 238
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment$4;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;

    #getter for: Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_ivPhotoForUpload:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->access$100(Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/lilkillaware/fbapptemplate/R$drawable;->dog_camera:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    return-void
.end method
