.class Lorg/simpleframework/xml/core/ModelMap;
.super Ljava/util/LinkedHashMap;
.source "ModelMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lorg/simpleframework/xml/core/ModelList;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/simpleframework/xml/core/ModelList;",
        ">;"
    }
.end annotation


# instance fields
.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/simpleframework/xml/core/ModelMap;->type:Ljava/lang/Class;

    .line 50
    return-void
.end method


# virtual methods
.method public getModels()Lorg/simpleframework/xml/core/ModelMap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v2, Lorg/simpleframework/xml/core/ModelMap;

    iget-object v4, p0, Lorg/simpleframework/xml/core/ModelMap;->type:Ljava/lang/Class;

    invoke-direct {v2, v4}, Lorg/simpleframework/xml/core/ModelMap;-><init>(Ljava/lang/Class;)V

    .line 63
    .local v2, map:Lorg/simpleframework/xml/core/ModelMap;
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 64
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/ModelList;

    .line 66
    .local v1, list:Lorg/simpleframework/xml/core/ModelList;
    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v1}, Lorg/simpleframework/xml/core/ModelList;->build()Lorg/simpleframework/xml/core/ModelList;

    move-result-object v1

    .line 69
    :cond_0
    invoke-virtual {v2, v3}, Lorg/simpleframework/xml/core/ModelMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    new-instance v4, Lorg/simpleframework/xml/core/PathException;

    const-string v5, "Path with name \'%s\' is a duplicate in %s "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/simpleframework/xml/core/ModelMap;->type:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 72
    :cond_1
    invoke-virtual {v2, v3, v1}, Lorg/simpleframework/xml/core/ModelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    .end local v1           #list:Lorg/simpleframework/xml/core/ModelList;
    .end local v3           #name:Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/simpleframework/xml/core/ModelList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;
    .locals 2
    .parameter "name"
    .parameter "index"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ModelList;

    .line 91
    .local v0, list:Lorg/simpleframework/xml/core/ModelList;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/ModelList;->lookup(I)Lorg/simpleframework/xml/core/Model;

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public register(Ljava/lang/String;Lorg/simpleframework/xml/core/Model;)V
    .locals 1
    .parameter "name"
    .parameter "model"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ModelList;

    .line 109
    .local v0, list:Lorg/simpleframework/xml/core/ModelList;
    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lorg/simpleframework/xml/core/ModelList;

    .end local v0           #list:Lorg/simpleframework/xml/core/ModelList;
    invoke-direct {v0}, Lorg/simpleframework/xml/core/ModelList;-><init>()V

    .line 111
    .restart local v0       #list:Lorg/simpleframework/xml/core/ModelList;
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/ModelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/ModelList;->register(Lorg/simpleframework/xml/core/Model;)V

    .line 114
    return-void
.end method
