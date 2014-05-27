.class final Lcom/lilkillaware/fbapptemplate/util/AppRater$6;
.super Ljava/lang/Object;
.source "AppRater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/util/AppRater;->showRateDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/util/AppRater$6;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/util/AppRater$6;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/util/AppRater$6;->val$editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/util/AppRater$6;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "dontShowRateAgain"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 181
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/util/AppRater$6;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/util/AppRater$6;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 184
    return-void
.end method
