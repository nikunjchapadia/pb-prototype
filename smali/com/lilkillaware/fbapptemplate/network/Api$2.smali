.class Lcom/lilkillaware/fbapptemplate/network/Api$2;
.super Ljava/lang/Object;
.source "Api.java"

# interfaces
.implements Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/network/Api;->getFeed(ZLjava/lang/String;ZLcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/network/Api;

.field final synthetic val$listener:Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/network/Api;Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/Api$2;->this$0:Lcom/lilkillaware/fbapptemplate/network/Api;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/network/Api$2;->val$listener:Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onServiceCompleted(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/lilkillaware/fbapptemplate/network/Api$2;->onServiceCompleted(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onServiceCompleted(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter "result"
    .parameter "exception"

    .prologue
    .line 62
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/Api$2;->val$listener:Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;->onApiCallCompleted(Ljava/lang/Object;)V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/Api$2;->val$listener:Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;

    invoke-interface {v0, p1}, Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;->onApiCallCompleted(Ljava/lang/Object;)V

    .line 66
    return-void
.end method
