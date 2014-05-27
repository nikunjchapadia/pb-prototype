.class Lorg/simpleframework/xml/core/ExtractorFactory$ElementMapExtractor;
.super Ljava/lang/Object;
.source "ExtractorFactory.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Extractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/ExtractorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ElementMapExtractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/core/Extractor",
        "<",
        "Lorg/simpleframework/xml/ElementMap;",
        ">;"
    }
.end annotation


# instance fields
.field private final contact:Lorg/simpleframework/xml/core/Contact;

.field private final format:Lorg/simpleframework/xml/stream/Format;

.field private final union:Lorg/simpleframework/xml/ElementMapUnion;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementMapUnion;Lorg/simpleframework/xml/stream/Format;)V
    .locals 0
    .parameter "contact"
    .parameter "union"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p1, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementMapExtractor;->contact:Lorg/simpleframework/xml/core/Contact;

    .line 377
    iput-object p3, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementMapExtractor;->format:Lorg/simpleframework/xml/stream/Format;

    .line 378
    iput-object p2, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementMapExtractor;->union:Lorg/simpleframework/xml/ElementMapUnion;

    .line 379
    return-void
.end method


# virtual methods
.method public bridge synthetic getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ExtractorFactory$ElementMapExtractor;->getAnnotations()[Lorg/simpleframework/xml/ElementMap;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Lorg/simpleframework/xml/ElementMap;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementMapExtractor;->union:Lorg/simpleframework/xml/ElementMapUnion;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementMapUnion;->value()[Lorg/simpleframework/xml/ElementMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLabel(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 349
    check-cast p1, Lorg/simpleframework/xml/ElementMap;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ExtractorFactory$ElementMapExtractor;->getLabel(Lorg/simpleframework/xml/ElementMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Lorg/simpleframework/xml/ElementMap;)Lorg/simpleframework/xml/core/Label;
    .locals 3
    .parameter "element"

    .prologue
    .line 405
    new-instance v0, Lorg/simpleframework/xml/core/ElementMapLabel;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementMapExtractor;->contact:Lorg/simpleframework/xml/core/Contact;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementMapExtractor;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0, v1, p1, v2}, Lorg/simpleframework/xml/core/ElementMapLabel;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementMap;Lorg/simpleframework/xml/stream/Format;)V

    return-object v0
.end method

.method public bridge synthetic getType(Ljava/lang/annotation/Annotation;)Ljava/lang/Class;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 349
    check-cast p1, Lorg/simpleframework/xml/ElementMap;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ExtractorFactory$ElementMapExtractor;->getType(Lorg/simpleframework/xml/ElementMap;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType(Lorg/simpleframework/xml/ElementMap;)Ljava/lang/Class;
    .locals 1
    .parameter "element"

    .prologue
    .line 418
    invoke-interface {p1}, Lorg/simpleframework/xml/ElementMap;->valueType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
