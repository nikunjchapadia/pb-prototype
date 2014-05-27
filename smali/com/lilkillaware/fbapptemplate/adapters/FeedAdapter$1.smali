.class Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->loadFeed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

.field final synthetic val$loadNext:Z


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;Z)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->this$0:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    iput-boolean p2, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->val$loadNext:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeedGet(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lilkillaware/fbapptemplate/model/FeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, feed:Ljava/util/List;,"Ljava/util/List<Lcom/lilkillaware/fbapptemplate/model/FeedItem;>;"
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->this$0:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    #getter for: Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->_activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->access$000(Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;

    invoke-direct {v1, p0, p1}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;-><init>(Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->this$0:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    #getter for: Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->_activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->access$000(Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$2;

    invoke-direct {v1, p0}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$2;-><init>(Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
