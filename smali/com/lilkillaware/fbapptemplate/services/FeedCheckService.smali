.class public Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;
.super Landroid/app/IntentService;
.source "FeedCheckService.java"


# static fields
.field public static final NOTIFICATION_ID:I = 0x7a69

.field protected static final TAG:Ljava/lang/String; = null

.field private static _isChecking:Z = false

.field private static final pref_key_show_new_photo_notifications:Ljava/lang/String; = "pref_key_show_new_photo_notifications"


# instance fields
.field private _app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->_isChecking:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "FeedCheckService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->resolveApplicationObj()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;)Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    sput-boolean p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->_isChecking:Z

    return p0
.end method

.method static synthetic access$200(Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;Lcom/lilkillaware/fbapptemplate/model/FeedItem;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->getBitmapForFeed(Lcom/lilkillaware/fbapptemplate/model/FeedItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private checkForNewFeedItem()V
    .locals 6

    .prologue
    .line 65
    sget-object v2, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->TAG:Ljava/lang/String;

    monitor-enter v2

    .line 66
    :try_start_0
    sget-boolean v1, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->_isChecking:Z

    if-eqz v1, :cond_0

    .line 67
    monitor-exit v2

    .line 91
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->_isChecking:Z

    .line 69
    new-instance v0, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;

    invoke-direct {v0, p0}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, fb:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;
    const/4 v1, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$1;

    invoke-direct {v4, p0}, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$1;-><init>(Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;->getFeed(ZZLcom/lilkillaware/fbapptemplate/network/FBFeedGetter$Listener;Z)V

    .line 90
    monitor-exit v2

    goto :goto_0

    .end local v0           #fb:Lcom/lilkillaware/fbapptemplate/network/FBFeedGetter;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getBitmapForFeed(Lcom/lilkillaware/fbapptemplate/model/FeedItem;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "feedItem"

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->getPictureFromNotification()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, photoUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/lilkillaware/fbapptemplate/network/Network;->getBitmapFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    .local v0, bmp:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private resolveApplicationObj()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 47
    sget-boolean v3, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->_isChecking:Z

    if-eqz v3, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 51
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_show_new_photo_notifications"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 52
    .local v2, showNotifications:Z
    if-eqz v2, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->resolveApplicationObj()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v3}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getFB_CHECK_ACTION()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onHandleIntent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->checkForNewFeedItem()V

    goto :goto_0
.end method

.method protected showNotificationForNewFeed(Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V
    .locals 4
    .parameter "feedItem"

    .prologue
    .line 94
    new-instance v0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$2;

    invoke-direct {v0, p0, p1}, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$2;-><init>(Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V

    .line 120
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Void;

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 123
    return-void
.end method
