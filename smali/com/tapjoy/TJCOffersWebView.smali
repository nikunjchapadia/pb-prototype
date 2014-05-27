.class public Lcom/tapjoy/TJCOffersWebView;
.super Lcom/tapjoy/TJAdUnitView;
.source "TJCOffersWebView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Offers"


# instance fields
.field private isInitialLoad:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnitView;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJCOffersWebView;->isInitialLoad:Z

    return-void
.end method


# virtual methods
.method public handleWebViewOnPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/tapjoy/TJCOffersWebView;->isInitialLoad:Z

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJCOffersWebView;->isInitialLoad:Z

    .line 81
    invoke-static {}, Lcom/tapjoy/TJCOffers;->getOffersNotifierResponse()V

    .line 83
    const-string v0, "Offers"

    const-string v1, "getOffersNotifierResponse fired"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tapjoy/TJAdUnitView;->handleWebViewOnPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleWebViewOnReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/tapjoy/TJCOffersWebView;->isInitialLoad:Z

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJCOffersWebView;->isInitialLoad:Z

    .line 64
    invoke-virtual {p0}, Lcom/tapjoy/TJCOffersWebView;->finish()V

    .line 65
    const-string v0, "Failed to load offers from server"

    invoke-static {v0}, Lcom/tapjoy/TJCOffers;->getOffersNotifierResponseFailed(Ljava/lang/String;)V

    .line 67
    const-string v0, "Offers"

    const-string v1, "getOffersNotifierResponseFailed fired"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tapjoy/TJAdUnitView;->handleWebViewOnReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-super {p0, p1}, Lcom/tapjoy/TJAdUnitView;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(I)V

    .line 26
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->viewDidOpen(I)V

    .line 27
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-super {p0}, Lcom/tapjoy/TJAdUnitView;->onDestroy()V

    .line 51
    iget-boolean v0, p0, Lcom/tapjoy/TJCOffersWebView;->skipOfferWall:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/TJCOffersWebView;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->viewWillClose(I)V

    .line 54
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->viewDidClose(I)V

    .line 56
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-super {p0}, Lcom/tapjoy/TJAdUnitView;->onResume()V

    .line 35
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->offersURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/TJCOffersWebView;->pauseCalled:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/TJCOffersWebView;->redirectedActivity:Z

    if-ne v0, v1, :cond_0

    .line 37
    const-string v0, "Offers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume reload offer wall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJCOffersWebView;->offersURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v1, p0, Lcom/tapjoy/TJCOffersWebView;->offersURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    .line 41
    iget v0, p0, Lcom/tapjoy/TJCOffersWebView;->historyIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/TJCOffersWebView;->historyIndex:I

    .line 43
    :cond_0
    return-void
.end method
