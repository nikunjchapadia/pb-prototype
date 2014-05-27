.class Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;
.super Ljava/lang/Object;
.source "PullToRefreshAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;


# direct methods
.method constructor <init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)V
    .locals 0
    .parameter

    .prologue
    .line 965
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 968
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    #getter for: Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;
    invoke-static {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$600(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;->onRefreshMinimized()V

    .line 970
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    #getter for: Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;
    invoke-static {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$700(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    #getter for: Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;
    invoke-static {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$700(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;

    move-result-object v0

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    #getter for: Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;
    invoke-static {v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$500(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;->onStateChanged(Landroid/view/View;I)V

    .line 974
    :cond_0
    return-void
.end method
