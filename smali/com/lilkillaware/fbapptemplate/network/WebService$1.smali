.class Lcom/lilkillaware/fbapptemplate/network/WebService$1;
.super Landroid/os/AsyncTask;
.source "WebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/network/WebService;->getResponseFromUrlAsync(Ljava/lang/String;Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field exception:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/network/WebService;

.field final synthetic val$listener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/network/WebService;Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;)V
    .locals 1
    .parameter "this$0"
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$1;->this$0:Lcom/lilkillaware/fbapptemplate/network/WebService;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$1;->val$listener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$1;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 181
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lilkillaware/fbapptemplate/network/WebService$1;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "arg0"

    .prologue
    .line 192
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .line 193
    .local v3, urlArg:Ljava/lang/String;
    const/4 v2, 0x0

    .line 195
    .local v2, retVal:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$1;->this$0:Lcom/lilkillaware/fbapptemplate/network/WebService;

    #calls: Lcom/lilkillaware/fbapptemplate/network/WebService;->getXmlFromUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/lilkillaware/fbapptemplate/network/WebService;->access$000(Lcom/lilkillaware/fbapptemplate/network/WebService;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 203
    :goto_0
    return-object v2

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$1;->exception:Ljava/lang/Exception;

    .line 198
    const-string v1, "Error in getModelFromUrl()"

    .line 199
    .local v1, message:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    :cond_0
    invoke-static {}, Lcom/lilkillaware/fbapptemplate/network/WebService;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lilkillaware/fbapptemplate/network/WebService$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$1;->exception:Ljava/lang/Exception;

    instance-of v0, v0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$1;->val$listener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$1;->val$listener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$1;->exception:Ljava/lang/Exception;

    invoke-interface {v0, p1, v1}, Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;->onServiceCompleted(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 214
    :cond_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 188
    return-void
.end method
