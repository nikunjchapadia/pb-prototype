.class public Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$EnvironmentDelegate;
.super Ljava/lang/Object;
.source "PullToRefreshAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnvironmentDelegate"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextForInflater(Landroid/app/Activity;)Landroid/content/Context;
    .locals 2
    .parameter "activity"

    .prologue
    .line 810
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 811
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object p1

    .line 813
    .end local p1
    :cond_0
    return-object p1
.end method
