.class public Lcom/lilkillaware/fbapptemplate/network/WebService;
.super Ljava/lang/Object;
.source "WebService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;,
        Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;,
        Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final _cachePolicies:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final _cachedResponse:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _IsPostJson:Z

.field private _IsPostMethod:Z

.field private _NoResultMessage:Ljava/lang/String;

.field private _NoResultTitle:Ljava/lang/String;

.field private _Timeout:I

.field private _headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _isJson:Z

.field private _postEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private _useCacheControlHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/lilkillaware/fbapptemplate/network/WebService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lilkillaware/fbapptemplate/network/WebService;->TAG:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_cachedResponse:Ljava/util/Hashtable;

    .line 92
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_cachePolicies:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lilkillaware/fbapptemplate/network/WebService;-><init>(Z)V

    .line 103
    iput p1, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_Timeout:I

    .line 104
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "useCacheControlHeader"

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v1, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_Timeout:I

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_headers:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_postEntities:Ljava/util/List;

    .line 97
    iput-boolean v1, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_IsPostMethod:Z

    .line 98
    iput-boolean p1, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_useCacheControlHeader:Z

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/lilkillaware/fbapptemplate/network/WebService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lilkillaware/fbapptemplate/network/WebService;->getXmlFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/lilkillaware/fbapptemplate/network/WebService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lilkillaware/fbapptemplate/network/WebService;Ljava/lang/String;Ljava/lang/Class;ZLcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lilkillaware/fbapptemplate/network/WebService;->getModelFromUrl(Ljava/lang/String;Ljava/lang/Class;ZLcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/lilkillaware/fbapptemplate/network/WebService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_NoResultMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lilkillaware/fbapptemplate/network/WebService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_NoResultTitle:Ljava/lang/String;

    return-object v0
.end method

.method private getJsonPostEntities()Lorg/apache/http/entity/StringEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 170
    .local v0, json:Lorg/json/JSONStringer;
    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 172
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_postEntities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 173
    .local v1, nameValue:Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    goto :goto_0

    .line 176
    .end local v1           #nameValue:Lorg/apache/http/NameValuePair;
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 177
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private getModelFromUrl(Ljava/lang/String;Ljava/lang/Class;ZLcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;)Ljava/lang/Object;
    .locals 11
    .parameter "url"
    .parameter
    .parameter "strict"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;Z",
            "Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 245
    .local p2, class1:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p4, postProcessListener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;,"Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener<TT;>;"
    const/4 v3, 0x0

    .line 247
    .local v3, model:Ljava/lang/Object;,"TT;"
    const/4 v4, 0x1

    .line 248
    .local v4, needServerHit:Z
    iget-boolean v9, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_useCacheControlHeader:Z

    if-eqz v9, :cond_2

    .line 249
    sget-object v9, Lcom/lilkillaware/fbapptemplate/network/WebService;->_cachePolicies:Ljava/util/Hashtable;

    invoke-virtual {v9, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 250
    sget-object v9, Lcom/lilkillaware/fbapptemplate/network/WebService;->_cachePolicies:Ljava/util/Hashtable;

    invoke-virtual {v9, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;

    .line 251
    .local v0, cp:Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;
    iget v9, v0, Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;->_cacheSecondsMaxAge:I

    if-gtz v9, :cond_0

    iget v9, v0, Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;->_cacheSecondsSMaxAge:I

    if-lez v9, :cond_1

    .line 252
    :cond_0
    iget v9, v0, Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;->_cacheSecondsSMaxAge:I

    if-lez v9, :cond_8

    iget v2, v0, Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;->_cacheSecondsSMaxAge:I

    .line 253
    .local v2, maxCacheSeconds:I
    :goto_0
    iget-object v9, v0, Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;->_lastServerHit:Ljava/util/Date;

    invoke-static {v9}, Lcom/lilkillaware/fbapptemplate/util/HelperMethods;->getSecondsElapsed(Ljava/util/Date;)J

    move-result-wide v5

    .line 254
    .local v5, secondsSinceLastServerCall:J
    int-to-long v9, v2

    cmp-long v9, v9, v5

    if-lez v9, :cond_1

    .line 255
    const/4 v4, 0x0

    .line 260
    .end local v0           #cp:Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;
    .end local v2           #maxCacheSeconds:I
    .end local v5           #secondsSinceLastServerCall:J
    :cond_1
    if-nez v4, :cond_2

    .line 261
    sget-object v9, Lcom/lilkillaware/fbapptemplate/network/WebService;->_cachedResponse:Ljava/util/Hashtable;

    invoke-virtual {v9, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 262
    sget-object v9, Lcom/lilkillaware/fbapptemplate/network/WebService;->_cachedResponse:Ljava/util/Hashtable;

    invoke-virtual {v9, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 268
    .end local v3           #model:Ljava/lang/Object;,"TT;"
    :cond_2
    :goto_1
    if-eqz v4, :cond_5

    .line 269
    invoke-direct {p0, p1}, Lcom/lilkillaware/fbapptemplate/network/WebService;->getXmlFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 271
    .local v8, stringFromUrl:Ljava/lang/String;
    if-eqz p4, :cond_3

    .line 272
    invoke-interface {p4, v8}, Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;->onWebServiceHttpResponseFinish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 274
    :cond_3
    iget-boolean v9, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_isJson:Z

    if-eqz v9, :cond_a

    .line 275
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 276
    .local v1, gson:Lcom/google/gson/Gson;
    invoke-virtual {v1, v8, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 287
    .end local v1           #gson:Lcom/google/gson/Gson;
    :cond_4
    :goto_2
    if-eqz p4, :cond_5

    .line 288
    invoke-interface {p4, v3}, Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;->onBeforeServiceCompleted(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 291
    .end local v8           #stringFromUrl:Ljava/lang/String;
    :cond_5
    iget-boolean v9, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_useCacheControlHeader:Z

    if-eqz v9, :cond_7

    if-eqz v4, :cond_7

    .line 292
    sget-object v9, Lcom/lilkillaware/fbapptemplate/network/WebService;->_cachePolicies:Ljava/util/Hashtable;

    invoke-virtual {v9, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 293
    sget-object v9, Lcom/lilkillaware/fbapptemplate/network/WebService;->_cachePolicies:Ljava/util/Hashtable;

    invoke-virtual {v9, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;

    .line 294
    .restart local v0       #cp:Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;
    iget v9, v0, Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;->_cacheSecondsMaxAge:I

    if-gtz v9, :cond_6

    iget v9, v0, Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;->_cacheSecondsSMaxAge:I

    if-lez v9, :cond_7

    .line 295
    :cond_6
    sget-object v9, Lcom/lilkillaware/fbapptemplate/network/WebService;->_cachedResponse:Ljava/util/Hashtable;

    invoke-virtual {v9, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .end local v0           #cp:Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;
    :cond_7
    return-object v3

    .line 252
    .restart local v0       #cp:Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;
    .restart local v3       #model:Ljava/lang/Object;,"TT;"
    :cond_8
    iget v2, v0, Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;->_cacheSecondsMaxAge:I

    goto :goto_0

    .line 264
    .end local v0           #cp:Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;
    :cond_9
    const/4 v4, 0x1

    goto :goto_1

    .line 278
    .end local v3           #model:Ljava/lang/Object;,"TT;"
    .restart local v8       #stringFromUrl:Ljava/lang/String;
    :cond_a
    if-eqz p4, :cond_b

    .line 279
    invoke-interface {p4, v8}, Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;->doCustomParsing(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 281
    :cond_b
    if-nez v3, :cond_4

    .line 282
    new-instance v7, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v7}, Lorg/simpleframework/xml/core/Persister;-><init>()V

    .line 283
    .local v7, serializer:Lorg/simpleframework/xml/Serializer;
    invoke-interface {v7, p2, v8, p3}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #model:Ljava/lang/Object;,"TT;"
    goto :goto_2
.end method

.method private getPostEntities()Lorg/apache/http/entity/StringEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_postEntities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    .line 159
    :cond_0
    iget-boolean v1, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_IsPostJson:Z

    if-eqz v1, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/network/WebService;->getJsonPostEntities()Lorg/apache/http/entity/StringEntity;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_1
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_postEntities:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 163
    .local v0, urlEncodedFormEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    goto :goto_0
.end method

.method private getXmlFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v9, 0x0

    .line 111
    .local v9, xml:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 112
    .local v2, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    const/4 v8, 0x0

    .line 113
    .local v8, request:Lorg/apache/http/client/methods/HttpUriRequest;
    iget-boolean v10, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_IsPostMethod:Z

    if-eqz v10, :cond_1

    .line 114
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 116
    .local v7, post:Lorg/apache/http/client/methods/HttpPost;
    iget-object v10, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_postEntities:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 117
    const-string v10, "Content-type"

    const-string v11, "application/json"

    invoke-virtual {v7, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/lilkillaware/fbapptemplate/network/WebService;->getPostEntities()Lorg/apache/http/entity/StringEntity;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 121
    :cond_0
    move-object v8, v7

    .line 126
    .end local v7           #post:Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    iget-object v10, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_headers:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 127
    iget-object v10, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_headers:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v8, v10, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 123
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    .end local v8           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v8, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .restart local v8       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 132
    :cond_2
    iget v10, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_Timeout:I

    if-eqz v10, :cond_3

    .line 133
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 134
    .local v4, httpParams:Lorg/apache/http/params/HttpParams;
    iget v10, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_Timeout:I

    invoke-static {v4, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 135
    invoke-interface {v8, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 138
    .end local v4           #httpParams:Lorg/apache/http/params/HttpParams;
    :cond_3
    invoke-virtual {v2, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 139
    .local v5, httpResponse:Lorg/apache/http/HttpResponse;
    const-string v10, "Cache-Control"

    invoke-interface {v5, v10}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 140
    const-string v10, "Cache-Control"

    invoke-interface {v5, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 141
    .local v1, header:Lorg/apache/http/Header;
    invoke-direct {p0, p1, v1}, Lcom/lilkillaware/fbapptemplate/network/WebService;->populateCacheInfo(Ljava/lang/String;Lorg/apache/http/Header;)V

    .line 144
    .end local v1           #header:Lorg/apache/http/Header;
    :cond_4
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 145
    .local v3, httpEntity:Lorg/apache/http/HttpEntity;
    const-string v10, "UTF-8"

    invoke-static {v3, v10}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 148
    iget-boolean v10, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_isJson:Z

    if-nez v10, :cond_5

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 149
    const/16 v10, 0x3c

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 150
    .local v6, index:I
    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 153
    .end local v6           #index:I
    :cond_5
    return-object v9
.end method

.method private populateCacheInfo(Ljava/lang/String;Lorg/apache/http/Header;)V
    .locals 13
    .parameter "url"
    .parameter "header"

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 222
    sget-object v7, Lcom/lilkillaware/fbapptemplate/network/WebService;->_cachePolicies:Ljava/util/Hashtable;

    invoke-virtual {v7, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 223
    sget-object v7, Lcom/lilkillaware/fbapptemplate/network/WebService;->_cachePolicies:Ljava/util/Hashtable;

    invoke-virtual {v7, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    const/4 v0, 0x0

    .line 225
    .local v0, _cacheSecondsMaxAge:I
    const/4 v1, 0x0

    .line 226
    .local v1, _cacheSecondsSMaxAge:I
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, value:Ljava/lang/String;
    const-string v7, "\\,"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, splitted:[Ljava/lang/String;
    array-length v9, v3

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v4, v3, v7

    .line 229
    .local v4, splittedValue:Ljava/lang/String;
    const-string v10, "\\="

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, values:[Ljava/lang/String;
    array-length v10, v6

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 231
    aget-object v10, v6, v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "max-age"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 232
    aget-object v10, v6, v12

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 228
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 233
    :cond_2
    aget-object v10, v6, v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "s-maxage"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 234
    aget-object v10, v6, v12

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 237
    .end local v4           #splittedValue:Ljava/lang/String;
    .end local v6           #values:[Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    .line 238
    :cond_4
    new-instance v2, Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;

    invoke-direct {v2, p0, v0, v1}, Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;-><init>(Lcom/lilkillaware/fbapptemplate/network/WebService;II)V

    .line 239
    .local v2, cp:Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;
    sget-object v7, Lcom/lilkillaware/fbapptemplate/network/WebService;->_cachePolicies:Ljava/util/Hashtable;

    invoke-virtual {v7, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .end local v2           #cp:Lcom/lilkillaware/fbapptemplate/network/WebService$CachePolicy;
    :cond_5
    return-void
.end method


# virtual methods
.method public getModelFromUrlAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ZZLcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;)V
    .locals 9
    .parameter "ctx"
    .parameter "url"
    .parameter
    .parameter "strict"
    .parameter "raiseDialogIfNoInternet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;ZZ",
            "Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p3, class1:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p6, listener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;,"Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener<TT;>;"
    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/lilkillaware/fbapptemplate/network/WebService;->getModelFromUrlAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ZZZLcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;)V

    .line 306
    return-void
.end method

.method public getModelFromUrlAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ZZLcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;)V
    .locals 9
    .parameter "ctx"
    .parameter "url"
    .parameter
    .parameter "strict"
    .parameter "raiseDialogIfNoInternet"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;ZZ",
            "Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener",
            "<TT;>;",
            "Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p3, class1:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p6, listener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;,"Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener<TT;>;"
    .local p7, postProcessListener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;,"Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener<TT;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/lilkillaware/fbapptemplate/network/WebService;->getModelFromUrlAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ZZZLcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;)V

    .line 312
    return-void
.end method

.method public getModelFromUrlAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ZZZLcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;)V
    .locals 9
    .parameter "ctx"
    .parameter "url"
    .parameter
    .parameter "strict"
    .parameter "showProgressDialog"
    .parameter "raiseDialogIfNoInternet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;ZZZ",
            "Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p3, class1:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p7, listener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;,"Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener<TT;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/lilkillaware/fbapptemplate/network/WebService;->getModelFromUrlAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ZZZLcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;)V

    .line 318
    return-void
.end method

.method public getModelFromUrlAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ZZZLcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;)V
    .locals 9
    .parameter "ctx"
    .parameter "url"
    .parameter
    .parameter "strict"
    .parameter "showProgressDialog"
    .parameter "raiseDialogIfNoInternet"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;ZZZ",
            "Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener",
            "<TT;>;",
            "Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p3, class1:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p7, listener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;,"Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener<TT;>;"
    .local p8, postProcessListener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;,"Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener<TT;>;"
    new-instance v0, Lcom/lilkillaware/fbapptemplate/network/WebService$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p6

    move v4, p5

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/lilkillaware/fbapptemplate/network/WebService$2;-><init>(Lcom/lilkillaware/fbapptemplate/network/WebService;Landroid/content/Context;ZZLjava/lang/Class;ZLcom/lilkillaware/fbapptemplate/network/WebService$WebServiceProcessingEventsListener;Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;)V

    .line 385
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;TT;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 386
    return-void
.end method

.method public getNoResultDialogMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_NoResultMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getNoResultDialogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_NoResultTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseFromUrlAsync(Ljava/lang/String;Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;)V
    .locals 3
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p2, listener:Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;,"Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener<Ljava/lang/String;>;"
    new-instance v0, Lcom/lilkillaware/fbapptemplate/network/WebService$1;

    invoke-direct {v0, p0, p2}, Lcom/lilkillaware/fbapptemplate/network/WebService$1;-><init>(Lcom/lilkillaware/fbapptemplate/network/WebService;Lcom/lilkillaware/fbapptemplate/network/WebService$WebServiceCompletedEventsListener;)V

    .line 217
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 218
    return-void
.end method

.method public headerAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    return-void
.end method

.method public headerRemove(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    return-void
.end method

.method public headersClear()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_headers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 398
    return-void
.end method

.method public isJson()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_isJson:Z

    return v0
.end method

.method public isPostJson()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_IsPostJson:Z

    return v0
.end method

.method public isPostMethod()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_IsPostMethod:Z

    return v0
.end method

.method public postEntityAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_postEntities:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    return-void
.end method

.method public postEntityClear()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_postEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 410
    return-void
.end method

.method public postEntityRemove(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_postEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 406
    return-void
.end method

.method public setIsJson(Z)V
    .locals 0
    .parameter "isJson"

    .prologue
    .line 429
    iput-boolean p1, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_isJson:Z

    .line 430
    return-void
.end method

.method public setIsPostJson(Z)V
    .locals 0
    .parameter "_IsPostJson"

    .prologue
    .line 451
    iput-boolean p1, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_IsPostJson:Z

    .line 452
    return-void
.end method

.method public setIsPostMethod(Z)V
    .locals 0
    .parameter "usePost"

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_IsPostMethod:Z

    .line 418
    return-void
.end method

.method public setNoResultDialogMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "noResultMessage"

    .prologue
    .line 437
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_NoResultMessage:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setNoResultDialogTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "noResultTitle"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/WebService;->_NoResultTitle:Ljava/lang/String;

    .line 422
    return-void
.end method
