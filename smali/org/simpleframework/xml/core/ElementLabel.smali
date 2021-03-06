.class Lorg/simpleframework/xml/core/ElementLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;
.source "ElementLabel.java"


# instance fields
.field private decorator:Lorg/simpleframework/xml/core/Decorator;

.field private detail:Lorg/simpleframework/xml/core/Introspector;

.field private format:Lorg/simpleframework/xml/stream/Format;

.field private label:Lorg/simpleframework/xml/Element;

.field private name:Ljava/lang/String;

.field private override:Ljava/lang/Class;

.field private path:Lorg/simpleframework/xml/core/Expression;

.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/Element;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .parameter "contact"
    .parameter "label"
    .parameter "format"

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateLabel;-><init>()V

    .line 91
    new-instance v0, Lorg/simpleframework/xml/core/Introspector;

    invoke-direct {v0, p1, p0, p3}, Lorg/simpleframework/xml/core/Introspector;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    .line 92
    new-instance v0, Lorg/simpleframework/xml/core/Qualifier;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Qualifier;-><init>(Lorg/simpleframework/xml/core/Contact;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    .line 93
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->type:Ljava/lang/Class;

    .line 94
    invoke-interface {p2}, Lorg/simpleframework/xml/Element;->type()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->override:Ljava/lang/Class;

    .line 95
    invoke-interface {p2}, Lorg/simpleframework/xml/Element;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->name:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lorg/simpleframework/xml/core/ElementLabel;->format:Lorg/simpleframework/xml/stream/Format;

    .line 97
    iput-object p2, p0, Lorg/simpleframework/xml/core/ElementLabel;->label:Lorg/simpleframework/xml/Element;

    .line 98
    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->label:Lorg/simpleframework/xml/Element;

    return-object v0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 144
    .local v0, type:Lorg/simpleframework/xml/strategy/Type;
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    new-instance v1, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    .line 150
    :goto_0
    return-object v1

    .line 147
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementLabel;->override:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    .line 148
    new-instance v1, Lorg/simpleframework/xml/core/Composite;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/Composite;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    goto :goto_0

    .line 150
    :cond_1
    new-instance v1, Lorg/simpleframework/xml/core/Composite;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementLabel;->override:Ljava/lang/Class;

    invoke-direct {v1, p1, v0, v2}, Lorg/simpleframework/xml/core/Composite;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    return-object v0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 1
    .parameter "context"

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->path:Lorg/simpleframework/xml/core/Expression;

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->path:Lorg/simpleframework/xml/core/Expression;

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->path:Lorg/simpleframework/xml/core/Expression;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementLabel;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {v2}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v1

    .line 178
    .local v1, style:Lorg/simpleframework/xml/stream/Style;
    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Introspector;->getName()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, name:Ljava/lang/String;
    invoke-interface {v1, v0}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getOverride()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v1

    .line 193
    .local v1, path:Lorg/simpleframework/xml/core/Expression;
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementLabel;->getName()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, name:Ljava/lang/String;
    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getType()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->override:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->type:Ljava/lang/Class;

    .line 265
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->override:Ljava/lang/Class;

    goto :goto_0
.end method

.method public getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;
    .locals 3
    .parameter "type"

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 126
    .local v0, contact:Lorg/simpleframework/xml/strategy/Type;
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementLabel;->override:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    .line 129
    .end local v0           #contact:Lorg/simpleframework/xml/strategy/Type;
    :goto_0
    return-object v0

    .restart local v0       #contact:Lorg/simpleframework/xml/strategy/Type;
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/OverrideType;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementLabel;->override:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Lorg/simpleframework/xml/core/OverrideType;-><init>(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public isData()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->label:Lorg/simpleframework/xml/Element;

    invoke-interface {v0}, Lorg/simpleframework/xml/Element;->data()Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->label:Lorg/simpleframework/xml/Element;

    invoke-interface {v0}, Lorg/simpleframework/xml/Element;->required()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
