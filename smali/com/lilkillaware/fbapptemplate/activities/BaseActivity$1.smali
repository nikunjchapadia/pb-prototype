.class Lcom/lilkillaware/fbapptemplate/activities/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;

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
    .line 22
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;

    #calls: Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    invoke-static {v0, p1, p2, p3}, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->access$000(Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 23
    return-void
.end method
