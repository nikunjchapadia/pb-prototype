.class Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;
.super Lcom/facebook/AuthorizationClient$KatanaAuthHandler;
.source "AuthorizationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KatanaProxyAuthHandler"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private applicationId:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 919
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$KatanaAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    return-void
.end method

.method private handleResultOk(Landroid/content/Intent;)Lcom/facebook/AuthorizationClient$Result;
    .locals 9
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 966
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 967
    .local v4, extras:Landroid/os/Bundle;
    const-string v7, "error"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, error:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 969
    const-string v7, "error_type"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 971
    :cond_0
    const-string v7, "error_code"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 972
    .local v2, errorCode:Ljava/lang/String;
    const-string v7, "error_message"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 973
    .local v3, errorMessage:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 974
    const-string v7, "error_description"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 977
    :cond_1
    const-string v7, "e2e"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, e2e:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 979
    iget-object v7, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v8, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->applicationId:Ljava/lang/String;

    #calls: Lcom/facebook/AuthorizationClient;->logWebLoginCompleted(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v0}, Lcom/facebook/AuthorizationClient;->access$200(Lcom/facebook/AuthorizationClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    :cond_2
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    .line 983
    iget-object v6, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v6, v6, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v6}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    invoke-static {v6, v4, v7}, Lcom/facebook/AccessToken;->createFromWebBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v5

    .line 985
    .local v5, token:Lcom/facebook/AccessToken;
    iget-object v6, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v6, v6, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v6, v5}, Lcom/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v6

    .line 991
    .end local v5           #token:Lcom/facebook/AccessToken;
    :cond_3
    :goto_0
    return-object v6

    .line 986
    :cond_4
    sget-object v7, Lcom/facebook/internal/ServerProtocol;->errorsProxyAuthDisabled:Ljava/util/Collection;

    invoke-interface {v7, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 988
    sget-object v7, Lcom/facebook/internal/ServerProtocol;->errorsUserCanceled:Ljava/util/Collection;

    invoke-interface {v7, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 989
    iget-object v7, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v7, v7, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v7, v6}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v6

    goto :goto_0

    .line 991
    :cond_5
    iget-object v6, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v6, v6, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v6, v1, v3, v2}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method getNameForLogging()Ljava/lang/String;
    .locals 1

    .prologue
    .line 925
    const-string v0, "katana_proxy_auth"

    return-object v0
.end method

.method onActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 946
    if-nez p3, :cond_0

    .line 948
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v2, "Operation canceled"

    invoke-static {v1, v2}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    .line 957
    .local v0, outcome:Lcom/facebook/AuthorizationClient$Result;
    :goto_0
    if-eqz v0, :cond_3

    .line 958
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v1, v0}, Lcom/facebook/AuthorizationClient;->completeAndValidate(Lcom/facebook/AuthorizationClient$Result;)V

    .line 962
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 949
    .end local v0           #outcome:Lcom/facebook/AuthorizationClient$Result;
    :cond_0
    if-nez p2, :cond_1

    .line 950
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    .restart local v0       #outcome:Lcom/facebook/AuthorizationClient$Result;
    goto :goto_0

    .line 951
    .end local v0           #outcome:Lcom/facebook/AuthorizationClient$Result;
    :cond_1
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    .line 952
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v2, "Unexpected resultCode from authorization."

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    .restart local v0       #outcome:Lcom/facebook/AuthorizationClient$Result;
    goto :goto_0

    .line 954
    .end local v0           #outcome:Lcom/facebook/AuthorizationClient$Result;
    :cond_2
    invoke-direct {p0, p3}, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->handleResultOk(Landroid/content/Intent;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    .restart local v0       #outcome:Lcom/facebook/AuthorizationClient$Result;
    goto :goto_0

    .line 960
    :cond_3
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v1}, Lcom/facebook/AuthorizationClient;->tryNextHandler()V

    goto :goto_1
.end method

.method tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
    .locals 5
    .parameter "request"

    .prologue
    .line 930
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->applicationId:Ljava/lang/String;

    .line 932
    #calls: Lcom/facebook/AuthorizationClient;->getE2E()Ljava/lang/String;
    invoke-static {}, Lcom/facebook/AuthorizationClient;->access$100()Ljava/lang/String;

    move-result-object v0

    .line 933
    .local v0, e2e:Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v2, v2, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    .line 934
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v4

    .line 933
    invoke-static {v2, v3, v4, v0}, Lcom/facebook/internal/NativeProtocol;->createProxyAuthIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 936
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "e2e"

    invoke-virtual {p0, v2, v0}, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 938
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getRequestCode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->tryIntent(Landroid/content/Intent;I)Z

    move-result v2

    return v2
.end method
