.class public abstract Luk/co/senab/photoview/VersionedGestureDetector;
.super Ljava/lang/Object;
.source "VersionedGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/senab/photoview/VersionedGestureDetector$FroyoDetector;,
        Luk/co/senab/photoview/VersionedGestureDetector$EclairDetector;,
        Luk/co/senab/photoview/VersionedGestureDetector$CupcakeDetector;,
        Luk/co/senab/photoview/VersionedGestureDetector$OnGestureListener;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "VersionedGestureDetector"


# instance fields
.field mListener:Luk/co/senab/photoview/VersionedGestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    return-void
.end method

.method public static newInstance(Landroid/content/Context;Luk/co/senab/photoview/VersionedGestureDetector$OnGestureListener;)Luk/co/senab/photoview/VersionedGestureDetector;
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .local v1, sdkVersion:I
    const/4 v0, 0x0

    .line 37
    .local v0, detector:Luk/co/senab/photoview/VersionedGestureDetector;
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 38
    new-instance v0, Luk/co/senab/photoview/VersionedGestureDetector$CupcakeDetector;

    .end local v0           #detector:Luk/co/senab/photoview/VersionedGestureDetector;
    invoke-direct {v0, p0}, Luk/co/senab/photoview/VersionedGestureDetector$CupcakeDetector;-><init>(Landroid/content/Context;)V

    .line 45
    .restart local v0       #detector:Luk/co/senab/photoview/VersionedGestureDetector;
    :goto_0
    iput-object p1, v0, Luk/co/senab/photoview/VersionedGestureDetector;->mListener:Luk/co/senab/photoview/VersionedGestureDetector$OnGestureListener;

    .line 47
    return-object v0

    .line 39
    :cond_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 40
    new-instance v0, Luk/co/senab/photoview/VersionedGestureDetector$EclairDetector;

    .end local v0           #detector:Luk/co/senab/photoview/VersionedGestureDetector;
    invoke-direct {v0, p0}, Luk/co/senab/photoview/VersionedGestureDetector$EclairDetector;-><init>(Landroid/content/Context;)V

    .restart local v0       #detector:Luk/co/senab/photoview/VersionedGestureDetector;
    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Luk/co/senab/photoview/VersionedGestureDetector$FroyoDetector;

    .end local v0           #detector:Luk/co/senab/photoview/VersionedGestureDetector;
    invoke-direct {v0, p0}, Luk/co/senab/photoview/VersionedGestureDetector$FroyoDetector;-><init>(Landroid/content/Context;)V

    .restart local v0       #detector:Luk/co/senab/photoview/VersionedGestureDetector;
    goto :goto_0
.end method


# virtual methods
.method public abstract isScaling()Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method
