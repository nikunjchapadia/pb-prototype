.class Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;
.super Ljava/lang/Object;
.source "WebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lilkillaware/fbapptemplate/network/WebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachePolicy"
.end annotation


# instance fields
.field public _cacheSecondsMaxAge:I

.field public _cacheSecondsSMaxAge:I

.field public _lastServerHit:Ljava/util/Date;

.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/network/WebService;


# direct methods
.method public constructor <init>(Lcom/lilkillaware/fbapptemplate/network/WebService;II)V
    .locals 1
    .parameter
    .parameter "cacheSecondsMaxAge"
    .parameter "cacheSecondsSMaxAge"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;->this$0:Lcom/lilkillaware/fbapptemplate/network/WebService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p2, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;->_cacheSecondsMaxAge:I

    .line 77
    iput p3, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;->_cacheSecondsSMaxAge:I

    .line 78
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;->_lastServerHit:Ljava/util/Date;

    .line 79
    return-void
.end method
