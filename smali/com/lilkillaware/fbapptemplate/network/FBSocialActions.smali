.class public Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;
.super Ljava/lang/Object;
.source "FBSocialActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;,
        Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;,
        Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$FBLoginListener;
    }
.end annotation


# static fields
.field private static LOG_FB_COMMENT:Ljava/lang/String;

.field private static LOG_FB_LIKE:Ljava/lang/String;

.field private static LOG_FB_PHOTO_UPLOAD:Ljava/lang/String;

.field private static LOG_FB_SHARE:Ljava/lang/String;

.field private static final PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private FB_session_callback:Lcom/facebook/Session$StatusCallback;

.field private _activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

.field private _app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

.field private _fbLogger:Lcom/facebook/AppEventsLogger;

.field private _item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

.field private _loginListener:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$FBLoginListener;

.field private _pendingCommentReauthorization:Z

.field private _pendingLikeReauthorization:Z

.field private _pendingPhotoUploadReauthorization:Z

.field private _pendingShareReauthorization:Z

.field private _photoUploadCallback:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;

.field private _photoUploadUri:Landroid/net/Uri;

.field private _session:Lcom/facebook/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const-string v0, "Like"

    sput-object v0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->LOG_FB_LIKE:Ljava/lang/String;

    .line 46
    const-string v0, "Comment"

    sput-object v0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->LOG_FB_COMMENT:Ljava/lang/String;

    .line 47
    const-string v0, "Share"

    sput-object v0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->LOG_FB_SHARE:Ljava/lang/String;

    .line 48
    const-string v0, "Photo upload"

    sput-object v0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->LOG_FB_PHOTO_UPLOAD:Ljava/lang/String;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "publish_actions"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "publish_stream"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->PERMISSIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/lilkillaware/fbapptemplate/activities/MainActivity;Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V
    .locals 2
    .parameter "activity"
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingShareReauthorization:Z

    .line 69
    iput-boolean v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingPhotoUploadReauthorization:Z

    .line 70
    iput-boolean v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingLikeReauthorization:Z

    .line 71
    iput-boolean v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingCommentReauthorization:Z

    .line 464
    new-instance v0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$11;

    invoke-direct {v0, p0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$11;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)V

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->FB_session_callback:Lcom/facebook/Session$StatusCallback;

    .line 82
    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    .line 83
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    .line 84
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    .line 85
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_fbLogger:Lcom/facebook/AppEventsLogger;

    .line 86
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    new-instance v1, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$1;

    invoke-direct {v1, p0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$1;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)V

    invoke-virtual {v0, v1}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setFBSessionStatusCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/activities/MainActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/model/FeedItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingLikeReauthorization:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingLikeReauthorization:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingCommentReauthorization:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingCommentReauthorization:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingPhotoUploadReauthorization:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingPhotoUploadReauthorization:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_photoUploadUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_photoUploadCallback:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/facebook/Session$StatusCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->FB_session_callback:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/facebook/AppEventsLogger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_fbLogger:Lcom/facebook/AppEventsLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/facebook/Session;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->LOG_FB_COMMENT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;ILjava/lang/String;)Lcom/facebook/Request$Callback;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->getRequestCallBack(ILjava/lang/String;)Lcom/facebook/Request$Callback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->LOG_FB_SHARE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->LOG_FB_PHOTO_UPLOAD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;ILcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;Ljava/lang/String;)Lcom/facebook/Request$Callback;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->getRequestCallBack(ILcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;Ljava/lang/String;)Lcom/facebook/Request$Callback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingShareReauthorization:Z

    return v0
.end method

.method static synthetic access$902(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingShareReauthorization:Z

    return p1
.end method

.method private checkFBSession()Z
    .locals 3

    .prologue
    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, fbLoggedIn:Z
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 613
    .local v1, session:Lcom/facebook/Session;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    const/4 v0, 0x1

    .line 616
    :cond_0
    return v0
.end method

.method private getComment(ILcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;)V
    .locals 4
    .parameter "titleResId"
    .parameter "callback"

    .prologue
    .line 488
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 490
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 493
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 494
    .local v1, input:Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 496
    const-string v2, "Ok"

    new-instance v3, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$12;

    invoke-direct {v3, p0, v1, p2}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$12;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;Landroid/widget/EditText;Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 505
    const-string v2, "Cancel"

    new-instance v3, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$13;

    invoke-direct {v3, p0, p2}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$13;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 511
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 512
    return-void
.end method

.method private getRequestCallBack(ILcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;Ljava/lang/String;)Lcom/facebook/Request$Callback;
    .locals 1
    .parameter "successStringId"
    .parameter "photoCallback"
    .parameter "eventName"

    .prologue
    .line 533
    new-instance v0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$14;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;ILcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;Ljava/lang/String;)V

    return-object v0
