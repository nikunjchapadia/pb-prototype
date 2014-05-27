.class Lcom/lilkillaware/fbapptemplate/network/Api$1;
.super Ljava/lang/Object;
.source "Api.java"

# interfaces
.implements Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/network/Api;->getKillSwitch(Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;Z)V
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
        "Lcom/lilkillaware/fbapptemplate/model/KillSwitch;",
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
    .line 34
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/Api$1;->this$0:Lcom/lilkillaware/fbapptemplate/network/Api;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/network/Api$1;->val$listener:Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceCompleted(Lcom/lilkillaware/fbapptemplate/model/KillSwitch;Ljava/lang/Exception;)V
    .locals 2
    .parameter "result"
    .parameter "exception"

    .prologue
    .line 38
    if-nez p2, :cond_1

    move-object v0, p1

    .line 40
    .local v0, ks:Lcom/lilkillaware/fbapptemplate/model/KillSwitch;
    :goto_0
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/Api$1;->val$listener:Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/Api$1;->val$listener:Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;

    invoke-interface {v1, v0}, Lcom/lilkillaware/fbapptemplate/network/Api$ApiCallCompletedListener;->onApiCallCompleted(Ljava/lang/Object;)V

    .line 42
    :cond_0
    return-void

    .line 38
    .end local v0           #ks:Lcom/lilkillaware/fbapptemplate/model/KillSwitch;
    :cond_1
    invoke-static {}, Lcom/lilkillaware/fbapptemplate/model/KillSwitch;->getInstance()Lcom/lilkillaware/fbapptemplate/model/KillSwitch;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic onServiceCompleted(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    check-cast p1, Lcom/lilkillaware/fbapptemplate/model/KillSwitch;

    invoke-virtual {p0, p1, p2}, Lcom/lilkillaware/fbapptemplate/network/Api$1;->onServiceCompleted(Lcom/lilkillaware/fbapptemplate/model/KillSwitch;Ljava/lang/Exception;)V

    return-void
.end method
