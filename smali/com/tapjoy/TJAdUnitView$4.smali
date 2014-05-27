.class Lcom/tapjoy/TJAdUnitView$4;
.super Ljava/util/TimerTask;
.source "TJAdUnitView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitView;->handleClose(Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJAdUnitView;

.field final synthetic val$handleCloseButton:Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitView;Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitView$4;->this$0:Lcom/tapjoy/TJAdUnitView;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnitView$4;->val$handleCloseButton:Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$4;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->shouldClose:Z

    if-eqz v0, :cond_0

    .line 805
    const-string v0, "TJAdUnitView"

    const-string v1, "customClose timeout"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$4;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$4;->val$handleCloseButton:Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;

    #calls: Lcom/tapjoy/TJAdUnitView;->closeView(Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;)V
    invoke-static {v0, v1}, Lcom/tapjoy/TJAdUnitView;->access$700(Lcom/tapjoy/TJAdUnitView;Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;)V

    .line 808
    :cond_0
    return-void
.end method
