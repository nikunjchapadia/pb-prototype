.class public Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _fbSessionStatusCallback:Lcom/facebook/Session$StatusCallback;

.field private callback:Lcom/facebook/Session$StatusCallback;

.field private uiHelper:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 19
    new-instance v0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity$1;-><init>(Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;)V

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->callback:Lcom/facebook/Session$StatusCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    return-void
.end method

.method private onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 2
    .parameter "session"
    .parameter "state"
    .parameter "exception"

    .prologue
    .line 66
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    sget-object v0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "Logged in..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->_fbSessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->_fbSessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/Session$StatusCallback;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 74
    :cond_1
    return-void

    .line 68
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "Logged out..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getFBSessionStatusCallback()Lcom/facebook/Session$StatusCallback;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->_fbSessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 44
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 45
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance v0, Lcom/facebook/UiLifecycleHelper;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-direct {v0, p0, v1}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    .line 32
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 56
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 57
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 50
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 51
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 38
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 39
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public setFBSessionStatusCallback(Lcom/facebook/Session$StatusCallback;)V
    .locals 0
    .parameter "fbSessionStatusCallback"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/activities/BaseActivity;->_fbSessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    .line 82
    return-void
.end method
