.class public Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;
.super Landroid/app/Activity;
.source "PhotoViewActivity.java"


# static fields
.field private static final SCREEN_LABEL:Ljava/lang/String; = "Photo view screen"

.field private static _imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private static _options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# instance fields
.field private _app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

.field private mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sput-object v0, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->_imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;Luk/co/senab/photoview/PhotoViewAttacher;)Luk/co/senab/photoview/PhotoViewAttacher;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 36
    const v1, 0x1030007

    invoke-virtual {p0, v1}, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->setTheme(I)V

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v1, Lcom/lilkillaware/fbapptemplate/R$layout;->activity_photo_view:I

    invoke-virtual {p0, v1}, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->setContentView(I)V

    .line 40
    sget v1, Lcom/lilkillaware/fbapptemplate/R$id;->iv_photo:I

    invoke-virtual {p0, v1}, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->mImageView:Landroid/widget/ImageView;

    .line 42
    sget-object v1, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->_options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget v2, Lcom/lilkillaware/fbapptemplate/R$drawable;->place_holder:I

    .line 46
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget v2, Lcom/lilkillaware/fbapptemplate/R$drawable;->place_holder:I

    .line 47
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 50
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    sput-object v1, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->_options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 55
    :cond_0
    sget-object v1, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->_imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->isInited()Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    sget-object v1, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->_imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-static {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->createDefault(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "dogPhotoUrl"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, dogPhotoUrl:Ljava/lang/String;
    sget-object v1, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->_imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->mImageView:Landroid/widget/ImageView;

    sget-object v3, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->_options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    new-instance v4, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity$1;

    invoke-direct {v4, p0}, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity$1;-><init>(Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    .line 82
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "&cd"

    const-string v3, "Photo view screen"

    invoke-virtual {v1, v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker2()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "&cd"

    const-string v3, "Photo view screen"

    invoke-virtual {v1, v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 90
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 91
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/PhotoViewActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker2()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    invoke-static {}, Lcom/google/analytics/tracking/android/MapBuilder;->createAppView()Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 92
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 97
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 98
    return-void
.end method
