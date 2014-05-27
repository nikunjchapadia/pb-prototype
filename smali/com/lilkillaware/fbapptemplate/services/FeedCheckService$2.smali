.class Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$2;
.super Landroid/os/AsyncTask;
.source "FeedCheckService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->showNotificationForNewFeed(Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;

.field final synthetic val$feedItem:Lcom/lilkillaware/fbapptemplate/model/FeedItem;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$2;->this$0:Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$2;->val$feedItem:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 94
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x0

    .line 98
    iget-object v7, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$2;->this$0:Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 100
    .local v4, mNotificationManager:Landroid/app/NotificationManager;
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$2;->this$0:Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;

    const-class v8, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v2, intent:Landroid/content/Intent;
    const/high16 v7, 0x400

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    iget-object v7, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$2;->this$0:Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;

    invoke-static {v7, v9, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 104
    .local v1, contentIntent:Landroid/app/PendingIntent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$2;->val$feedItem:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    iget-object v8, v8, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$2;->val$feedItem:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    iget-object v8, v8, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_profileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, title:Ljava/lang/String;
    iget-object v7, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$2;->this$0:Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;

    iget-object v8, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$2;->val$feedItem:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    #calls: Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->getBitmapForFeed(Lcom/lilkillaware/fbapptemplate/model/FeedItem;)Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;->access$200(Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;Lcom/lilkillaware/fbapptemplate/model/FeedItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v8, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$2;->this$0:Lcom/lilkillaware/fbapptemplate/services/FeedCheckService;

    invoke-direct {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v8, Lcom/lilkillaware/fbapptemplate/R$drawable;->ic_launcher_appicon:I

    .line 108
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 109
    invoke-virtual {v7, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/lilkillaware/fbapptemplate/services/FeedCheckService$2;->val$feedItem:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    iget-object v8, v8, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_message:Ljava/lang/String;

    .line 110
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    new-instance v8, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v8}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 111
    invoke-virtual {v8, v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 112
    invoke-virtual {v7, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 114
    .local v3, mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 115
    .local v5, notification:Landroid/app/Notification;
    iget v7, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v5, Landroid/app/Notification;->flags:I

    .line 116
    const/16 v7, 0x7a69

    invoke-virtual {v4, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 117
    const/4 v7, 0x0

    return-object v7
.end method
