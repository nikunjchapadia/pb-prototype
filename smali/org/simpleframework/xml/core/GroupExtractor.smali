.class Lorg/simpleframework/xml/core/GroupExtractor;
.super Ljava/lang/Object;
.source "GroupExtractor.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Group;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/GroupExtractor$Registry;
    }
.end annotation


# instance fields
.field private final elements:Lorg/simpleframework/xml/core/LabelMap;

.field private final factory:Lorg/simpleframework/xml/core/ExtractorFactory;

.field private final label:Ljava/lang/annotation/Annotation;

.field private final registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/stream/Format;)V
    .locals 2
    .parameter "contact"
    .parameter "label"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lorg/simpleframework/xml/core/ExtractorFactory;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/xml/core/ExtractorFactory;-><init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->factory:Lorg/simpleframework/xml/core/ExtractorFactory;

    .line 73
    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->elements:Lorg/simpleframework/xml/core/LabelMap;

    .line 74
    new-instance v0, Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    iget-object v1, p0, Lorg/simpleframework/xml/core/GroupExtractor;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;-><init>(Lorg/simpleframework/xml/core/LabelMap;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    .line 75
    iput-object p2, p0, Lorg/simpleframework/xml/core/GroupExtractor;->label:Ljava/lang/annotation/Annotation;

    .line 76
    invoke-direct {p0}, Lorg/simpleframework/xml/core/GroupExtractor;->extract()V

    .line 77
    return-void
.end method

.method private extract()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v1, p0, Lorg/simpleframework/xml/core/GroupExtractor;->factory:Lorg/simpleframework/xml/core/ExtractorFactory;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/ExtractorFactory;->getInstance()Lorg/simpleframework/xml/core/Extractor;

    move-result-object v0

    .line 179
    .local v0, extractor:Lorg/simpleframework/xml/core/Extractor;
    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/GroupExtractor;->extract(Lorg/simpleframework/xml/core/Extractor;)V

    .line 182
    :cond_0
    return-void
.end method

.method private extract(Lorg/simpleframework/xml/core/Extractor;)V
    .locals 5
    .parameter "extractor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 193
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Extractor;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    .line 195
    .local v4, list:[Ljava/lang/annotation/Annotation;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/annotation/Annotation;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 196
    .local v2, label:Ljava/lang/annotation/Annotation;
    invoke-direct {p0, p1, v2}, Lorg/simpleframework/xml/core/GroupExtractor;->extract(Lorg/simpleframework/xml/core/Extractor;Ljava/lang/annotation/Annotation;)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v2           #label:Ljava/lang/annotation/Annotation;
    :cond_0
    return-void
.end method

.method private extract(Lorg/simpleframework/xml/core/Extractor;Ljava/lang/annotation/Annotation;)V
    .locals 4
    .parameter "extractor"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 210
    invoke-interface {p1, p2}, Lorg/simpleframework/xml/core/Extractor;->getLabel(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 211
    .local v0, label:Lorg/simpleframework/xml/core/Label;
    invoke-interface {p1, p2}, Lorg/simpleframework/xml/core/Extractor;->getType(Ljava/lang/annotation/Annotation;)Ljava/lang/Class;

    move-result-object v2

    .line 212
    .local v2, type:Ljava/lang/Class;
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    if-eqz v3, :cond_0

    .line 215
    iget-object v3, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v3, v2, v1, v0}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->register(Ljava/lang/Class;Ljava/lang/String;Lorg/simpleframework/xml/core/Label;)V

    .line 217
    :cond_0
    return-void
.end method


# virtual methods
.method public getElements()Lorg/simpleframework/xml/core/LabelMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->getLabels()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .locals 1
    .parameter "type"

    .prologue
    .line 124
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->resolve(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->getKeys()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaths()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->getPaths()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDeclared(Ljava/lang/Class;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 150
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v3, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Label;

    .line 163
    .local v1, label:Lorg/simpleframework/xml/core/Label;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v3

    if-nez v3, :cond_0

    .line 167
    .end local v1           #label:Lorg/simpleframework/xml/core/Label;
    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v3, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isValid(Ljava/lang/Class;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 137
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->resolve(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->label:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
