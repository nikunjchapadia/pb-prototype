.class Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$1;
.super Ljava/lang/Object;
.source "FBFeedGetter.java"

# interfaces
.implements Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->getFeed(ZZLcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener",
        "<",
        "Lcom/lilkillaware/fbapptemplate/model/KillSwitch;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

.field final synthetic val$fetchOnlyLastItem:Z

.field final synthetic val$listener:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;

.field final synthetic val$loadNext:Z


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;ZZLcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$1;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

    iput-boolean p2, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$1;->val$loadNext:Z

    iput-boolean p3, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$1;->val$fetchOnlyLastItem:Z

    iput-object p4, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$1;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCallCompleted(Lcom/lilkillaware/fbapptemplate/model/KillSwitch;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 91
    iget-object v0, p1, Lcom/lilkillaware/fbapptemplate/model/KillSwitch;->ShuldKillApplication:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$1;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->_context:Landroid/content/Context;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->access$000(Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/lilkillaware/fbapptemplate/model/KillSwitch;->Message:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$1;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

    iget-boolean v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$1;->val$loadNext:Z

    iget-boolean v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$1;->val$fetchOnlyLastItem:Z

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$1;->val$listener:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;

    #calls: Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->getFeed(ZZLcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;)V
    invoke-static {v0, v1, v2, v3}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->access$100(Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;ZZLcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;)V

    goto :goto_0
.end method

.method public bridge synthetic onApiCallCompleted(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    check-cast p1, Lcom/lilkillaware/fbapptemplate/model/KillSwitch;

    invoke-virtual {p0, p1}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter$1;->onApiCallCompleted(Lcom/lilkillaware/fbapptemplate/model/KillSwitch;)V

    return-void
.end method