.end method

.method private getRequestCallBack(ILjava/lang/String;)Lcom/facebook/Request$Callback;
    .locals 1
    .parameter "successStringId"
    .parameter "eventName"

    .prologue
    .line 529
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->getRequestCallBack(ILcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;Ljava/lang/String;)Lcom/facebook/Request$Callback;

    move-result-object v0

    return-object v0
.end method

.method public static getUploadPhotoRequestToPage(Ljava/lang/String;Lcom/facebook/Session;Ljava/lang/String;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 7
    .parameter "FB_PAGE_ID"
    .parameter "session"
    .parameter "message"
    .parameter "file"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 516
    const/high16 v0, 0x1000

    invoke-static {p3, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 517
    .local v6, descriptor:Landroid/os/ParcelFileDescriptor;
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 518
    .local v3, parameters:Landroid/os/Bundle;
    const-string v0, "picture"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 519
    const-string v0, "message"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    new-instance v0, Lcom/facebook/Request;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/photos"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method private isFBAppInstalled()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-static {v0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->isFBAppInstalled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isFBAppInstalled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, appExists:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.facebook.katana"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubsetOf(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, subset:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, superset:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    .local v0, string:Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 458
    const/4 v1, 0x0

    .line 461
    .end local v0           #string:Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private shareWithFBApp()V
    .locals 3

    .prologue
    .line 303
    new-instance v1, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-direct {v1, v2}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    iget-object v2, v2, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_itemLink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setLink(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v1

    check-cast v1, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v0

    .line 304
    .local v0, shareDialog:Lcom/facebook/widget/FacebookDialog;
    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog;->present()Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 305
    return-void
.end method

.method private showFacebookLogIn(Ljava/util/List;Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$FBLoginListener;)V
    .locals 2
    .parameter
    .parameter "loginListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$FBLoginListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 566
    .local p1, publishPermissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_loginListener:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$FBLoginListener;

    .line 567
    new-instance v0, Lcom/facebook/widget/LoginButton;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-direct {v0, v1}, Lcom/facebook/widget/LoginButton;-><init>(Landroid/content/Context;)V

    .line 569
    .local v0, authButton:Lcom/facebook/widget/LoginButton;
    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton;->performClick()Z

    .line 583
    return-void
.end method


# virtual methods
.method public comment()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 157
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v2, v3}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 158
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    if-nez v2, :cond_0

    .line 159
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    iput-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->checkFBSession()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    invoke-virtual {v2}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v1

    .line 165
    .local v1, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->PERMISSIONS:Ljava/util/List;

    invoke-direct {p0, v2, v1}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->isSubsetOf(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    iput-boolean v3, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingCommentReauthorization:Z

    .line 167
    new-instance v0, Lcom/facebook/Session$NewPermissionsRequest;

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    sget-object v3, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->PERMISSIONS:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 169
    .local v0, newPermissionsRequest:Lcom/facebook/Session$NewPermissionsRequest;
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->FB_session_callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v2, v3}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 171
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    invoke-virtual {v2, v0}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    .line 172
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v2, v4}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 212
    .end local v0           #newPermissionsRequest:Lcom/facebook/Session$NewPermissionsRequest;
    .end local v1           #permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 176
    .restart local v1       #permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget v2, Lcom/lilkillaware/fbapptemplate/R$string;->WRITE_YOUR_COMMENT:I

    new-instance v3, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$3;

    invoke-direct {v3, p0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$3;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)V

    invoke-direct {p0, v2, v3}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->getComment(ILcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;)V

    goto :goto_0

    .line 198
    .end local v1           #permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    sget-object v2, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->PERMISSIONS:Ljava/util/List;

    new-instance v3, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$4;

    invoke-direct {v3, p0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$4;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)V

    invoke-direct {p0, v2, v3}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->showFacebookLogIn(Ljava/util/List;Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$FBLoginListener;)V

    .line 210
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v2, v4}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    goto :goto_0
.end method

.method protected getEmalBody(Lcom/lilkillaware/fbapptemplate/model/FeedItem;)Ljava/lang/String;
    .locals 3
    .parameter "item"

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v1, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_type:Ljava/lang/String;

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_itemLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 379
    :cond_0
    const-string v1, "http://www.facebook.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public like()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 112
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v1, v11}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 113
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    if-nez v1, :cond_0

    .line 114
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->checkFBSession()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v7

    .line 120
    .local v7, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->PERMISSIONS:Ljava/util/List;

    invoke-direct {p0, v1, v7}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->isSubsetOf(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    iput-boolean v11, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingLikeReauthorization:Z

    .line 122
    new-instance v6, Lcom/facebook/Session$NewPermissionsRequest;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    sget-object v3, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->PERMISSIONS:Ljava/util/List;

    invoke-direct {v6, v1, v3}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 124
    .local v6, newPermissionsRequest:Lcom/facebook/Session$NewPermissionsRequest;
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->FB_session_callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v3}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 126
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    invoke-virtual {v1, v6}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    .line 127
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v1, v10}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 153
    .end local v6           #newPermissionsRequest:Lcom/facebook/Session$NewPermissionsRequest;
    .end local v7           #permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 131
    .restart local v7       #permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v1, "%s/likes"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    iget-object v4, v4, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_id:Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, graphPath:Ljava/lang/String;
    new-instance v0, Lcom/facebook/Request;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    sget v5, Lcom/lilkillaware/fbapptemplate/R$string;->LIKE_SUCCESS:I

    sget-object v9, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->LOG_FB_LIKE:Ljava/lang/String;

    invoke-direct {p0, v5, v9}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->getRequestCallBack(ILjava/lang/String;)Lcom/facebook/Request$Callback;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 135
    .local v0, request:Lcom/facebook/Request;
    new-instance v8, Lcom/facebook/RequestAsyncTask;

    new-array v1, v11, [Lcom/facebook/Request;

    aput-object v0, v1, v10

    invoke-direct {v8, v1}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    .line 136
    .local v8, task:Lcom/facebook/RequestAsyncTask;
    new-array v1, v10, [Ljava/lang/Void;

    invoke-virtual {v8, v1}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 139
    .end local v0           #request:Lcom/facebook/Request;
    .end local v2           #graphPath:Ljava/lang/String;
    .end local v7           #permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #task:Lcom/facebook/RequestAsyncTask;
    :cond_2
    sget-object v1, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->PERMISSIONS:Ljava/util/List;

    new-instance v3, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$2;

    invoke-direct {v3, p0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$2;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)V

    invoke-direct {p0, v1, v3}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->showFacebookLogIn(Ljava/util/List;Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$FBLoginListener;)V

    .line 151
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v1, v10}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    goto :goto_0
.end method

.method public postPhoto(Landroid/net/Uri;Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;)V
    .locals 5
    .parameter "photoUri"
    .parameter "photoCallback"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 391
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v2, v3}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 392
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_photoUploadUri:Landroid/net/Uri;

    .line 393
    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_photoUploadCallback:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;

    .line 394
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    if-nez v2, :cond_0

    .line 395
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    iput-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    .line 397
    :cond_0
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->checkFBSession()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 400
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    invoke-virtual {v2}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v1

    .line 401
    .local v1, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->PERMISSIONS:Ljava/util/List;

    invoke-direct {p0, v2, v1}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->isSubsetOf(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 402
    iput-boolean v3, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingPhotoUploadReauthorization:Z

    .line 403
    new-instance v0, Lcom/facebook/Session$NewPermissionsRequest;

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    sget-object v3, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->PERMISSIONS:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 405
    .local v0, newPermissionsRequest:Lcom/facebook/Session$NewPermissionsRequest;
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->FB_session_callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v2, v3}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 407
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    invoke-virtual {v2, v0}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    .line 408
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v2, v4}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 453
    .end local v0           #newPermissionsRequest:Lcom/facebook/Session$NewPermissionsRequest;
    .end local v1           #permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 412
    .restart local v1       #permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget v2, Lcom/lilkillaware/fbapptemplate/R$string;->WRITE_YOUR_COMMENT:I

    new-instance v3, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$9;

    invoke-direct {v3, p0, p1, p2}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$9;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;Landroid/net/Uri;Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;)V

    invoke-direct {p0, v2, v3}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->getComment(ILcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;)V

    goto :goto_0

    .line 438
    .end local v1           #permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    sget-object v2, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->PERMISSIONS:Ljava/util/List;

    new-instance v3, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$10;

    invoke-direct {v3, p0, p1, p2}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$10;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;Landroid/net/Uri;Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;)V

    invoke-direct {p0, v2, v3}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->showFacebookLogIn(Ljava/util/List;Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$FBLoginListener;)V

    .line 450
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v2, v4}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    goto :goto_0
.end method

