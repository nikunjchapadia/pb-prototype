.class Lcom/lilkillaware/fbapptemplate/activities/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->sendRegistrationIdToBackend()V
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
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/activities/MainActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$3;->this$0:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onServiceCompleted(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 431
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$3;->onServiceCompleted(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onServiceCompleted(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter "result"
    .parameter "exception"

    .prologue
    .line 434
    invoke-static {}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registered to gcm backend"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void
.end method
