.class Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$2;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$2;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeedError()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$2;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;

    #getter for: Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->access$000(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 57
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$2;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;

    #getter for: Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->access$000(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v0

    sget v1, Lcom/lilkillaware/fbapptemplate/R$string;->ERROR_PLEASE_LOG_IN:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 58
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$2;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;

    #getter for: Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->access$000(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->logOut()V

    .line 59
    return-void
.end method

.method public onFeedSuccess(Z)V
    .locals 3
    .parameter "isNext"

    .prologue
    const/4 v2, 0x0

    .line 63
    if-nez p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$2;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;

    #getter for: Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_pullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->access$200(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setRefreshComplete()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$2;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;

    #getter for: Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->access$300(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$2;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;

    #getter for: Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->access$000(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 69
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$2;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;

    #getter for: Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_adapter:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->access$100(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$2;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;

    #getter for: Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->access$000(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$2;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;

    #getter for: Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_adapter:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;
    invoke-static {v1}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->access$100(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    iget-object v1, v1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->setLastPhotoId(Ljava/lang/String;)V

    .line 73
    :cond_1
    return-void
.end method
