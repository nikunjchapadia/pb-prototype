.class Luk/co/senab/photoview/VersionedGestureDetector$FroyoDetector$1;
.super Ljava/lang/Object;
.source "VersionedGestureDetector.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/photoview/VersionedGestureDetector$FroyoDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/senab/photoview/VersionedGestureDetector$FroyoDetector;


# direct methods
.method constructor <init>(Luk/co/senab/photoview/VersionedGestureDetector$FroyoDetector;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 233
    iput-object p1, p0, Luk/co/senab/photoview/VersionedGestureDetector$FroyoDetector$1;->this$0:Luk/co/senab/photoview/VersionedGestureDetector$FroyoDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .parameter "detector"

    .prologue
    .line 237
    iget-object v0, p0, Luk/co/senab/photoview/VersionedGestureDetector$FroyoDetector$1;->this$0:Luk/co/senab/photoview/VersionedGestureDetector$FroyoDetector;

    iget-object v0, v0, Luk/co/senab/photoview/VersionedGestureDetector$FroyoDetector;->mListener:Luk/co/senab/photoview/VersionedGestureDetector$OnGestureListener;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Luk/co/senab/photoview/VersionedGestureDetector$OnGestureListener;->onScale(FFF)V

    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 249
    return-void
.end method
