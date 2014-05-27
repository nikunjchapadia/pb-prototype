.class public Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# static fields
.field private static final SCREEN_LABEL:Ljava/lang/String; = "Splash screen"

.field protected static _loaded:Z = false

.field protected static final _splashTime:I = 0x7d0

.field protected static final _splashTimeMax:I = 0xfa0


# instance fields
.field _activity:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

.field private _app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

.field protected _main:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_loaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-object p0, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_activity:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;)Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    return-object v0
.end method

.method private connectTapJoy()V
    .locals 5

    .prologue
    .line 103
    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v3}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getTapJoyAppId()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, tapJoyAppId:Ljava/lang/String;
    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v3}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getTapJoySecretKey()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, tapJoySecretKey:Ljava/lang/String;
    invoke-static {p0, v1, v2}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 106
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 107
    const-string v3, "TapJoy"

    const-string v4, "Tap joy connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string v3, "TapJoy"

    const-string v4, "Tap joy NOT connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnect;->enableLogging(Z)V

    .line 111
    invoke-static {p0, v1, v2}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 34
    const v4, 0x1030007

    invoke-virtual {p0, v4}, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->setTheme(I)V

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    iput-object p0, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_activity:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    .line 38
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    iput-object v4, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    .line 40
    sget v4, Lcom/lilkillaware/fbapptemplate/R$layout;->activity_splash:I

    invoke-virtual {p0, v4}, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->connectTapJoy()V

    .line 45
    sget v4, Lcom/lilkillaware/fbapptemplate/R$id;->txtGeneratedBy:I

    invoke-virtual {p0, v4}, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 46
    .local v3, tv:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 49
    new-instance v2, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$1;

    invoke-direct {v2, p0}, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$1;-><init>(Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;)V

    .line 68
    .local v2, splashTread:Ljava/lang/Thread;
    const-string v4, "SplashThread"

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 71
    new-instance v1, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$2;

    invoke-direct {v1, p0}, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$2;-><init>(Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;)V

    .line 93
    .local v1, assetLoaderTread:Ljava/lang/Thread;
    const-string v4, "LoaderThread"

    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 96
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_main:Landroid/content/Intent;

    .line 98
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    .line 99
    .local v0, app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "&cd"

    const-string v6, "Splash screen"

    invoke-virtual {v4, v5, v6}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getFBAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 124
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 125
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 130
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 131
    return-void
.end method
