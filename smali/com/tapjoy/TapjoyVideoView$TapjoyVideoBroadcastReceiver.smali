.class Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TapjoyVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TapjoyVideoBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyVideoView;Lcom/tapjoy/TapjoyVideoView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 699
    const-string v1, "noConnectivity"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 701
    .local v0, noConnectivity:Z
    if-eqz v0, :cond_0

    .line 702
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #getter for: Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/tapjoy/TapjoyVideoView;->access$700(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 703
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #setter for: Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z
    invoke-static {v1, v3}, Lcom/tapjoy/TapjoyVideoView;->access$802(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 704
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-virtual {v1, v3}, Lcom/tapjoy/TapjoyVideoView;->showDialog(I)V

    .line 705
    const-string v1, "VideoView"

    const-string v2, "No network connectivity during video playback"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_0
    return-void
.end method
