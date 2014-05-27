.class Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AnimationCallback;
.super Ljava/lang/Object;
.source "PullToRefreshAttacher.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;


# direct methods
.method private constructor <init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)V
    .locals 0
    .parameter

    .prologue
    .line 880
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AnimationCallback;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 880
    invoke-direct {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AnimationCallback;-><init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 888
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AnimationCallback;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    #getter for: Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$400(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 889
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AnimationCallback;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    #getter for: Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;
    invoke-static {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$500(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AnimationCallback;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    #getter for: Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;
    invoke-static {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$600(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;->onReset()V

    .line 891
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AnimationCallback;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    #getter for: Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;
    invoke-static {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$700(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AnimationCallback;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    #getter for: Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;
    invoke-static {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$700(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;

    move-result-object v0

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AnimationCallback;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    #getter for: Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;
    invoke-static {v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$500(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;->onStateChanged(Landroid/view/View;I)V

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AnimationCallback;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    #getter for: Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderInAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$800(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 896
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AnimationCallback;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    #getter for: Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;
    invoke-static {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$700(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AnimationCallback;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    #getter for: Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;
    invoke-static {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$700(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;

    move-result-object v0

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AnimationCallback;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    #getter for: Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;
    invoke-static {v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$500(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderViewListener;->onStateChanged(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 905
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 884
    return-void
.end method
