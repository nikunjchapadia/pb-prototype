.class final Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewParams;
.super Ljava/lang/Object;
.source "PullToRefreshAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewParams"
.end annotation


# instance fields
.field final onRefreshListener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;

.field final viewDelegate:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;


# direct methods
.method constructor <init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;)V
    .locals 0
    .parameter "_viewDelegate"
    .parameter "_onRefreshListener"

    .prologue
    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 960
    iput-object p2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewParams;->onRefreshListener:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$OnRefreshListener;

    .line 961
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewParams;->viewDelegate:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;

    .line 962
    return-void
.end method
