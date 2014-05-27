.class Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication$1;
.super Ljava/lang/Object;
.source "FBAppTemplateApplication.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->initializeGa()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication$1;->this$0:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 48
    const-string v0, "pref_key_enable_analytics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication$1;->this$0:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->setAppOptOut(Z)V

    .line 51
    :cond_0
    return-void
.end method
