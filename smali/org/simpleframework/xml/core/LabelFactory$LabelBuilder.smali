.class Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;
.super Ljava/lang/Object;
.source "LabelFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/LabelFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LabelBuilder"
.end annotation


# instance fields
.field private final entry:Ljava/lang/Class;

.field private final label:Ljava/lang/Class;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .parameter "type"
    .parameter "label"

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 213
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .parameter "type"
    .parameter "label"
    .parameter "entry"

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p3, p0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->entry:Ljava/lang/Class;

    .line 226
    iput-object p2, p0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->label:Ljava/lang/Class;

    .line 227
    iput-object p1, p0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->type:Ljava/lang/Class;

    .line 228
    return-void
.end method

.method private getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4
    .parameter "label"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->type:Ljava/lang/Class;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/simpleframework/xml/core/Contact;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/simpleframework/xml/stream/Format;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method private getConstructor(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4
    .parameter "label"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->type:Ljava/lang/Class;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/simpleframework/xml/core/Contact;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    const-class v3, Lorg/simpleframework/xml/stream/Format;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->entry:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->label:Ljava/lang/Class;

    iget-object v1, p0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->entry:Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->getConstructor(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->label:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/LabelFactory$LabelBuilder;->getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_0
.end method
