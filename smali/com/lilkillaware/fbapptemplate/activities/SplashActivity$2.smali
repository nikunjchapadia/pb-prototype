.class Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$2;
.super Ljava/lang/Thread;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$2;->this$0:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 77
    sget-boolean v1, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_loaded:Z

    if-nez v1, :cond_0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$2;->this$0:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    iget-object v1, v1, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_activity:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$2;->this$0:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    #getter for: Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    invoke-static {v2}, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->access$000(Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;)Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getFB_CHECK_ACTION()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lilkillaware/fbapptemplate/FeedReceiver;->scheduleAlarms(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_loaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    sput-boolean v3, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_loaded:Z

    goto :goto_0
.end method
