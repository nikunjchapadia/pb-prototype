.class Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$2;
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


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$2;->this$1:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1$2;->this$1:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;

    iget-object v0, v0, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$1;->this$0:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;

    #getter for: Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->_listener:Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$Listener;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;->access$100(Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter;)Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lilkillaware/fbapptemplate/adapters/FeedAdapter$Listener;->onFeedError()V

    .line 89
    return-void
.end method
