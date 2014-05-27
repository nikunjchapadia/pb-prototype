.class Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity$1;
.super Ljava/lang/Object;
.source "PhotoViewActivity.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 78
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;

    new-instance v1, Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;

    #getter for: Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->mImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->access$100(Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    #setter for: Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;
    invoke-static {v0, v1}, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->access$002(Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;Luk/co/senab/photoview/PhotoViewAttacher;)Luk/co/senab/photoview/PhotoViewAttacher;

    .line 74
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 68
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 64
    return-void
.end method
