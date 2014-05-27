.class Lorg/simpleframework/xml/core/ScannerFactory;
.super Ljava/lang/Object;
.source "ScannerFactory.java"


# instance fields
.field private final cache:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Lorg/simpleframework/xml/core/Scanner;",
            ">;"
        }
    .end annotation
.end field

.field private final format:Lorg/simpleframework/xml/stream/Format;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .parameter "format"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ScannerFactory;->cache:Lorg/simpleframework/xml/util/Cache;

    .line 57
    iput-object p1, p0, Lorg/simpleframework/xml/core/ScannerFactory;->format:Lorg/simpleframework/xml/stream/Format;

    .line 58
    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v1, p0, Lorg/simpleframework/xml/core/ScannerFactory;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Scanner;

    .line 76
    .local v0, schema:Lorg/simpleframework/xml/core/Scanner;
    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lorg/simpleframework/xml/core/Scanner;

    .end local v0           #schema:Lorg/simpleframework/xml/core/Scanner;
    iget-object v1, p0, Lorg/simpleframework/xml/core/ScannerFactory;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0, p1, v1}, Lorg/simpleframework/xml/core/Scanner;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/stream/Format;)V

    .line 78
    .restart local v0       #schema:Lorg/simpleframework/xml/core/Scanner;
    iget-object v1, p0, Lorg/simpleframework/xml/core/ScannerFactory;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    :cond_0
    return-object v0
.end method
