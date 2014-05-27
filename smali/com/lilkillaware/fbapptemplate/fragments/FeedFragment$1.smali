.class Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$1;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;


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
    .line 42
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$1;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshStarted(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$1;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;

    #getter for: Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->access$000(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 47
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment$1;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;

    #getter for: Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->_adapter:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;->access$100(Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;)Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->loadFeed(Z)V

    .line 48
    return-void
.end method
