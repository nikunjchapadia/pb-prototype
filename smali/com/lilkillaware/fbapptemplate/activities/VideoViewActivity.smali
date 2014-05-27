.class public Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity;
.super Landroid/app/Activity;
.source "VideoViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity$VideoBrowser;
    }
.end annotation


# static fields
.field private static final SCREEN_LABEL:Ljava/lang/String; = "Photo view screen"

.field public static final VIDEO_ID:Ljava/lang/String; = "videoId"


# instance fields
.field private _app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

.field private _webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 27
    const v2, 0x1030007

    invoke-virtual {p0, v2}, Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity;->setTheme(I)V

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v2, Lcom/lilkillaware/fbapptemplate/R$layout;->activity_web_view:I

    invoke-virtual {p0, v2}, Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "videoId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, videoId:Ljava/lang/String;
    sget v2, Lcom/lilkillaware/fbapptemplate/R$id;->web_view:I

    invoke-virtual {p0, v2}, Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity;->_webView:Landroid/webkit/WebView;

    .line 33
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity;->_webView:Landroid/webkit/WebView;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 35
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 36
    .local v1, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 37
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 38
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 41
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity;->_webView:Landroid/webkit/WebView;

    const-string v3, "https://scontent.xx.fbcdn.net/hvideo-prn1/v/t42/1227262_10201675849590602_1659635633_n.mp4?oh=911034b8972a9a21968afddc5b45d93b&oe=530EE3D9"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    iput-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    .line 44
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v2}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    const-string v3, "&cd"

    const-string v4, "Photo view screen"

    invoke-virtual {v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v2}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker2()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    const-string v3, "&cd"

    const-string v4, "Photo view screen"

    invoke-virtual {v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 59
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 60
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker2()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    invoke-static {}, Lcom/google/analytics/tracking/android/MapBuilder;->createAppView()Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 61
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 66
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 67
    return-void
.end method
