.class Lcom/facebook/widget/WebDialog$BuilderBase;
.super Ljava/lang/Object;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/facebook/widget/WebDialog$BuilderBase",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private listener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

.field private parameters:Landroid/os/Bundle;

.field private session:Lcom/facebook/Session;

.field private theme:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "session"
    .parameter "action"
    .parameter "parameters"

    .prologue
    .line 480
    .local p0, this:Lcom/facebook/widget/WebDialog$BuilderBase;,"Lcom/facebook/widget/WebDialog$BuilderBase<TCONCRETE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    const v0, 0x1030010

    iput v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    .line 481
    const-string v0, "session"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Attempted to use a Session that was not open."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    iput-object p2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    .line 487
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/widget/WebDialog$BuilderBase;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 488
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "action"

    .prologue
    .line 464
    .local p0, this:Lcom/facebook/widget/WebDialog$BuilderBase;,"Lcom/facebook/widget/WebDialog$BuilderBase<TCONCRETE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    const v2, 0x1030010

    iput v2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    .line 465
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 466
    .local v0, activeSession:Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    iput-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    .line 477
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/facebook/widget/WebDialog$BuilderBase;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 478
    return-void

    .line 469
    :cond_0
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, applicationId:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 471
    iput-object v1, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    goto :goto_0

    .line 473
    :cond_1
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Attempted to create a builder without an open Active Session or a valid default Application ID."

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "applicationId"
    .parameter "action"
    .parameter "parameters"

    .prologue
    .line 490
    .local p0, this:Lcom/facebook/widget/WebDialog$BuilderBase;,"Lcom/facebook/widget/WebDialog$BuilderBase<TCONCRETE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    const v0, 0x1030010

    iput v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    .line 491
    if-nez p2, :cond_0

    .line 492
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 494
    :cond_0
    const-string v0, "applicationId"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iput-object p2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    .line 497
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/widget/WebDialog$BuilderBase;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 498
    return-void
.end method

.method private finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "action"
    .parameter "parameters"

    .prologue
    .line 564
    .local p0, this:Lcom/facebook/widget/WebDialog$BuilderBase;,"Lcom/facebook/widget/WebDialog$BuilderBase<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->context:Landroid/content/Context;

    .line 565
    iput-object p2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->action:Ljava/lang/String;

    .line 566
    if-eqz p3, :cond_0

    .line 567
    iput-object p3, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    .line 571
    :goto_0
    return-void

    .line 569
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/facebook/widget/WebDialog;
    .locals 6

    .prologue
    .line 533
    .local p0, this:Lcom/facebook/widget/WebDialog$BuilderBase;,"Lcom/facebook/widget/WebDialog$BuilderBase<TCONCRETE;>;"
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    invoke-virtual {v2}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    invoke-virtual {v2}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :goto_0
    new-instance v0, Lcom/facebook/widget/WebDialog;

    iget-object v1, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->action:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    iget v4, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    iget-object v5, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->listener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/WebDialog$OnCompleteListener;)V

    return-object v0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    .local p0, this:Lcom/facebook/widget/WebDialog$BuilderBase;,"Lcom/facebook/widget/WebDialog$BuilderBase<TCONCRETE;>;"
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 548
    .local p0, this:Lcom/facebook/widget/WebDialog$BuilderBase;,"Lcom/facebook/widget/WebDialog$BuilderBase<TCONCRETE;>;"
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getListener()Lcom/facebook/widget/WebDialog$OnCompleteListener;
    .locals 1

    .prologue
    .line 560
    .local p0, this:Lcom/facebook/widget/WebDialog$BuilderBase;,"Lcom/facebook/widget/WebDialog$BuilderBase<TCONCRETE;>;"
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->listener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    return-object v0
.end method

.method protected getParameters()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 556
    .local p0, this:Lcom/facebook/widget/WebDialog$BuilderBase;,"Lcom/facebook/widget/WebDialog$BuilderBase<TCONCRETE;>;"
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getTheme()I
    .locals 1

    .prologue
    .line 552
    .local p0, this:Lcom/facebook/widget/WebDialog$BuilderBase;,"Lcom/facebook/widget/WebDialog$BuilderBase<TCONCRETE;>;"
    iget v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    return v0
.end method

.method public setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;
    .locals 1
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/WebDialog$OnCompleteListener;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 520
    .local p0, this:Lcom/facebook/widget/WebDialog$BuilderBase;,"Lcom/facebook/widget/WebDialog$BuilderBase<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->listener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    .line 522
    move-object v0, p0

    .line 523
    .local v0, result:Lcom/facebook/widget/WebDialog$BuilderBase;,"TCONCRETE;"
    return-object v0
.end method

.method public setTheme(I)Lcom/facebook/widget/WebDialog$BuilderBase;
    .locals 1
    .parameter "theme"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 507
    .local p0, this:Lcom/facebook/widget/WebDialog$BuilderBase;,"Lcom/facebook/widget/WebDialog$BuilderBase<TCONCRETE;>;"
    iput p1, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    .line 509
    move-object v0, p0

    .line 510
    .local v0, result:Lcom/facebook/widget/WebDialog$BuilderBase;,"TCONCRETE;"
    return-object v0
.end method
