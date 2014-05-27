.class Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;
.super Ljava/lang/Object;
.source "TJAdUnitView.java"

# interfaces
.implements Lcom/tapjoy/mraid/listener/MraidViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJAdUnitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TJAdUnitViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJAdUnitView;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJAdUnitView;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJAdUnitView;Lcom/tapjoy/TJAdUnitView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;-><init>(Lcom/tapjoy/TJAdUnitView;)V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitView;->finish()V

    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 8
    .parameter "consoleMessage"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 420
    iget-object v5, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v5, v5, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v5, v5, Lcom/tapjoy/TJAdUnitJSBridge;->shouldClose:Z

    if-eqz v5, :cond_1

    .line 422
    const/4 v5, 0x5

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Uncaught"

    aput-object v6, v2, v5

    const-string v5, "uncaught"

    aput-object v5, v2, v7

    const/4 v5, 0x2

    const-string v6, "Error"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, "error"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "not defined"

    aput-object v6, v2, v5

    .line 424
    .local v2, errors:[Ljava/lang/String;
    const-string v5, "TJAdUnitView"

    const-string v6, "shouldClose..."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 429
    .local v1, error:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 431
    iget-object v5, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    #calls: Lcom/tapjoy/TJAdUnitView;->handleBackKey()V
    invoke-static {v5}, Lcom/tapjoy/TJAdUnitView;->access$100(Lcom/tapjoy/TJAdUnitView;)V

    .line 427
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 436
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #error:Ljava/lang/String;
    .end local v2           #errors:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return v7
.end method

.method public onEventFired()Z
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public onExpand()Z
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public onExpandClose()Z
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJAdUnitView;->handleWebViewOnPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    #getter for: Lcom/tapjoy/TJAdUnitView;->isLegacyView:Z
    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->access$200(Lcom/tapjoy/TJAdUnitView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    #getter for: Lcom/tapjoy/TJAdUnitView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->access$300(Lcom/tapjoy/TJAdUnitView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->display()V

    .line 473
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    .line 475
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    const/4 v3, 0x0

    .line 442
    const-string v0, "TJAdUnitView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    #getter for: Lcom/tapjoy/TJAdUnitView;->isLegacyView:Z
    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->access$200(Lcom/tapjoy/TJAdUnitView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    #getter for: Lcom/tapjoy/TJAdUnitView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->access$300(Lcom/tapjoy/TJAdUnitView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    #getter for: Lcom/tapjoy/TJAdUnitView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->access$300(Lcom/tapjoy/TJAdUnitView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    .line 456
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-boolean v3, v0, Lcom/tapjoy/TJAdUnitJSBridge;->customClose:Z

    .line 457
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-boolean v3, v0, Lcom/tapjoy/TJAdUnitJSBridge;->shouldClose:Z

    .line 459
    :cond_1
    return-void
.end method

.method public onReady()Z
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tapjoy/TJAdUnitView;->handleWebViewOnReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public onResize()Z
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public onResizeClose()Z
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .parameter "view"
    .parameter "url"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 482
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v2}, Lcom/tapjoy/TJAdUnitView;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 483
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    const-string v3, "Connection not properly established"

    invoke-virtual {v2, p1, v1, v3, p2}, Lcom/tapjoy/TJAdUnitView;->handleWebViewOnReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 566
    .end local p1
    :goto_0
    return v0

    .line 486
    .restart local p1
    :cond_0
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iput-boolean v1, v2, Lcom/tapjoy/TJAdUnitView;->redirectedActivity:Z

    .line 488
    const-string v2, "TJAdUnitView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptURL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v2, v2, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v2, v2, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v2}, Lcom/tapjoy/mraid/view/MraidView;->isMraid()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "mraid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 493
    goto :goto_0

    .line 497
    :cond_1
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    #getter for: Lcom/tapjoy/TJAdUnitView;->viewType:I
    invoke-static {v2}, Lcom/tapjoy/TJAdUnitView;->access$400(Lcom/tapjoy/TJAdUnitView;)I

    move-result v2

    if-ne v2, v5, :cond_2

    const-string v2, "offer_wall"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 499
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    const-string v2, "offer_wall"

    #calls: Lcom/tapjoy/TJAdUnitView;->finishWithResult(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/tapjoy/TJAdUnitView;->access$500(Lcom/tapjoy/TJAdUnitView;Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_2
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    #getter for: Lcom/tapjoy/TJAdUnitView;->viewType:I
    invoke-static {v2}, Lcom/tapjoy/TJAdUnitView;->access$400(Lcom/tapjoy/TJAdUnitView;)I

    move-result v2

    if-ne v2, v5, :cond_3

    const-string v2, "tjvideo"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 506
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    const-string v2, "tjvideo"

    #calls: Lcom/tapjoy/TJAdUnitView;->finishWithResult(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/tapjoy/TJAdUnitView;->access$500(Lcom/tapjoy/TJAdUnitView;Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_3
    const-string v2, "tjvideo://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 515
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    #calls: Lcom/tapjoy/TJAdUnitView;->handleTJVideoURL(Ljava/lang/String;)V
    invoke-static {v1, p2}, Lcom/tapjoy/TJAdUnitView;->access$600(Lcom/tapjoy/TJAdUnitView;Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :cond_4
    const-string v2, "showOffers"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 523
    const-string v1, "TJAdUnitView"

    const-string v2, "showOffers"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    new-instance v1, Lcom/tapjoy/TJCOffers;

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-direct {v1, v2}, Lcom/tapjoy/TJCOffers;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJCOffers;->showOffers(Lcom/tapjoy/TapjoyOffersNotifier;)V

    goto/16 :goto_0

    .line 530
    :cond_5
    const-string v2, "dismiss"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 532
    const-string v1, "TJAdUnitView"

    const-string v2, "dismiss"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnitView;->finish()V

    goto/16 :goto_0

    .line 539
    :cond_6
    const-string v2, "http://ok"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 541
    const-string v1, "TJAdUnitView"

    const-string v2, "http://ok"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnitView;->finish()V

    goto/16 :goto_0

    .line 549
    :cond_7
    const-string v2, "ws.tapjoyads.com"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "tjyoutubevideo=true"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getRedirectDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 551
    :cond_8
    const-string v1, "TJAdUnitView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open redirecting URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    check-cast p1, Lcom/tapjoy/mraid/view/MraidView;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/tapjoy/mraid/view/MraidView;->loadUrlStandard(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 557
    .restart local p1
    :cond_9
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v2, v2, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v2, v2, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    if-eqz v2, :cond_a

    .line 559
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iput-boolean v0, v2, Lcom/tapjoy/TJAdUnitView;->redirectedActivity:Z

    move v0, v1

    .line 560
    goto/16 :goto_0

    .line 565
    :cond_a
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
