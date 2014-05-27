.class Lcom/lilkillaware/fbapptemplate/activities/MainActivity$2;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->registerInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/activities/MainActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$2;->this$0:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$2;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .parameter "params"

    .prologue
    .line 368
    const-string v1, ""

    .line 370
    .local v1, msg:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$2;->this$0:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    iget-object v2, v2, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    if-nez v2, :cond_0

    .line 371
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$2;->this$0:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$2;->this$0:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-static {v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v3

    iput-object v3, v2, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 373
    :cond_0
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$2;->this$0:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$2;->this$0:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    iget-object v3, v3, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$2;->this$0:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    #getter for: Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    invoke-static {v6}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->access$000(Lcom/lilkillaware/fbapptemplate/activities/MainActivity;)Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getSENDER_ID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->regid:Ljava/lang/String;

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device registered, registration ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$2;->this$0:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    iget-object v3, v3, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->regid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$2;->this$0:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    #calls: Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->sendRegistrationIdToBackend()V
    invoke-static {v2}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->access$100(Lcom/lilkillaware/fbapptemplate/activities/MainActivity;)V

    .line 392
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$2;->this$0:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$2;->this$0:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$2;->this$0:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    iget-object v4, v4, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->regid:Ljava/lang/String;

    #calls: Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->storeRegistrationId(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->access$200(Lcom/lilkillaware/fbapptemplate/activities/MainActivity;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_0
    return-object v1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, ex:Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
