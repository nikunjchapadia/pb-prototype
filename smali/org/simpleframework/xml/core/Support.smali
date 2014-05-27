.class Lorg/simpleframework/xml/core/Support;
.super Ljava/lang/Object;
.source "Support.java"

# interfaces
.implements Lorg/simpleframework/xml/filter/Filter;


# instance fields
.field private final creator:Lorg/simpleframework/xml/core/InstanceFactory;

.field private final factory:Lorg/simpleframework/xml/core/ScannerFactory;

.field private final filter:Lorg/simpleframework/xml/filter/Filter;

.field private final format:Lorg/simpleframework/xml/stream/Format;

.field private final matcher:Lorg/simpleframework/xml/transform/Matcher;

.field private final transform:Lorg/simpleframework/xml/transform/Transformer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Support;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 92
    new-instance v0, Lorg/simpleframework/xml/core/EmptyMatcher;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/EmptyMatcher;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Support;-><init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V
    .locals 1
    .parameter "filter"
    .parameter "matcher"

    .prologue
    .line 105
    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/Format;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Support;-><init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .parameter "filter"
    .parameter "matcher"
    .parameter "format"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lorg/simpleframework/xml/transform/Transformer;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/transform/Transformer;-><init>(Lorg/simpleframework/xml/transform/Matcher;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    .line 120
    new-instance v0, Lorg/simpleframework/xml/core/ScannerFactory;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/ScannerFactory;-><init>(Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->factory:Lorg/simpleframework/xml/core/ScannerFactory;

    .line 121
    new-instance v0, Lorg/simpleframework/xml/core/InstanceFactory;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/InstanceFactory;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->creator:Lorg/simpleframework/xml/core/InstanceFactory;

    .line 122
    iput-object p2, p0, Lorg/simpleframework/xml/core/Support;->matcher:Lorg/simpleframework/xml/transform/Matcher;

    .line 123
    iput-object p1, p0, Lorg/simpleframework/xml/core/Support;->filter:Lorg/simpleframework/xml/filter/Filter;

    .line 124
    iput-object p3, p0, Lorg/simpleframework/xml/core/Support;->format:Lorg/simpleframework/xml/stream/Format;

    .line 125
    return-void
.end method

.method private getClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 288
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #name:Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .parameter "type"

    .prologue
    .line 376
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 377
    const-class p0, Ljava/lang/Double;

    .line 400
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 379
    .restart local p0
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 380
    const-class p0, Ljava/lang/Float;

    goto :goto_0

    .line 382
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 383
    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    .line 385
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 386
    const-class p0, Ljava/lang/Long;

    goto :goto_0

    .line 388
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 389
    const-class p0, Ljava/lang/Boolean;

    goto :goto_0

    .line 391
    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 392
    const-class p0, Ljava/lang/Character;

    goto :goto_0

    .line 394
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 395
    const-class p0, Ljava/lang/Short;

    goto :goto_0

    .line 397
    :cond_7
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 398
    const-class p0, Ljava/lang/Byte;

    goto :goto_0
.end method

.method public static isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .parameter "expect"
    .parameter "actual"

    .prologue
    .line 357
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {p0}, Lorg/simpleframework/xml/core/Support;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 360
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-static {p1}, Lorg/simpleframework/xml/core/Support;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 363
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static isFloat(Ljava/lang/Class;)Z
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 329
    const-class v1, Ljava/lang/Double;

    if-ne p0, v1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    const-class v1, Ljava/lang/Float;

    if-eq p0, v1, :cond_0

    .line 335
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_0

    .line 338
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_0

    .line 341
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;
    .locals 1
    .parameter "type"

    .prologue
    .line 175
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->creator:Lorg/simpleframework/xml/core/InstanceFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/InstanceFactory;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;
    .locals 1
    .parameter "value"

    .prologue
    .line 162
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->creator:Lorg/simpleframework/xml/core/InstanceFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/InstanceFactory;->getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Support;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v1

    .line 266
    .local v1, schema:Lorg/simpleframework/xml/core/Scanner;
    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Scanner;->getName()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 271
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #name:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Support;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->factory:Lorg/simpleframework/xml/core/ScannerFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ScannerFactory;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lorg/simpleframework/xml/stream/Style;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    return-object v0
.end method

.method public getTransform(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->matcher:Lorg/simpleframework/xml/transform/Matcher;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/transform/Matcher;->match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    return-object v0
.end method

.method public isPrimitive(Ljava/lang/Class;)Z
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 307
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 310
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/transform/Transformer;->valid(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method

.method public read(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "value"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/transform/Transformer;->read(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"

    .prologue
    .line 138
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valid(Ljava/lang/Class;)Z
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/transform/Transformer;->valid(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public write(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .parameter "value"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/transform/Transformer;->write(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