.method protected sessionStatusCallback(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 2
    .parameter "session"
    .parameter "state"
    .parameter "exception"

    .prologue
    const/4 v1, 0x0

    .line 586
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    .line 588
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_loginListener:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$FBLoginListener;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_loginListener:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$FBLoginListener;

    invoke-interface {v0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$FBLoginListener;->onLoginSuccess()V

    .line 590
    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_loginListener:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$FBLoginListener;

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    if-eqz p3, :cond_0

    .line 603
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_loginListener:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$FBLoginListener;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_loginListener:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$FBLoginListener;

    invoke-interface {v0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$FBLoginListener;->onLoginFail()V

    .line 605
    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_loginListener:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$FBLoginListener;

    goto :goto_0
.end method

.method public share()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 215
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->isFBAppInstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->shareWithFBApp()V

    .line 280
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v2, v3}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 222
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    if-nez v2, :cond_1

    .line 223
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    iput-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->checkFBSession()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 228
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    invoke-virtual {v2}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v1

    .line 229
    .local v1, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->PERMISSIONS:Ljava/util/List;

    invoke-direct {p0, v2, v1}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->isSubsetOf(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 230
    iput-boolean v3, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_pendingShareReauthorization:Z

    .line 231
    new-instance v0, Lcom/facebook/Session$NewPermissionsRequest;

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    sget-object v3, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->PERMISSIONS:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 233
    .local v0, newPermissionsRequest:Lcom/facebook/Session$NewPermissionsRequest;
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->FB_session_callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v2, v3}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 235
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_session:Lcom/facebook/Session;

    invoke-virtual {v2, v0}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    .line 236
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v2, v4}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    goto :goto_0

    .line 240
    .end local v0           #newPermissionsRequest:Lcom/facebook/Session$NewPermissionsRequest;
    :cond_2
    sget v2, Lcom/lilkillaware/fbapptemplate/R$string;->WRITE_SOMETHING:I

    new-instance v3, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$5;

    invoke-direct {v3, p0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$5;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)V

    invoke-direct {p0, v2, v3}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->getComment(ILcom/lilkillaware/fbapptemplate/network/FBSocialActions$CommentCallback;)V

    goto :goto_0

    .line 266
    .end local v1           #permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    sget-object v2, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->PERMISSIONS:Ljava/util/List;

    new-instance v3, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$6;

    invoke-direct {v3, p0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$6;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)V

    invoke-direct {p0, v2, v3}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->showFacebookLogIn(Ljava/util/List;Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$FBLoginListener;)V

    .line 278
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v2, v4}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    goto :goto_0
.end method

