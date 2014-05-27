.class Lcom/lilkillaware/fbapptemplate/view/FeedView$4;
.super Ljava/lang/Object;
.source "FeedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/view/FeedView;->showFeed(Lcom/lilkillaware/fbapptemplate/model/FeedItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/view/FeedView;

.field final synthetic val$item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/view/FeedView;Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView$4;->this$0:Lcom/lilkillaware/fbapptemplate/view/FeedView;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView$4;->val$item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 197
    new-instance v0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView$4;->this$0:Lcom/lilkillaware/fbapptemplate/view/FeedView;

    #getter for: Lcom/lilkillaware/fbapptemplate/view/FeedView;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v1}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->access$100(Lcom/lilkillaware/fbapptemplate/view/FeedView;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView$4;->val$item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    invoke-direct {v0, v1, v2}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;-><init>(Lcom/lilkillaware/fbapptemplate/activities/MainActivity;Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->like()V

    .line 205
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView$4;->this$0:Lcom/lilkillaware/fbapptemplate/view/FeedView;

    #getter for: Lcom/lilkillaware/fbapptemplate/view/FeedView;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->access$000(Lcom/lilkillaware/fbapptemplate/view/FeedView;)Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    move-result-object v0

    const-string v1, "button_like"

    invoke-virtual {v0, v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->gaTrackButtonClick(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView$4;->this$0:Lcom/lilkillaware/fbapptemplate/view/FeedView;

    #getter for: Lcom/lilkillaware/fbapptemplate/view/FeedView;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->access$000(Lcom/lilkillaware/fbapptemplate/view/FeedView;)Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    move-result-object v0

    const-string v1, "click like"

    invoke-virtual {v0, v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->gaTrackButtonClick2(Ljava/lang/String;)V

    .line 207
    return-void
.end method
