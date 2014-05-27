.class public Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ShareIntentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private _app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

.field _ctx:Landroid/app/Activity;

.field _items:[Landroid/content/pm/ResolveInfo;

.field _layoutId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;II[Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .parameter "context"
    .parameter "layoutId"
    .parameter "textViewResourceId"
    .parameter "items"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 24
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;->_ctx:Landroid/app/Activity;

    .line 25
    iput-object p4, p0, Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;->_items:[Landroid/content/pm/ResolveInfo;

    .line 26
    iput p2, p0, Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;->_layoutId:I

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    .line 28
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 32
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;->_ctx:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 33
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;->_layoutId:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 34
    .local v3, row:Landroid/view/View;
    sget v4, Lcom/lilkillaware/fbapptemplate/R$id;->shareAppLabel:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 35
    .local v2, label:Landroid/widget/TextView;
    sget v4, Lcom/lilkillaware/fbapptemplate/R$id;->shareAppIcon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 37
    .local v0, image:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;->_items:[Landroid/content/pm/ResolveInfo;

    aget-object v4, v4, p1

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v5}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v4}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getShareViaThisAppString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    sget v4, Lcom/lilkillaware/fbapptemplate/R$drawable;->ic_launcher_appicon:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    :goto_0
    return-object v3

    .line 42
    :cond_0
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;->_items:[Landroid/content/pm/ResolveInfo;

    aget-object v4, v4, p1

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;->_ctx:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;->_items:[Landroid/content/pm/ResolveInfo;

    aget-object v4, v4, p1

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/lilkillaware/fbapptemplate/adapters/ShareIntentListAdapter;->_ctx:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
