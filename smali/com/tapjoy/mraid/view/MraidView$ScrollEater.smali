.class Lcom/tapjoy/mraid/view/MraidView$ScrollEater;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/view/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollEater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0
    .parameter

    .prologue
    .line 1981
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$ScrollEater;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 1986
    const/4 v0, 0x1

    return v0
.end method
