.class public Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/WebViewDelegate;
.super Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;
.source "WebViewDelegate.java"


# static fields
.field public static final SUPPORTED_VIEW_CLASS:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Landroid/webkit/WebView;

    sput-object v0, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/WebViewDelegate;->SUPPORTED_VIEW_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public isScrolledToTop(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
