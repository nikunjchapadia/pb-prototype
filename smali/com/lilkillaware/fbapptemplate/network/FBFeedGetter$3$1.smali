.class Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3$1;
.super Ljava/lang/Object;
.source "FBFeedGetter.java"

# interfaces
.implements Lcom/facebook/RequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;->onApiCallCompleted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;Ljava/util/List;)V
    .locals 0
    .parameter "this$1"
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3$1;->this$1:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3$1;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/RequestBatch;)V
    .locals 2
    .parameter "batch"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3$1;->this$1:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;

    iget-object v0, v0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$3$1;->val$items:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;->onFeedGet(Ljava/util/List;)V

    .line 232
    return-void
.end method
