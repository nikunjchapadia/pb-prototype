.class Lcom/lilkillaware/fbapptemplate/util/ShareHelper$1;
.super Ljava/lang/Object;
.source "ShareHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->share()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/util/ShareHelper;

.field final synthetic val$adapter:Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/util/ShareHelper;Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper$1;->this$0:Lcom/lilkillaware/fbapptemplate/util/ShareHelper;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper$1;->val$adapter:Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 67
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper$1;->val$adapter:Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;

    invoke-virtual {v2, p2}, Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 68
    .local v0, info:Landroid/content/pm/ResolveInfo;
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper$1;->this$0:Lcom/lilkillaware/fbapptemplate/util/ShareHelper;

    #getter for: Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    invoke-static {v3}, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->access$000(Lcom/lilkillaware/fbapptemplate/util/ShareHelper;)Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper$1;->this$0:Lcom/lilkillaware/fbapptemplate/util/ShareHelper;

    #getter for: Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_listener:Lcom/lilkillaware/fbapptemplate/util/ShareHelper$FBIntentListener;
    invoke-static {v2}, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->access$100(Lcom/lilkillaware/fbapptemplate/util/ShareHelper;)Lcom/lilkillaware/fbapptemplate/util/ShareHelper$FBIntentListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/lilkillaware/fbapptemplate/util/ShareHelper$FBIntentListener;->onFBShareSelected()V

    .line 78
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v2, "android.intent.extra.SUBJECT"

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper$1;->this$0:Lcom/lilkillaware/fbapptemplate/util/ShareHelper;

    #getter for: Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_subject:Ljava/lang/String;
    invoke-static {v3}, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->access$200(Lcom/lilkillaware/fbapptemplate/util/ShareHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper$1;->this$0:Lcom/lilkillaware/fbapptemplate/util/ShareHelper;

    #getter for: Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_body:Ljava/lang/String;
    invoke-static {v3}, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->access$300(Lcom/lilkillaware/fbapptemplate/util/ShareHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper$1;->this$0:Lcom/lilkillaware/fbapptemplate/util/ShareHelper;

    #getter for: Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_context:Landroid/content/Context;
    invoke-static {v2}, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->access$400(Lcom/lilkillaware/fbapptemplate/util/ShareHelper;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
