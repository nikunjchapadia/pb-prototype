.class Lorg/simpleframework/xml/core/InstanceFactory;
.super Ljava/lang/Object;
.source "InstanceFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/InstanceFactory$ClassInstance;,
        Lorg/simpleframework/xml/core/InstanceFactory$ValueInstance;
    }
.end annotation


# instance fields
.field private final cache:Lorg/simpleframework/xml/core/ConstructorCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ConstructorCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/InstanceFactory;->cache:Lorg/simpleframework/xml/core/ConstructorCache;

    .line 50
    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;
    .locals 1
    .parameter "type"

    .prologue
    .line 75
    new-instance v0, Lorg/simpleframework/xml/core/InstanceFactory$ClassInstance;

    invoke-direct {v0, p0, p1}, Lorg/simpleframework/xml/core/InstanceFactory$ClassInstance;-><init>(Lorg/simpleframework/xml/core/InstanceFactory;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;
    .locals 1
    .parameter "value"

    .prologue
    .line 62
    new-instance v0, Lorg/simpleframework/xml/core/InstanceFactory$ValueInstance;

    invoke-direct {v0, p0, p1}, Lorg/simpleframework/xml/core/InstanceFactory$ValueInstance;-><init>(Lorg/simpleframework/xml/core/InstanceFactory;Lorg/simpleframework/xml/strategy/Value;)V

    return-object v0
.end method

.method protected getObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v1, p0, Lorg/simpleframework/xml/core/InstanceFactory;->cache:Lorg/simpleframework/xml/core/ConstructorCache;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/core/ConstructorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 90
    .local v0, method:Ljava/lang/reflect/Constructor;
    if-nez v0, :cond_1

    .line 91
    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 96
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/InstanceFactory;->cache:Lorg/simpleframework/xml/core/ConstructorCache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/ConstructorCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
