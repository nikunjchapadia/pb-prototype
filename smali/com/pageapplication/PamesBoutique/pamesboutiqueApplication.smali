.class public Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;
.super Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;
.source "pamesboutiqueApplication.java"


# static fields
.field private static FB_CHECK_ACTION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "com.pageapplication.PamesBoutique.FB_CHECK_ACTION"

    sput-object v0, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;->FB_CHECK_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidApiUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "http://androidapi.pageapplication.com/api/"

    return-object v0
.end method

.method public getAplicationMarketLink()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    const v1, 0x7f090055

    invoke-virtual {p0, v1}, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public getApplicationGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "f2b1a964-3e7e-4249-9589-79490b7da71f"

    .line 107
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    const v1, 0x7f09001c

    invoke-virtual {p0, v1}, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public getApplicationNameForMail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    const v1, 0x7f090054

    invoke-virtual {p0, v1}, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method protected getDefaultSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 36
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getFBAppId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    const v1, 0x7f09005d

    invoke-virtual {p0, v1}, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, appId:Ljava/lang/String;
    return-object v0
.end method

.method public getFBPageID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    const v1, 0x7f09005b

    invoke-virtual {p0, v1}, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public getFB_CHECK_ACTION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;->FB_CHECK_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method protected getGAPropertyId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    const v1, 0x7f090052

    invoke-virtual {p0, v1}, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method protected getGAPropertyId2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    const v1, 0x7f090053

    invoke-virtual {p0, v1}, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public getPageLinkString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    const v1, 0x7f09005a

    invoke-virtual {p0, v1}, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public getProfileNameString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    const v1, 0x7f09005d

    invoke-virtual {p0, v1}, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, appId:Ljava/lang/String;
    return-object v0
.end method

.method public getProfilePhotoUrlString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    const v1, 0x7f090059

    invoke-virtual {p0, v1}, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public getSENDER_ID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    const v1, 0x7f090058

    invoke-virtual {p0, v1}, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public getShareViaThisAppString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    const v1, 0x7f09005c

    invoke-virtual {p0, v1}, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method protected getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 26
    const-class v0, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getTapJoyAppId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    const v1, 0x7f09005e

    invoke-virtual {p0, v1}, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public getTapJoySecretKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    const v1, 0x7f09005f

    invoke-virtual {p0, v1}, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public getWebPageForMail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    const v1, 0x7f090056

    invoke-virtual {p0, v1}, Lcom/pageapplication/PamesBoutique/pamesboutiqueApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public onCreate()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "deprecation"
        }
    .end annotation

    .prologue
    .line 21
    invoke-super {p0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->onCreate()V

    .line 22
    return-void
.end method
