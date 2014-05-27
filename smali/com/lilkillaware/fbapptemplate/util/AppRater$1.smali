.class final Lcom/lilkillaware/fbapptemplate/util/AppRater$1;
.super Ljava/lang/Object;
.source "AppRater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/util/AppRater;->showShareDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$APP_PACKAGE_NAME:Ljava/lang/String;

.field final synthetic val$APP_TITLE:Ljava/lang/String;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/util/AppRater$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/util/AppRater$1;->val$APP_TITLE:Ljava/lang/String;

    iput-object p3, p0, Lcom/lilkillaware/fbapptemplate/util/AppRater$1;->val$APP_PACKAGE_NAME:Ljava/lang/String;

    iput-object p4, p0, Lcom/lilkillaware/fbapptemplate/util/AppRater$1;->val$mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/lilkillaware/fbapptemplate/util/AppRater$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/util/AppRater$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/util/AppRater$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "dontShowShareAgain"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 88
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/util/AppRater$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, emailIntent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/util/AppRater$1;->val$APP_TITLE:Ljava/lang/String;

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/util/AppRater$1;->val$APP_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lilkillaware/fbapptemplate/util/AppRater;->getEmalBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/util/AppRater$1;->val$mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/util/AppRater$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 99
    return-void
.end method
