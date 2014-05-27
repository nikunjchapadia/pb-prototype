.class public abstract Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
.super Landroid/app/Application;
.source "FBAppTemplateApplication.java"


# static fields
.field private static final GA_LOG_VERBOSITY:Lcom/google/analytics/tracking/android/Logger$LogLevel; = null

.field private static final IS_FIRST_RUN:Ljava/lang/String; = "first_run"

.field private static final LAST_PHOTO_ID:Ljava/lang/String; = "last_photo_id"

.field private static final TRACKING_PREF_KEY:Ljava/lang/String; = "pref_key_enable_analytics"

.field private static final USER_ACCEPTS_NOTIFICATIONS:Ljava/lang/String; = "user_accept_notifications"


# instance fields
.field private _canPost:Z

.field private _ga:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private _lastPhotoId:Ljava/lang/String;

.field private _onSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private _tracker:Lcom/google/analytics/tracking/android/Tracker;

.field private _tracker2:Lcom/google/analytics/tracking/android/Tracker;

.field private _userPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->INFO:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    sput-object v0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->GA_LOG_VERBOSITY:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_canPost:Z

    return-void
.end method

.method private initializeGa()V
    .locals 2

    .prologue
    .line 37
    invoke-static {p0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_ga:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 38
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_ga:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGAPropertyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_tracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 39
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_ga:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGAPropertyId2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_tracker2:Lcom/google/analytics/tracking/android/Tracker;

    .line 42
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_ga:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    sget-object v1, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->GA_LOG_VERBOSITY:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/Logger;->setLogLevel(Lcom/google/analytics/tracking/android/Logger$LogLevel;)V

    .line 44
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_userPrefs:Landroid/content/SharedPreferences;

    .line 45
    new-instance v0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication$1;

    invoke-direct {v0, p0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication$1;-><init>(Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;)V

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_onSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 53
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_userPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_onSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public canPost()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_canPost:Z

    return v0
.end method

.method public gaTrackButtonClick(Ljava/lang/String;)V
    .locals 3
    .parameter "buttonName"

    .prologue
    .line 206
    const-string v0, "ui_action"

    const-string v1, "button_press"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->gaTrackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    return-void
.end method

.method public gaTrackButtonClick2(Ljava/lang/String;)V
    .locals 3
    .parameter "buttonName"

    .prologue
    .line 214
    const-string v0, "ui_action"

    const-string v1, "button_press"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->gaTrackEvent2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 215
    return-void
.end method

.method public gaTrackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .parameter "category"
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    invoke-static {p1, p2, p3, p4}, Lcom/google/analytics/tracking/android/MapBuilder;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 203
    return-void
.end method

.method public gaTrackEvent2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .parameter "category"
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker2()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    invoke-static {p1, p2, p3, p4}, Lcom/google/analytics/tracking/android/MapBuilder;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 211
    return-void
.end method

.method public abstract getAndroidApiUrl()Ljava/lang/String;
.end method

.method public abstract getAplicationMarketLink()Ljava/lang/String;
.end method

.method public abstract getApplicationGuid()Ljava/lang/String;
.end method

.method public abstract getApplicationName()Ljava/lang/String;
.end method

.method public abstract getApplicationNameForMail()Ljava/lang/String;
.end method

.method public getBackendRegisterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getAndroidApiUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackendUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getAndroidApiUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getDefaultSharedPreferences()Landroid/content/SharedPreferences;
.end method

.method public abstract getFBAppId()Ljava/lang/String;
.end method

.method public abstract getFBPageID()Ljava/lang/String;
.end method

.method public abstract getFB_CHECK_ACTION()Ljava/lang/String;
.end method

.method protected abstract getGAPropertyId()Ljava/lang/String;
.end method

.method protected abstract getGAPropertyId2()Ljava/lang/String;
.end method

.method public getGaInstance()Lcom/google/analytics/tracking/android/GoogleAnalytics;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_ga:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    return-object v0
.end method

.method public getGaTracker()Lcom/google/analytics/tracking/android/Tracker;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_tracker:Lcom/google/analytics/tracking/android/Tracker;

    return-object v0
.end method

.method public getGaTracker2()Lcom/google/analytics/tracking/android/Tracker;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_tracker2:Lcom/google/analytics/tracking/android/Tracker;

    return-object v0
.end method

.method public getLastPhotoId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_lastPhotoId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_lastPhotoId:Ljava/lang/String;

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 87
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "last_photo_id"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, lastPhotoId:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const-string v0, ""

    goto :goto_0
.end method

.method public abstract getPageLinkString()Ljava/lang/String;
.end method

.method public abstract getProfileNameString()Ljava/lang/String;
.end method

.method public abstract getProfilePhotoUrlString()Ljava/lang/String;
.end method

.method public abstract getSENDER_ID()Ljava/lang/String;
.end method

.method public abstract getShareViaThisAppString()Ljava/lang/String;
.end method

.method protected abstract getSharedPreferences()Landroid/content/SharedPreferences;
.end method

.method public abstract getTapJoyAppId()Ljava/lang/String;
.end method

.method public abstract getTapJoySecretKey()Ljava/lang/String;
.end method

.method public abstract getWebPageForMail()Ljava/lang/String;
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 127
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->initializeGa()V

    .line 131
    new-instance v0, Lcom/facebook/android/Facebook;

    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getFBAppId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->mFacebook:Lcom/facebook/android/Facebook;

    .line 133
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    sget-object v1, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->mFacebook:Lcom/facebook/android/Facebook;

    invoke-direct {v0, v1}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    sput-object v0, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 134
    return-void
.end method

.method public setCanPost(Z)V
    .locals 0
    .parameter "canPost"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_canPost:Z

    .line 227
    return-void
.end method

.method public setLastPhotoId(Ljava/lang/String;)V
    .locals 3
    .parameter "lastPhotoId"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 76
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_photo_id"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->_lastPhotoId:Ljava/lang/String;

    .line 80
    return-void
.end method
