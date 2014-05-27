.class Lorg/simpleframework/xml/convert/ScannerBuilder;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "ScannerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/Class;",
        "Lorg/simpleframework/xml/convert/Scanner;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public build(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Scanner;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/simpleframework/xml/convert/Scanner;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/convert/ScannerBuilder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/convert/Scanner;

    .line 60
    .local v0, scanner:Lorg/simpleframework/xml/convert/Scanner;
    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;

    .end local v0           #scanner:Lorg/simpleframework/xml/convert/Scanner;
    invoke-direct {v0, p1}, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;-><init>(Ljava/lang/Class;)V

    .line 62
    .restart local v0       #scanner:Lorg/simpleframework/xml/convert/Scanner;
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/convert/ScannerBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    return-object v0
.end method
