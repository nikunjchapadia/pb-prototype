.class public Lcom/lilkillaware/fbapptemplate/view/FeedView;
.super Landroid/widget/RelativeLayout;
.source "FeedView.java"


# static fields
.field private static _imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private static _options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static _optionsFeed:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# instance fields
.field private _activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

.field private _app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

.field private _btnComment:Landroid/widget/Button;

.field private _btnLike:Landroid/widget/Button;

.field private _btnShare:Landroid/widget/Button;

.field private _btnShare2:Landroid/widget/Button;

.field private _dogPhoto:Landroid/widget/ImageView;

.field private _likes:Landroid/widget/TextView;

.field private _linkDescription:Landroid/widget/TextView;

.field private _photoTitle:Landroid/widget/TextView;

.field private _playImage:Landroid/widget/ImageView;

.field private _profileImage:Landroid/widget/ImageView;

.field private _profileName:Landroid/widget/TextView;

.field private _topComments:Landroid/widget/TextView;

.field private _wvComments:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sput-object v0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->initialize(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->initialize(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0, p1}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->initialize(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/lilkillaware/fbapptemplate/view/FeedView;)Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lilkillaware/fbapptemplate/view/FeedView;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    return-object v0
.end method

.method private getProfileLink(Lcom/lilkillaware/fbapptemplate/model/FeedItem;)Ljava/lang/String;
    .locals 4
    .parameter "item"

    .prologue
    .line 367
    const-string v0, "<a href=\"%s\">%s</a>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_profileLink:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_profileName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 70
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    .line 74
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    .line 75
    sget-object v0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    if-nez v0, :cond_2

    .line 76
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget v1, Lcom/lilkillaware/fbapptemplate/R$drawable;->ic_launcher_appicon:I

    .line 79
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget v1, Lcom/lilkillaware/fbapptemplate/R$drawable;->ic_launcher_appicon:I

    .line 80
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 83
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    sput-object v0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 88
    :cond_2
    sget-object v0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_optionsFeed:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    if-nez v0, :cond_3

    .line 89
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget v1, Lcom/lilkillaware/fbapptemplate/R$drawable;->place_holder:I

    .line 92
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget v1, Lcom/lilkillaware/fbapptemplate/R$drawable;->place_holder:I

    .line 93
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 96
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    sput-object v0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_optionsFeed:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 101
    :cond_3
    sget-object v0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    sget-object v0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->createDefault(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    goto :goto_0
.end method


# virtual methods
.method public launchPhotoViewActivity(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 267
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    const-class v2, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "dogPhotoUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v1, v0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 270
    return-void
.end method

.method public launchUrl(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 273
    if-eqz p1, :cond_0

    const-string v1, ""

    if-eq p1, v1, :cond_0

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 275
    .local v0, browserIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v1, v0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 279
    .end local v0           #browserIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    sget v2, Lcom/lilkillaware/fbapptemplate/R$string;->error_opening_video:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 110
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 113
    :cond_0
    sget v0, Lcom/lilkillaware/fbapptemplate/R$id;->tv_profile_name:I

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_profileName:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/lilkillaware/fbapptemplate/R$id;->iv_profile_image:I

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_profileImage:Landroid/widget/ImageView;

    .line 115
    sget v0, Lcom/lilkillaware/fbapptemplate/R$id;->tv_photo_title:I

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_photoTitle:Landroid/widget/TextView;

    .line 116
    sget v0, Lcom/lilkillaware/fbapptemplate/R$id;->tv_link_description:I

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_linkDescription:Landroid/widget/TextView;

    .line 117
    sget v0, Lcom/lilkillaware/fbapptemplate/R$id;->iv_dog_photo:I

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_dogPhoto:Landroid/widget/ImageView;

    .line 118
    sget v0, Lcom/lilkillaware/fbapptemplate/R$id;->iv_play:I

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_playImage:Landroid/widget/ImageView;

    .line 119
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_playImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    sget v0, Lcom/lilkillaware/fbapptemplate/R$id;->btn_like:I

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_btnLike:Landroid/widget/Button;

    .line 122
    sget v0, Lcom/lilkillaware/fbapptemplate/R$id;->btn_comment:I

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_btnComment:Landroid/widget/Button;

    .line 123
    sget v0, Lcom/lilkillaware/fbapptemplate/R$id;->btn_share:I

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_btnShare:Landroid/widget/Button;

    .line 124
    sget v0, Lcom/lilkillaware/fbapptemplate/R$id;->btn_share2:I

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_btnShare2:Landroid/widget/Button;

    .line 126
    sget v0, Lcom/lilkillaware/fbapptemplate/R$id;->tv_likes:I

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_likes:Landroid/widget/TextView;

    .line 127
    sget v0, Lcom/lilkillaware/fbapptemplate/R$id;->tv_top_comments:I

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_topComments:Landroid/widget/TextView;

    .line 131
    sget v0, Lcom/lilkillaware/fbapptemplate/R$id;->wv_comments:I

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_wvComments:Landroid/webkit/WebView;

    goto/16 :goto_0
.end method

.method public onItemSelect(Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 252
    iget-object v0, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_type:Ljava/lang/String;

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_source:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->launchPhotoViewActivity(Ljava/lang/String;)V

    .line 262
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    const-string v1, "feed_photo"

    invoke-virtual {v0, v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->gaTrackButtonClick(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    const-string v1, "click on image to make bigger"

    invoke-virtual {v0, v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->gaTrackButtonClick2(Ljava/lang/String;)V

    .line 264
    return-void

    .line 254
    :cond_1
    iget-object v0, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_type:Ljava/lang/String;

    const-string v1, "link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_itemLink:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->launchUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_itemLink:Ljava/lang/String;

    const-string v1, "https://www.facebook.com/photo.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_itemLink:Ljava/lang/String;

    const-string v1, "http://www.facebook.com/photo.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    :cond_3
    iget-object v0, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_source:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->launchUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_4
    iget-object v0, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_itemLink:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->launchUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showFeed(Lcom/lilkillaware/fbapptemplate/model/FeedItem;I)V
    .locals 5
    .parameter "item"
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 137
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_profileName:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->getProfileLink(Lcom/lilkillaware/fbapptemplate/model/FeedItem;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_profileName:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 139
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_photoTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->getShortMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_photoTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 142
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_linkDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->getFeedDescriptionVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_linkDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->getFeedDescriptionForLink()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_photoTitle:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 147
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_playImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->getPlayIconVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_likes:Landroid/widget/TextView;

    const-string v1, "%s people like this."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_likesNo:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_topComments:Landroid/widget/TextView;

    new-instance v1, Lcom/lilkillaware/fbapptemplate/view/FeedView$1;

    invoke-direct {v1, p0, p1}, Lcom/lilkillaware/fbapptemplate/view/FeedView$1;-><init>(Lcom/lilkillaware/fbapptemplate/view/FeedView;Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_wvComments:Landroid/webkit/WebView;

    iget v1, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_commentsVisibility:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 172
    sget-object v0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_profileImage:Ljava/lang/String;

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_profileImage:Landroid/widget/ImageView;

    sget-object v3, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 173
    sget-object v0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {p1}, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->getFeedImage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_dogPhoto:Landroid/widget/ImageView;

    sget-object v3, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_optionsFeed:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 175
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_photoTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/lilkillaware/fbapptemplate/view/FeedView$2;

    invoke-direct {v1, p0, p1}, Lcom/lilkillaware/fbapptemplate/view/FeedView$2;-><init>(Lcom/lilkillaware/fbapptemplate/view/FeedView;Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_dogPhoto:Landroid/widget/ImageView;

    new-instance v1, Lcom/lilkillaware/fbapptemplate/view/FeedView$3;

    invoke-direct {v1, p0, p1}, Lcom/lilkillaware/fbapptemplate/view/FeedView$3;-><init>(Lcom/lilkillaware/fbapptemplate/view/FeedView;Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_btnLike:Landroid/widget/Button;

    new-instance v1, Lcom/lilkillaware/fbapptemplate/view/FeedView$4;

    invoke-direct {v1, p0, p1}, Lcom/lilkillaware/fbapptemplate/view/FeedView$4;-><init>(Lcom/lilkillaware/fbapptemplate/view/FeedView;Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_btnComment:Landroid/widget/Button;

    new-instance v1, Lcom/lilkillaware/fbapptemplate/view/FeedView$5;

    invoke-direct {v1, p0, p1}, Lcom/lilkillaware/fbapptemplate/view/FeedView$5;-><init>(Lcom/lilkillaware/fbapptemplate/view/FeedView;Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_btnShare:Landroid/widget/Button;

    new-instance v1, Lcom/lilkillaware/fbapptemplate/view/FeedView$6;

    invoke-direct {v1, p0, p1}, Lcom/lilkillaware/fbapptemplate/view/FeedView$6;-><init>(Lcom/lilkillaware/fbapptemplate/view/FeedView;Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_btnShare2:Landroid/widget/Button;

    new-instance v1, Lcom/lilkillaware/fbapptemplate/view/FeedView$7;

    invoke-direct {v1, p0, p1}, Lcom/lilkillaware/fbapptemplate/view/FeedView$7;-><init>(Lcom/lilkillaware/fbapptemplate/view/FeedView;Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-void
.end method

.method protected toggleComments(Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_wvComments:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 304
    const/16 v0, 0x8

    iput v0, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_commentsVisibility:I

    .line 317
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_wvComments:Landroid/webkit/WebView;

    iget v1, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_commentsVisibility:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 318
    return-void

    .line 306
    :cond_1
    iget-object v0, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_commentsString:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 308
    invoke-virtual {p1}, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->getCommentsStringForWebVew()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_commentsString:Ljava/lang/String;

    .line 310
    :cond_2
    iget-object v0, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_commentsString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView;->_wvComments:Landroid/webkit/WebView;

    iget-object v1, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_commentsString:Ljava/lang/String;

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const/4 v0, 0x0

    iput v0, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_commentsVisibility:I

    goto :goto_0
.end method
