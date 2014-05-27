.class Lcom/lilkillaware/fbapptemplate/view/FeedView$2;
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
    .line 175
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView$2;->this$0:Lcom/lilkillaware/fbapptemplate/view/FeedView;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView$2;->val$item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 179
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView$2;->val$item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->isTitleClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView$2;->this$0:Lcom/lilkillaware/fbapptemplate/view/FeedView;

    #getter for: Lcom/lilkillaware/fbapptemplate/view/FeedView;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v1}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->access$100(Lcom/lilkillaware/fbapptemplate/view/FeedView;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v1

    const-class v2, Lcom/lilkillaware/fbapptemplate/activities/TextViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "status"

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView$2;->val$item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    iget-object v2, v2, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView$2;->this$0:Lcom/lilkillaware/fbapptemplate/view/FeedView;

    #getter for: Lcom/lilkillaware/fbapptemplate/view/FeedView;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v1}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->access$100(Lcom/lilkillaware/fbapptemplate/view/FeedView;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 184
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
