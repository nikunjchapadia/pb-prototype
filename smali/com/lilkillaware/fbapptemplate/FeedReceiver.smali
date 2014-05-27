.class public Lcom/lilkillaware/fbapptemplate/FeedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FeedReceiver.java"


# static fields
.field private static final MINUTES_5:I = 0x493e0

.field private static final ONE_HOUR:I = 0x36ee80

.field private static final PERIOD:I = 0x2710

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/lilkillaware/fbapptemplate/FeedReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lilkillaware/fbapptemplate/FeedReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static isAlarmScheduled(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter "ctx"
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 61
    const/high16 v1, 0x2000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 63
    .local v0, alarmUp:Z
    :cond_0
    return v0
.end method

.method public static declared-synchronized scheduleAlarms(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter "ctxt"
    .parameter "FB_CHECK_ACTION"

    .prologue
    .line 33
    const-class v11, Lcom/lilkillaware/fbapptemplate/FeedReceiver;

    monitor-enter v11

    :try_start_0
    sget-object v1, Lcom/lilkillaware/fbapptemplate/FeedReceiver;->TAG:Ljava/lang/String;

    const-string v2, "scheduleAlarms start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v8, Landroid/content/Intent;

    const-class v1, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;

    invoke-direct {v8, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v8, i:Landroid/content/Intent;
    invoke-virtual {v8, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-static {p0, v8}, Lcom/lilkillaware/fbapptemplate/FeedReceiver;->isAlarmScheduled(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 39
    .local v7, c:Ljava/util/Calendar;
    const/16 v1, 0xc

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 40
    .local v10, minutes:I
    rsub-int/lit8 v1, v10, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v9, v1, 0x3e8

    .line 41
    .local v9, milisToAddToFullHour:I
    const/16 v1, 0x7530

    if-ge v9, v1, :cond_0

    .line 42
    add-int/lit16 v9, v9, 0x7530

    .line 44
    :cond_0
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 45
    .local v0, mgr:Landroid/app/AlarmManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v8, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 52
    .local v6, pi:Landroid/app/PendingIntent;
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, v9

    add-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 54
    sget-object v1, Lcom/lilkillaware/fbapptemplate/FeedReceiver;->TAG:Ljava/lang/String;

    const-string v2, "alarm scheduled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v0           #mgr:Landroid/app/AlarmManager;
    .end local v6           #pi:Landroid/app/PendingIntent;
    .end local v7           #c:Ljava/util/Calendar;
    .end local v9           #milisToAddToFullHour:I
    .end local v10           #minutes:I
    :goto_0
    monitor-exit v11

    return-void

    .line 56
    :cond_1
    :try_start_1
    sget-object v1, Lcom/lilkillaware/fbapptemplate/FeedReceiver;->TAG:Ljava/lang/String;

    const-string v2, "alarm NOT scheduled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    .end local v8           #i:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v11

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "ctxt"
    .parameter "i"

    .prologue
    .line 27
    sget-object v1, Lcom/lilkillaware/fbapptemplate/FeedReceiver;->TAG:Ljava/lang/String;

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    .line 29
    .local v0, app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getFB_CHECK_ACTION()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/lilkillaware/fbapptemplate/FeedReceiver;->scheduleAlarms(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    return-void
.end method
