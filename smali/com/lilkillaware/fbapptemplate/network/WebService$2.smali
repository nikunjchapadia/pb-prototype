.class Lcom/lilkillaware/fbapptemplate/network/WebService$2;
.super Landroid/os/AsyncTask;
.source "WebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/network/WebService;->getModelFromUrlAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ZZZLcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;)V
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
        "TT;>;"
    }
.end annotation


# instance fields
.field exception:Ljava/lang/Exception;

.field private progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/network/WebService;

.field final synthetic val$class1:Ljava/lang/Class;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$listener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;

.field final synthetic val$postProcessListener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;

.field final synthetic val$raiseDialogIfNoInternet:Z

.field final synthetic val$showProgressDialog:Z

.field final synthetic val$strict:Z


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/network/WebService;Landroid/content/Context;ZZLjava/lang/Class;ZLcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;)V
    .locals 1
    .parameter "this$0"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->this$0:Lcom/lilkillaware/fbapptemplate/network/WebService;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$ctx:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$raiseDialogIfNoInternet:Z

    iput-boolean p4, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$showProgressDialog:Z

    iput-object p5, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$class1:Ljava/lang/Class;

    iput-boolean p6, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$strict:Z

    iput-object p7, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$postProcessListener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;

    iput-object p8, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$listener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 324
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->doInBackground([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 346
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .line 347
    .local v3, urlArg:Ljava/lang/String;
    const/4 v2, 0x0

    .line 348
    .local v2, retVal:Ljava/lang/Object;,"TT;"
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/lilkillaware/fbapptemplate/network/Network;->isOnline(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    :try_start_0
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->this$0:Lcom/lilkillaware/fbapptemplate/network/WebService;

    iget-object v5, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$class1:Ljava/lang/Class;

    iget-boolean v6, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$strict:Z

    iget-object v7, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$postProcessListener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;

    #calls: Lcom/lilkillaware/fbapptemplate/network/WebService;->getModelFromUrl(Ljava/lang/String;Ljava/lang/Class;ZLcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;)Ljava/lang/Object;
    invoke-static {v4, v3, v5, v6, v7}, Lcom/lilkillaware/fbapptemplate/network/WebService;->access$200(Lcom/lilkillaware/fbapptemplate/network/WebService;Ljava/lang/String;Ljava/lang/Class;ZLcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 359
    .end local v2           #retVal:Ljava/lang/Object;,"TT;"
    :cond_0
    :goto_0
    return-object v2

    .line 351
    .restart local v2       #retVal:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->exception:Ljava/lang/Exception;

    .line 353
    const-string v1, "Error in getModelFromUrl()"

    .line 354
    .local v1, message:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 355
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

    .line 356
    :cond_1
    invoke-static {}, Lcom/lilkillaware/fbapptemplate/network/WebService;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, result:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->exception:Ljava/lang/Exception;

    instance-of v0, v0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$ctx:Landroid/content/Context;

    sget v1, Lcom/lilkillaware/fbapptemplate/R$string;->MSG_TIMEOUT:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->this$0:Lcom/lilkillaware/fbapptemplate/network/WebService;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/WebService;->_NoResultMessage:Ljava/lang/String;
    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/network/WebService;->access$300(Lcom/lilkillaware/fbapptemplate/network/WebService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->this$0:Lcom/lilkillaware/fbapptemplate/network/WebService;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/WebService;->_NoResultTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/lilkillaware/fbapptemplate/network/WebService;->access$400(Lcom/lilkillaware/fbapptemplate/network/WebService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->this$0:Lcom/lilkillaware/fbapptemplate/network/WebService;

    #getter for: Lcom/lilkillaware/fbapptemplate/network/WebService;->_NoResultMessage:Ljava/lang/String;
    invoke-static {v2}, Lcom/lilkillaware/fbapptemplate/network/WebService;->access$300(Lcom/lilkillaware/fbapptemplate/network/WebService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lilkillaware/fbapptemplate/util/DialogHelper;->showInfoMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$listener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;

    if-eqz v0, :cond_3

    .line 380
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$listener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->exception:Ljava/lang/Exception;

    invoke-interface {v0, p1, v1}, Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;->onServiceCompleted(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 381
    :cond_3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 382
    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    .line 331
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/lilkillaware/fbapptemplate/network/Network;->isOnline(Landroid/content/Context;)Z

    move-result v0

    .line 332
    .local v0, internetExists:Z
    iget-boolean v2, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$raiseDialogIfNoInternet:Z

    if-eqz v2, :cond_0

    .line 333
    if-nez v0, :cond_0

    .line 334
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/lilkillaware/fbapptemplate/util/DialogHelper;->showNetworkRequiredMessage(Landroid/content/Context;)V

    .line 337
    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$showProgressDialog:Z

    if-eqz v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$ctx:Landroid/content/Context;

    sget v3, Lcom/lilkillaware/fbapptemplate/R$string;->loading:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, msg:Ljava/lang/String;
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->val$ctx:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;->progressDialog:Landroid/app/ProgressDialog;

    .line 341
    .end local v1           #msg:Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 342
    return-void
.end method
