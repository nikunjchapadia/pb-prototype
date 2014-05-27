.class Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;
.super Ljava/lang/Object;
.source "InstanceCreationUtils.java"


# static fields
.field private static final BUILT_IN_DELEGATES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "InstanceCreationUtils"

.field private static final TRANSFORMER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final VIEW_DELEGATE_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 36
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;->VIEW_DELEGATE_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 37
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;->TRANSFORMER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;->BUILT_IN_DELEGATES:Ljava/util/HashMap;

    .line 42
    sget-object v0, Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;->BUILT_IN_DELEGATES:Ljava/util/HashMap;

    sget-object v1, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/AbsListViewDelegate;->SUPPORTED_VIEW_CLASS:Ljava/lang/Class;

    const-class v2, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/AbsListViewDelegate;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;->BUILT_IN_DELEGATES:Ljava/util/HashMap;

    sget-object v1, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/WebViewDelegate;->SUPPORTED_VIEW_CLASS:Ljava/lang/Class;

    const-class v2, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/WebViewDelegate;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBuiltInViewDelegate(Landroid/view/View;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 47
    sget-object v3, Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;->BUILT_IN_DELEGATES:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 48
    .local v0, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Class;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 49
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Class;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    sget-object v5, Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;->VIEW_DELEGATE_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-static {v4, v3, v5, v6}, Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;->newInstance(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;

    .line 56
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Class;>;"
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ScrollYDelegate;

    sget-object v5, Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;->VIEW_DELEGATE_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-static {v3, v4, v5, v6}, Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;->newInstance(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$ViewDelegate;

    goto :goto_0
.end method

.method static instantiateTransformer(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "context"
    .parameter "className"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 73
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v2, Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;->TRANSFORMER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-static {p0, v0, v2, p2}, Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;->newInstance(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 77
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "InstanceCreationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot instantiate class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static instantiateViewDelegate(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "context"
    .parameter "className"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 63
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v2, Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;->VIEW_DELEGATE_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-static {p0, v0, v2, p2}, Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;->newInstance(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 67
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "InstanceCreationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot instantiate class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static newInstance(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "context"
    .parameter "clazz"
    .parameter "constructorSig"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 84
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 88
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v2

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "InstanceCreationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot instantiate class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    const/4 v2, 0x0

    goto :goto_0
.end method
