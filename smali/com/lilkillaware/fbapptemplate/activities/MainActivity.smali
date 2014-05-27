.class public Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
.super Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# static fields
.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328

.field private static final PROPERTY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field public static final PROPERTY_REGISTERED_TO_GCM_BACKEND:Ljava/lang/String; = "registered_to_gcm_backend"

.field public static final PROPERTY_REG_ID:Ljava/lang/String; = "registration_id"

.field private static final SCREEN_LABEL:Ljava/lang/String; = "Home Screen"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

.field gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

.field private mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

.field mSectionsPagerAdapter:Lcom/lilkillaware/fbapptemplate/adapters/MainPagerAdapter;

.field mViewPager:Landroid/support/v4/view/ViewPager;

.field msgId:Ljava/util/concurrent/atomic/AtomicInteger;

.field regid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->msgId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lcom/lilkillaware/fbapptemplate/activities/MainActivity;)Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lilkillaware/fbapptemplate/activities/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->sendRegistrationIdToBackend()V

    return-void
.end method

.method static synthetic access$200(Lcom/lilkillaware/fbapptemplate/activities/MainActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->storeRegistrationId(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkPlayServices()Z
    .locals 3

    .prologue
    .line 292
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 293
    .local v0, resultCode:I
    if-eqz v0, :cond_1

    .line 294
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const/16 v1, 0x2328

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 301
    :goto_0
    const/4 v1, 0x0

    .line 303
    :goto_1
    return v1

    .line 298
    :cond_0
    sget-object v1, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->TAG:Ljava/lang/String;

    const-string v2, "This device is not supported."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static getAppVersion(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 348
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 349
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 350
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 340
    const-class v0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 316
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v4, "registration_id"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, registrationId:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 318
    sget-object v4, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->TAG:Ljava/lang/String;

    const-string v5, "Registration not found."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v3, ""

    .line 330
    .end local v3           #registrationId:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 324
    .restart local v3       #registrationId:Ljava/lang/String;
    :cond_1
    const-string v4, "appVersion"

    const/high16 v5, -0x8000

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 325
    .local v2, registeredVersion:I
    invoke-static {p1}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 326
    .local v0, currentVersion:I
    if-eq v2, v0, :cond_0

    .line 327
    sget-object v4, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->TAG:Ljava/lang/String;

    const-string v5, "App version changed."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v3, ""

    goto :goto_0
.end method

.method private static getUserEmailAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 460
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 461
    .local v2, emailPattern:Ljava/util/regex/Pattern;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 462
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 463
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 464
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 465
    .local v3, possibleEmail:Ljava/lang/String;
    sget-object v4, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->TAG:Ljava/lang/String;

    const-string v5, "Found email address."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #possibleEmail:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 462
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 470
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private registerInBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 365
    new-instance v0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$2;-><init>(Lcom/lilkillaware/fbapptemplate/activities/MainActivity;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    .line 402
    invoke-virtual {v0, v1}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 404
    return-void
.end method

.method private sendRegistrationIdToBackend()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 413
    new-instance v0, Lcom/lilkillaware/fbapptemplate/network/WebService;

    invoke-direct {v0, v4}, Lcom/lilkillaware/fbapptemplate/network/WebService;-><init>(Z)V

    .line 414
    .local v0, ws:Lcom/lilkillaware/fbapptemplate/network/WebService;
    invoke-virtual {v0, v1}, Lcom/lilkillaware/fbapptemplate/network/WebService;->setIsPostMethod(Z)V

    .line 415
    invoke-virtual {v0, v1}, Lcom/lilkillaware/fbapptemplate/network/WebService;->setIsJson(Z)V

    .line 416
    invoke-virtual {v0, v1}, Lcom/lilkillaware/fbapptemplate/network/WebService;->setIsPostJson(Z)V

    .line 418
    const-string v1, "email"

    invoke-static {p0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getUserEmailAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/lilkillaware/fbapptemplate/network/WebService;->postEntityAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v1, "regId"

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->regid:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/lilkillaware/fbapptemplate/network/WebService;->postEntityAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v3}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getBackendRegisterUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "RegisterGCMUser/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v3}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getApplicationGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, backendRegisterUrl:Ljava/lang/String;
    const-class v3, Ljava/lang/String;

    new-instance v7, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$3;

    invoke-direct {v7, p0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$3;-><init>(Lcom/lilkillaware/fbapptemplate/activities/MainActivity;)V

    const/4 v8, 0x0

    move-object v1, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v8}, Lcom/lilkillaware/fbapptemplate/network/WebService;->getModelFromUrlAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ZZZLcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;)V

    .line 437
    return-void
.end method

.method private storeRegistrationId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "regId"

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 450
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 451
    .local v0, appVersion:I
    sget-object v3, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saving regId on app version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 453
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "registration_id"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 454
    const-string v3, "appVersion"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 455
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 456
    return-void
.end method


# virtual methods
.method public getPullToRefreshAttacher()Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    return-object v0
.end method

.method public logOut()V
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 203
    .local v0, session:Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 208
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 279
    invoke-super {p0, p1, p2, p3}, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 281
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 282
    .local v0, activeSession:Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 284
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 84
    sget v2, Lcom/lilkillaware/fbapptemplate/R$style;->AppTheme:I

    invoke-virtual {p0, v2}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setTheme(I)V

    .line 85
    invoke-super {p0, p1}, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    sget v2, Lcom/lilkillaware/fbapptemplate/R$layout;->activity_main:I

    invoke-virtual {p0, v2}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setContentView(I)V

    .line 91
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    iput-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    .line 95
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v2}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    const-string v3, "&cd"

    const-string v4, "Home Screen"

    invoke-virtual {v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->get(Landroid/app/Activity;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    move-result-object v2

    iput-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    .line 100
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 101
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 105
    new-instance v2, Lcom/lilkillaware/fbapptemplate/adapters/MainPagerAdapter;

    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/lilkillaware/fbapptemplate/adapters/MainPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    iput-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->mSectionsPagerAdapter:Lcom/lilkillaware/fbapptemplate/adapters/MainPagerAdapter;

    .line 108
    sget v2, Lcom/lilkillaware/fbapptemplate/R$id;->pager:I

    invoke-virtual {p0, v2}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 109
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->mSectionsPagerAdapter:Lcom/lilkillaware/fbapptemplate/adapters/MainPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 114
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$1;-><init>(Lcom/lilkillaware/fbapptemplate/activities/MainActivity;Landroid/app/ActionBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 122
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->mSectionsPagerAdapter:Lcom/lilkillaware/fbapptemplate/adapters/MainPagerAdapter;

    invoke-virtual {v2}, Lcom/lilkillaware/fbapptemplate/adapters/MainPagerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->mSectionsPagerAdapter:Lcom/lilkillaware/fbapptemplate/adapters/MainPagerAdapter;

    invoke-virtual {v3, v1}, Lcom/lilkillaware/fbapptemplate/adapters/MainPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->mSectionsPagerAdapter:Lcom/lilkillaware/fbapptemplate/adapters/MainPagerAdapter;

    .line 128
    invoke-virtual {v3, v1}, Lcom/lilkillaware/fbapptemplate/adapters/MainPagerAdapter;->getPageIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 127
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->checkPlayServices()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v2

    iput-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 133
    invoke-direct {p0, p0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->regid:Ljava/lang/String;

    .line 135
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->regid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->registerInBackground()V

    .line 150
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v2}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getFB_CHECK_ACTION()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/lilkillaware/fbapptemplate/FeedReceiver;->scheduleAlarms(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    sget v2, Lcom/lilkillaware/fbapptemplate/R$string;->app_name:I

    invoke-virtual {p0, v2}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/lilkillaware/fbapptemplate/util/AppRater;->app_launched(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->regid:Ljava/lang/String;

    invoke-direct {p0, p0, v2}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->storeRegistrationId(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/lilkillaware/fbapptemplate/R$menu;->main:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 185
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 186
    .local v0, menuItemId:I
    sget v1, Lcom/lilkillaware/fbapptemplate/R$id;->action_settings:I

    if-ne v0, v1, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->showSettings()V

    .line 198
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 190
    :cond_1
    sget v1, Lcom/lilkillaware/fbapptemplate/R$id;->action_facebook:I

    if-ne v0, v1, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->showFacebookIntegration()V

    goto :goto_0

    .line 192
    :cond_2
    sget v1, Lcom/lilkillaware/fbapptemplate/R$id;->action_about:I

    if-ne v0, v1, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->showAbout()V

    goto :goto_0

    .line 194
    :cond_3
    sget v1, Lcom/lilkillaware/fbapptemplate/R$id;->action_like_page:I

    if-ne v0, v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->showLikePage()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->onResume()V

    .line 171
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->checkPlayServices()Z

    .line 173
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getFBAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->onStart()V

    .line 158
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 159
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->onStop()V

    .line 164
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 165
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "fragmentTransaction"

    .prologue
    .line 265
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "fragmentTransaction"

    .prologue
    .line 250
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tab"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, screenName:Ljava/lang/String;
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "&cd"

    invoke-virtual {v1, v2, v0}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    invoke-static {}, Lcom/google/analytics/tracking/android/MapBuilder;->createAppView()Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 255
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker2()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "&cd"

    invoke-virtual {v1, v2, v0}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker2()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    invoke-static {}, Lcom/google/analytics/tracking/android/MapBuilder;->createAppView()Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 257
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "fragmentTransaction"

    .prologue
    .line 261
    return-void
.end method

.method public setProgressVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->mPullToRefreshAttacher:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setRefreshing(Z)V

    .line 275
    return-void
.end method

.method public showAbout()V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lilkillaware/fbapptemplate/activities/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 218
    return-void
.end method

.method public showFacebookIntegration()V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method public showFacebookLogInOld(Ljava/lang/Class;)V
    .locals 1
    .parameter "cls"

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 244
    return-void
.end method

.method public showLikePage()V
    .locals 7

    .prologue
    .line 227
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fb://page/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v6}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getFBPageID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, uri:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 229
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #uri:Ljava/lang/String;
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://www.facebook.com/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v6}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getFBPageID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, url:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, i:Landroid/content/Intent;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v1}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public showSettings()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lilkillaware/fbapptemplate/activities/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 223
    return-void
.end method
