.class Lorg/simpleframework/xml/convert/RegistryBinder;
.super Ljava/lang/Object;
.source "RegistryBinder.java"


# instance fields
.field private final cache:Lorg/simpleframework/xml/convert/ClassCache;

.field private final factory:Lorg/simpleframework/xml/convert/ConverterFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/simpleframework/xml/convert/ConverterFactory;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/ConverterFactory;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/RegistryBinder;->factory:Lorg/simpleframework/xml/convert/ConverterFactory;

    .line 52
    new-instance v0, Lorg/simpleframework/xml/convert/ClassCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/ClassCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/RegistryBinder;->cache:Lorg/simpleframework/xml/convert/ClassCache;

    .line 53
    return-void
.end method

.method private create(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lorg/simpleframework/xml/convert/RegistryBinder;->factory:Lorg/simpleframework/xml/convert/ConverterFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/convert/ConverterFactory;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .parameter "type"
    .parameter "converter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/simpleframework/xml/convert/RegistryBinder;->cache:Lorg/simpleframework/xml/convert/ClassCache;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/convert/ClassCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v1, p0, Lorg/simpleframework/xml/convert/RegistryBinder;->cache:Lorg/simpleframework/xml/convert/ClassCache;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/convert/ClassCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 68
    .local v0, result:Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/convert/RegistryBinder;->create(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v1

    .line 71
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method