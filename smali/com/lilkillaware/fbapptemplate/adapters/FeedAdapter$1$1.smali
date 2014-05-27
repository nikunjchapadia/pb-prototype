.class Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->onFeedGet(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;

.field final synthetic val$feed:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;Ljava/util/List;)V
    .locals 0
    .parameter "this$1"
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;->this$1:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;->val$feed:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 52
    new-array v1, v4, [I

    .line 53
    .local v1, size:[I
    aput v6, v1, v6

    .line 54
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;->this$1:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;

    iget-object v2, v2, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->this$0:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    invoke-virtual {v2}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;->this$1:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;

    iget-boolean v2, v2, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->val$loadNext:Z

    if-nez v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;->val$feed:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    .line 56
    .local v0, item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;->this$1:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;

    iget-object v3, v3, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->this$0:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    invoke-virtual {v3, v0}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->isItemAlreadyInAdapter(Lcom/lilkillaware/fbapptemplate/model/FeedItem;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;->this$1:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;

    iget-object v3, v3, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->this$0:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    invoke-virtual {v3, v0}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->add(Ljava/lang/Object;)V

    .line 58
    aget v3, v1, v6

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v6

    goto :goto_0

    .line 62
    .end local v0           #item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    :cond_1
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;->val$feed:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    .line 63
    .restart local v0       #item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;->this$1:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;

    iget-object v3, v3, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->this$0:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    invoke-virtual {v3, v0}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->add(Ljava/lang/Object;)V

    .line 64
    aget v3, v1, v6

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v6

    goto :goto_1

    .line 68
    .end local v0           #item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    :cond_2
    aget v2, v1, v6

    if-lez v2, :cond_4

    .line 69
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;->this$1:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;

    iget-boolean v2, v2, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->val$loadNext:Z

    if-eqz v2, :cond_3

    .line 70
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;->this$1:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;

    iget-object v2, v2, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->this$0:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    #getter for: Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->_activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->access$000(Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Next %s items loaded"

    new-array v4, v4, [Ljava/lang/Object;

    aget v5, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 80
    :goto_2
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;->this$1:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;

    iget-object v2, v2, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->this$0:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    #getter for: Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->_listener:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$Listener;
    invoke-static {v2}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->access$100(Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;)Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$Listener;

    move-result-object v2

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;->this$1:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;

    iget-boolean v3, v3, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->val$loadNext:Z

    invoke-interface {v2, v3}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$Listener;->onFeedSuccess(Z)V

    .line 81
    return-void

    .line 72
    :cond_3
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;->this$1:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;

    iget-object v2, v2, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->this$0:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    #getter for: Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->_activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->access$000(Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "%s items loaded"

    new-array v4, v4, [Ljava/lang/Object;

    aget v5, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 74
    :cond_4
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;->this$1:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;

    iget-boolean v2, v2, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->val$loadNext:Z

    if-eqz v2, :cond_5

    .line 75
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;->this$1:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;

    iget-object v2, v2, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->this$0:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    #getter for: Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->_activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->access$000(Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "You have reached end of feed"

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 77
    :cond_5
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$1;->this$1:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;

    iget-object v2, v2, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->this$0:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    #getter for: Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->_activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->access$000(Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "There is no new items"

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
