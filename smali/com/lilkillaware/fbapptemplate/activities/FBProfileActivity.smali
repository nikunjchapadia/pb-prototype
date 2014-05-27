.class public Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity;
.super Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;
.source "FBProfileActivity.java"


# static fields
.field private static final SCREEN_LABEL:Ljava/lang/String; = "FB profile screen"


# instance fields
.field private _app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

.field private sessionCallback:Lcom/facebook/Session$StatusCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;-><init>()V

    .line 56
    new-instance v0, Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity$1;

    invoke-direct {v0, p0}, Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity$1;-><init>(Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity;)V

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity;->sessionCallback:Lcom/facebook/Session$StatusCallback;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v1, Lcom/lilkillaware/fbapptemplate/R$layout;->activity_fb_profile:I

    invoke-virtual {p0, v1}, Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget v2, Lcom/lilkillaware/fbapptemplate/R$id;->fragment_user_setting:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/UserSettingsFragment;

    .line 35
    .local v0, f:Lcom/facebook/widget/UserSettingsFragment;
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity;->sessionCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UserSettingsFragment;->setSessionStatusCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 37
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    .line 38
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "&cd"

    const-string v3, "FB profile screen"

    invoke-virtual {v1, v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker2()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "&cd"

    const-string v3, "FB profile screen"

    invoke-virtual {v1, v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0}, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->onResume()V

    .line 23
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    .line 26
    .local v0, app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getFBAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->onStart()V

    .line 46
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 47
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker2()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    invoke-static {}, Lcom/google/analytics/tracking/android/MapBuilder;->createAppView()Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 48
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->onStop()V

    .line 53
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 54
    return-void
.end method
