.class public Lcom/lilkillaware/fbapptemplate/adapters/MainPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MainPagerAdapter.java"


# instance fields
.field private _context:Landroid/content/Context;

.field private _tabCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .parameter "context"
    .parameter "fm"

    .prologue
    .line 20
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/lilkillaware/fbapptemplate/adapters/MainPagerAdapter;->_tabCount:I

    .line 21
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/adapters/MainPagerAdapter;->_context:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/lilkillaware/fbapptemplate/adapters/MainPagerAdapter;->_tabCount:I

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter "position"

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 28
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;

    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/lilkillaware/fbapptemplate/fragments/FeedFragment;-><init>()V

    .line 35
    .restart local v0       #fragment:Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 31
    new-instance v0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;

    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;-><init>()V

    .restart local v0       #fragment:Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/facebook/widget/UserSettingsFragment;

    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/facebook/widget/UserSettingsFragment;-><init>()V

    .restart local v0       #fragment:Landroid/support/v4/app/Fragment;
    goto :goto_0
.end method

.method public getPageIcon(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 58
    packed-switch p1, :pswitch_data_0

    .line 66
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 60
    :pswitch_0
    sget v0, Lcom/lilkillaware/fbapptemplate/R$drawable;->ic_action_smile01:I

    goto :goto_0

    .line 62
    :pswitch_1
    sget v0, Lcom/lilkillaware/fbapptemplate/R$drawable;->ic_action_submit01:I

    goto :goto_0

    .line 64
    :pswitch_2
    sget v0, Lcom/lilkillaware/fbapptemplate/R$drawable;->ic_action_submit01:I

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "position"

    .prologue
    .line 45
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 46
    .local v0, l:Ljava/util/Locale;
    packed-switch p1, :pswitch_data_0

    .line 54
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 48
    :pswitch_0
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/adapters/MainPagerAdapter;->_context:Landroid/content/Context;

    sget v2, Lcom/lilkillaware/fbapptemplate/R$string;->title_feed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/adapters/MainPagerAdapter;->_context:Landroid/content/Context;

    sget v2, Lcom/lilkillaware/fbapptemplate/R$string;->title_share:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 52
    :pswitch_2
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/adapters/MainPagerAdapter;->_context:Landroid/content/Context;

    sget v2, Lcom/lilkillaware/fbapptemplate/R$string;->title_settings:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
