.class public Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;
.super Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;
.source "DefaultHeaderTransformer.java"


# instance fields
.field private mContentLayout:Landroid/view/ViewGroup;

.field private mHeaderProgressBar:Landroid/widget/ProgressBar;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mProgressDrawableColor:I

.field private mPullRefreshLabel:Ljava/lang/CharSequence;

.field private mRefreshingLabel:Ljava/lang/CharSequence;

.field private mReleaseLabel:Ljava/lang/CharSequence;

.field private mUseCustomProgressColor:Z


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 51
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$HeaderTransformer;-><init>()V

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mUseCustomProgressColor:Z

    .line 49
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 52
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->getMinimumApiLevel()I

    move-result v0

    .line 53
    .local v0, min:I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v0, :cond_0

    .line 54
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This HeaderTransformer is designed to run on SDK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+. If using ActionBarSherlock or ActionBarCompat you should use the appropriate provided extra."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_0
    return-void
.end method

.method private applyProgressBarColor()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 222
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mUseCustomProgressColor:Z

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressDrawableColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 225
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressDrawableColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 229
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method


# virtual methods
.method protected getActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 235
    new-array v1, v5, [I

    const v3, 0x10100d4

    aput v3, v1, v4

    .line 238
    .local v1, android_styleable_ActionBar:[I
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 239
    .local v2, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10102ce

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 245
    .local v0, abStyle:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 247
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method protected getActionBarSize(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 252
    const/4 v2, 0x1

    new-array v0, v2, [I

    const v2, 0x10102eb

    aput v2, v0, v3

    .line 253
    .local v0, attrs:[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 255
    .local v1, values:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 257
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method protected getActionBarTitleStyle(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    new-array v1, v5, [I

    const v3, 0x10102f8

    aput v3, v1, v4

    .line 265
    .local v1, android_styleable_ActionBar:[I
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 266
    .local v2, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10102ce

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 272
    .local v0, abStyle:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 274
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v3

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method protected getMinimumApiLevel()I
    .locals 1

    .prologue
    .line 279
    const/16 v0, 0xe

    return v0
.end method

.method public onPulled(F)V
    .locals 3
    .parameter "percentagePulled"

    .prologue
    .line 128
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 131
    .local v0, progress:F
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 133
    .end local v0           #progress:F
    :cond_0
    return-void
.end method

.method public onRefreshMinimized()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Luk/co/senab/actionbarpulltorefresh/library/R$anim;->fade_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 162
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 164
    :cond_0
    return-void
.end method

.method public onRefreshStarted()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mRefreshingLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_0
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 144
    :cond_1
    return-void
.end method

.method public onReleaseToRefresh()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mReleaseLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_0
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 154
    :cond_1
    return-void
.end method

.method public onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 111
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 115
    :cond_0
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mPullRefreshLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_1
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 124
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/app/Activity;Landroid/view/View;)V
    .locals 6
    .parameter "activity"
    .parameter "headerView"

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 65
    .local v1, context:Landroid/content/Context;
    sget v4, Luk/co/senab/actionbarpulltorefresh/library/R$id;->ptr_progress:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    .line 66
    sget v4, Luk/co/senab/actionbarpulltorefresh/library/R$id;->ptr_text:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    .line 69
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->applyProgressBarColor()V

    .line 72
    sget v4, Luk/co/senab/actionbarpulltorefresh/library/R$string;->pull_to_refresh_pull_label:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mPullRefreshLabel:Ljava/lang/CharSequence;

    .line 73
    sget v4, Luk/co/senab/actionbarpulltorefresh/library/R$string;->pull_to_refresh_refreshing_label:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 74
    sget v4, Luk/co/senab/actionbarpulltorefresh/library/R$string;->pull_to_refresh_release_label:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 76
    sget v4, Luk/co/senab/actionbarpulltorefresh/library/R$id;->ptr_content:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    .line 77
    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 78
    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v1}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->getActionBarSize(Landroid/content/Context;)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 79
    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestLayout()V

    .line 83
    :cond_0
    invoke-virtual {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->getActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    .local v0, abBg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 87
    sget v4, Luk/co/senab/actionbarpulltorefresh/library/R$id;->ptr_text_opaque_bg:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 88
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 89
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .end local v3           #view:Landroid/view/View;
    :cond_1
    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_2
    invoke-virtual {p0, v1}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->getActionBarTitleStyle(Landroid/content/Context;)I

    move-result v2

    .line 97
    .local v2, titleTextStyle:I
    if-eqz v2, :cond_3

    .line 98
    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 102
    :cond_3
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->onReset()V

    .line 103
    return-void
.end method

.method public setProgressBarColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 176
    iput p1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mProgressDrawableColor:I

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->setProgressBarColorEnabled(Z)V

    .line 178
    return-void
.end method

.method public setProgressBarColorEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 185
    iput-boolean p1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mUseCustomProgressColor:Z

    .line 186
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->applyProgressBarColor()V

    .line 187
    return-void
.end method

.method public setPullText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "pullText"

    .prologue
    .line 196
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mPullRefreshLabel:Ljava/lang/CharSequence;

    .line 197
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mPullRefreshLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_0
    return-void
.end method

.method public setRefreshingText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "refreshingText"

    .prologue
    .line 208
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 209
    return-void
.end method

.method public setReleaseText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "releaseText"

    .prologue
    .line 217
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 218
    return-void
.end method
