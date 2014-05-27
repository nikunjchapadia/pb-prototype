.class Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity$VideoBrowser;
.super Landroid/webkit/WebViewClient;
.source "VideoViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoBrowser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity;


# direct methods
.method private constructor <init>(Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity$VideoBrowser;->this$0:Lcom/lilkillaware/fbapptemplate/activities/VideoViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 51
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x1

    return v0
.end method
