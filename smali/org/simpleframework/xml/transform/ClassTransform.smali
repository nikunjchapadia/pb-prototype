.class Lorg/simpleframework/xml/transform/ClassTransform;
.super Ljava/lang/Object;
.source "ClassTransform.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/transform/Transform",
        "<",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCallerClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public read(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lorg/simpleframework/xml/transform/ClassTransform;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 58
    .local v0, loader:Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0}, Lorg/simpleframework/xml/transform/ClassTransform;->getCallerClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 61
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/ClassTransform;->read(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/ClassTransform;->write(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
