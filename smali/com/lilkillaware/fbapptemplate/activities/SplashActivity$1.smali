.class Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$1;
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
    .line 49
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x1

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, waited:I
    :goto_0
    :try_start_0
    sget-boolean v1, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_loaded:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_1

    :cond_0
    const/16 v1, 0xfa0

    if-ge v0, v1, :cond_1

    .line 55
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$1;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    add-int/lit8 v0, v0, 0x64

    goto :goto_0

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    iget-object v2, v2, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_main:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    iget-object v1, v1, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_main:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->finish()V

    .line 66
    :goto_1
    return-void

    .line 58
    :catch_0
    move-exception v1

    .line 61
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    iget-object v2, v2, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_main:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    iget-object v1, v1, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_main:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->finish()V

    goto :goto_1

    .line 61
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    iget-object v3, v3, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_main:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    iget-object v2, v2, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->_main:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;

    invoke-virtual {v2}, Lcom/lilkillaware/fbapptemplate/activities/SplashActivity;->finish()V

    throw v1
.end method
