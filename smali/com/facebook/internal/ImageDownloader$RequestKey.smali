.class Lcom/facebook/internal/ImageDownloader$RequestKey;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestKey"
.end annotation


# static fields
.field private static final HASH_MULTIPLIER:I = 0x25

.field private static final HASH_SEED:I = 0x1d


# instance fields
.field tag:Ljava/lang/Object;

.field uri:Ljava/net/URI;


# direct methods
.method constructor <init>(Ljava/net/URI;Ljava/lang/Object;)V
    .locals 0
    .parameter "url"
    .parameter "tag"

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Ljava/net/URI;

    .line 296
    iput-object p2, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    .line 297
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 311
    const/4 v1, 0x0

    .line 313
    .local v1, isEqual:Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/facebook/internal/ImageDownloader$RequestKey;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 314
    check-cast v0, Lcom/facebook/internal/ImageDownloader$RequestKey;

    .line 315
    .local v0, compareTo:Lcom/facebook/internal/ImageDownloader$RequestKey;
    iget-object v2, v0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Ljava/net/URI;

    iget-object v3, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Ljava/net/URI;

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 318
    .end local v0           #compareTo:Lcom/facebook/internal/ImageDownloader$RequestKey;
    :cond_0
    :goto_0
    return v1

    .line 315
    .restart local v0       #compareTo:Lcom/facebook/internal/ImageDownloader$RequestKey;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 301
    const/16 v0, 0x1d

    .line 303
    .local v0, result:I
    iget-object v1, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x431

    .line 304
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 306
    return v0
.end method
