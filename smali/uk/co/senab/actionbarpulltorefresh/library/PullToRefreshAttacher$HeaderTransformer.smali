.class public abstract Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;
.super Ljava/lang/Object;
.source "PullToRefreshAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HeaderTransformer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPulled(F)V
    .locals 0
    .parameter "percentagePulled"

    .prologue
    .line 761
    return-void
.end method

.method public onRefreshMinimized()V
    .locals 0

    .prologue
    .line 781
    return-void
.end method

.method public onRefreshStarted()V
    .locals 0

    .prologue
    .line 768
    return-void
.end method

.method public onReleaseToRefresh()V
    .locals 0

    .prologue
    .line 775
    return-void
.end method

.method public onReset()V
    .locals 0

    .prologue
    .line 752
    return-void
.end method

.method public onViewCreated(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .parameter "activity"
    .parameter "headerView"

    .prologue
    .line 737
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 0
    .parameter "headerView"

    .prologue
    .line 743
    return-void
.end method
