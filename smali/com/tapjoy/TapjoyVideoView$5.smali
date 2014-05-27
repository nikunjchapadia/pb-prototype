.class Lcom/tapjoy/TapjoyVideoView$5;
.super Ljava/lang/Object;
.source "TapjoyVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyVideoView;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$5;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$5;->this$0:Lcom/tapjoy/TapjoyVideoView;

    const/4 v1, 0x0

    #calls: Lcom/tapjoy/TapjoyVideoView;->finishWithResult(Z)V
    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyVideoView;->access$900(Lcom/tapjoy/TapjoyVideoView;Z)V

    .line 620
    return-void
.end method
