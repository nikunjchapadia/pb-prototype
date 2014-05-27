.class Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity$1;
.super Ljava/lang/Object;
.source "FBProfileActivity.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/FBProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1
    .parameter "session"
    .parameter "state"
    .parameter "exception"

    .prologue
    .line 60
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 68
    :cond_0
    return-void
.end method
