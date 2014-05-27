.class public Lcom/lilkillaware/fbapptemplate/activities/TextViewActivity;
.super Landroid/app/Activity;
.source "TextViewActivity.java"


# static fields
.field private static final SCREEN_LABEL:Ljava/lang/String; = "Text view screen"

.field public static final STATUS:Ljava/lang/String; = "status"


# instance fields
.field private _app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

.field private _textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 21
    const v1, 0x1030007

    invoke-virtual {p0, v1}, Lcom/lilkillaware/fbapptemplate/activities/TextViewActivity;->setTheme(I)V

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v1, Lcom/lilkillaware/fbapptemplate/R$layout;->activity_text_view:I

    invoke-virtual {p0, v1}, Lcom/lilkillaware/fbapptemplate/activities/TextViewActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/TextViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, status:Ljava/lang/String;
    sget v1, Lcom/lilkillaware/fbapptemplate/R$id;->status_text_view:I

    invoke-virtual {p0, v1}, Lcom/lilkillaware/fbapptemplate/activities/TextViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/TextViewActivity;->_textView:Landroid/widget/TextView;

    .line 27
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/TextViewActivity;->_textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/activities/TextViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/TextViewActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    .line 32
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/TextViewActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "&cd"

    const-string v3, "Text view screen"

    invoke-virtual {v1, v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/activities/TextViewActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker2()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "&cd"

    const-string v3, "Text view screen"

    invoke-virtual {v1, v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 39
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 40
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/TextViewActivity;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker2()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    invoke-static {}, Lcom/google/analytics/tracking/android/MapBuilder;->createAppView()Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 41
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 46
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 47
    return-void
.end method
