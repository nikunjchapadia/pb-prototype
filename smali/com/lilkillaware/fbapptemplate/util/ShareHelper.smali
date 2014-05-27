.class public Lcom/lilkillaware/fbapptemplate/util/ShareHelper;
.super Ljava/lang/Object;
.source "ShareHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lilkillaware/fbapptemplate/util/ShareHelper$FBIntentListener;
    }
.end annotation


# instance fields
.field private _app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

.field private _body:Ljava/lang/String;

.field private _context:Landroid/content/Context;

.field private _listener:Lcom/lilkillaware/fbapptemplate/util/ShareHelper$FBIntentListener;

.field private _subject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/lilkillaware/fbapptemplate/util/ShareHelper$FBIntentListener;)V
    .locals 1
    .parameter "context"
    .parameter "subject"
    .parameter "body"
    .parameter "listener"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_subject:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_body:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_listener:Lcom/lilkillaware/fbapptemplate/util/ShareHelper$FBIntentListener;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/lilkillaware/fbapptemplate/util/ShareHelper;)Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lilkillaware/fbapptemplate/util/ShareHelper;)Lcom/lilkillaware/fbapptemplate/util/ShareHelper$FBIntentListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_listener:Lcom/lilkillaware/fbapptemplate/util/ShareHelper$FBIntentListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lilkillaware/fbapptemplate/util/ShareHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_subject:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lilkillaware/fbapptemplate/util/ShareHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_body:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lilkillaware/fbapptemplate/util/ShareHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public share()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 41
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v6, sendIntent:Landroid/content/Intent;
    const-string v7, "text/plain"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object v7, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 45
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 46
    .local v3, haveFB:Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 47
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v9, "facebook"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 48
    const/4 v3, 0x1

    .line 53
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v3, :cond_2

    .line 54
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 55
    .local v4, info:Landroid/content/pm/ResolveInfo;
    new-instance v7, Landroid/content/pm/ActivityInfo;

    invoke-direct {v7}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 56
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v8}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 57
    invoke-interface {v0, v11, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 60
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_context:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const-string v7, "Share with..."

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 63
    new-instance v1, Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;

    iget-object v7, p0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->_context:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    sget v9, Lcom/lilkillaware/fbapptemplate/R$layout;->share_app_list:I

    sget v10, Lcom/lilkillaware/fbapptemplate/R$id;->shareAppLabel:I

    new-array v8, v11, [Landroid/content/pm/ResolveInfo;

    invoke-interface {v0, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/pm/ResolveInfo;

    invoke-direct {v1, v7, v9, v10, v8}, Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;-><init>(Landroid/app/Activity;II[Landroid/content/pm/ResolveInfo;)V

    .line 64
    .local v1, adapter:Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;
    new-instance v7, Lcom/lilkillaware/fbapptemplate/util/ShareHelper$1;

    invoke-direct {v7, p0, v1}, Lcom/lilkillaware/fbapptemplate/util/ShareHelper$1;-><init>(Lcom/lilkillaware/fbapptemplate/util/ShareHelper;Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;)V

    invoke-virtual {v2, v1, v7}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 82
    return-void
.end method
