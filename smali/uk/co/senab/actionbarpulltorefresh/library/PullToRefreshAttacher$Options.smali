.class public Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;
.super Ljava/lang/Object;
.source "PullToRefreshAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public environmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$EnvironmentDelegate;

.field public headerInAnimation:I

.field public headerLayout:I

.field public headerOutAnimation:I

.field public headerTransformer:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;

.field public refreshMinimize:Z

.field public refreshMinimizeDelay:I

.field public refreshOnUp:Z

.field public refreshScrollDistance:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 824
    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->environmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$EnvironmentDelegate;

    .line 830
    invoke-static {}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$100()I

    move-result v0

    iput v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->headerLayout:I

    .line 836
    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->headerTransformer:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;

    .line 842
    invoke-static {}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$200()I

    move-result v0

    iput v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->headerOutAnimation:I

    .line 848
    invoke-static {}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$300()I

    move-result v0

    iput v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->headerInAnimation:I

    .line 854
    const/high16 v0, 0x3f00

    iput v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->refreshScrollDistance:F

    .line 860
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->refreshOnUp:Z

    .line 867
    const/16 v0, 0xbb8

    iput v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->refreshMinimizeDelay:I

    .line 877
    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$Options;->refreshMinimize:Z

    return-void
.end method