.method public share2()V
    .locals 5

    .prologue
    .line 284
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->setProgressVisible(Z)V

    .line 285
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 286
    .local v1, postParams:Landroid/os/Bundle;
    const-string v2, "name"

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    sget v4, Lcom/lilkillaware/fbapptemplate/R$string;->app_name:I

    invoke-virtual {v3, v4}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v2, "link"

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    iget-object v3, v3, Lcom/lilkillaware/fbapptemplate/model/FeedItem;->_itemLink:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance v2, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    new-instance v3, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$7;

    invoke-direct {v3, p0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$7;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)V

    invoke-virtual {v2, v3}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    move-result-object v2

    check-cast v2, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;

    .line 297
    invoke-virtual {v2}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    .line 298
    .local v0, feedDialog:Lcom/facebook/widget/WebDialog;
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->show()V

    .line 299
    return-void
.end method

.method public share4()V
    .locals 5

    .prologue
    .line 318
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v1, emailIntent:Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 328
    const-string v2, "android.intent.extra.SUBJECT"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    invoke-virtual {p0, v3}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->getEmalBody(Lcom/lilkillaware/fbapptemplate/model/FeedItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v2, "_item"

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 345
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v2, v1}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v1           #emailIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    const-string v3, "Application not found"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public share5()V
    .locals 5

    .prologue
    .line 352
    new-instance v0, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    const-string v2, ""

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->_item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    invoke-virtual {p0, v3}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->getEmalBody(Lcom/lilkillaware/fbapptemplate/model/FeedItem;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$8;

    invoke-direct {v4, p0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$8;-><init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/lilkillaware/fbapptemplate/util/ShareHelper$FBIntentListener;)V

    .line 358
    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/util/ShareHelper;->share()V

    .line 359
    return-void
.end method
