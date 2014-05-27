.class public Lcom/lilkillaware/fbapptemplate/util/FBUtility;
.super Landroid/app/Application;
.source "FBUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lilkillaware/fbapptemplate/util/FBUtility$FlushedInputStream;
    }
.end annotation


# static fields
.field public static final HACK_ICON_URL:Ljava/lang/String; = "http://www.facebookmobileweb.com/hackbook/img/facebook_icon_large.png"

.field private static MAX_IMAGE_DIMENSION:I

.field public static currentPermissions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static httpclient:Landroid/net/http/AndroidHttpClient;

.field public static mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

.field public static mFacebook:Lcom/facebook/android/Facebook;

.field public static mFriendsList:Lorg/json/JSONObject;

.field public static objectID:Ljava/lang/String;

.field public static userUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput-object v0, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->userUID:Ljava/lang/String;

    .line 50
    sput-object v0, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->objectID:Ljava/lang/String;

    .line 51
    sput-object v0, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->httpclient:Landroid/net/http/AndroidHttpClient;

    .line 52
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->currentPermissions:Ljava/util/Hashtable;

    .line 54
    const/16 v0, 0x2d0

    sput v0, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->MAX_IMAGE_DIMENSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 78
    return-void
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "url"

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 60
    .local v2, bm:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, aURL:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 62
    .local v3, conn:Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 63
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 64
    .local v5, is:Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 65
    .local v1, bis:Ljava/io/BufferedInputStream;
    new-instance v6, Lcom/lilkillaware/fbapptemplate/util/FBUtility$FlushedInputStream;

    invoke-direct {v6, v5}, Lcom/lilkillaware/fbapptemplate/util/FBUtility$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 66
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 67
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    sget-object v6, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->httpclient:Landroid/net/http/AndroidHttpClient;

    if-eqz v6, :cond_0

    .line 72
    sget-object v6, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->httpclient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 75
    .end local v0           #aURL:Ljava/net/URL;
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #conn:Ljava/net/URLConnection;
    .end local v5           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v2

    .line 68
    :catch_0
    move-exception v4

    .line 69
    .local v4, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    sget-object v6, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->httpclient:Landroid/net/http/AndroidHttpClient;

    if-eqz v6, :cond_0

    .line 72
    sget-object v6, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->httpclient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 71
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    sget-object v7, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->httpclient:Landroid/net/http/AndroidHttpClient;

    if-eqz v7, :cond_1

    .line 72
    sget-object v7, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->httpclient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_1
    throw v6
.end method

.method public static getOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 10
    .parameter "context"
    .parameter "photoUri"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/String;

    const-string v1, "orientation"

    aput-object v1, v2, v8

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 164
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v0, v9, :cond_0

    .line 165
    const/4 v7, -0x1

    .line 172
    :goto_0
    return v7

    .line 168
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 169
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 170
    .local v7, orientation:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static scaleImage(Landroid/content/Context;Landroid/net/Uri;)[B
    .locals 20
    .parameter "context"
    .parameter "photoUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 103
    .local v12, is:Ljava/io/InputStream;
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 104
    .local v10, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 105
    const/4 v2, 0x0

    invoke-static {v12, v2, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 106
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 109
    invoke-static/range {p0 .. p1}, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v15

    .line 111
    .local v15, orientation:I
    const/16 v2, 0x5a

    if-eq v15, v2, :cond_0

    const/16 v2, 0x10e

    if-ne v15, v2, :cond_4

    .line 112
    :cond_0
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v17, v0

    .line 113
    .local v17, rotatedWidth:I
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    .line 120
    .local v16, rotatedHeight:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 121
    sget v2, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->MAX_IMAGE_DIMENSION:I

    move/from16 v0, v17

    if-gt v0, v2, :cond_1

    sget v2, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->MAX_IMAGE_DIMENSION:I

    move/from16 v0, v16

    if-le v0, v2, :cond_5

    .line 122
    :cond_1
    move/from16 v0, v17

    int-to-float v2, v0

    sget v3, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->MAX_IMAGE_DIMENSION:I

    int-to-float v3, v3

    div-float v19, v2, v3

    .line 123
    .local v19, widthRatio:F
    move/from16 v0, v16

    int-to-float v2, v0

    sget v3, Lcom/lilkillaware/fbapptemplate/util/FBUtility;->MAX_IMAGE_DIMENSION:I

    int-to-float v3, v3

    div-float v11, v2, v3

    .line 124
    .local v11, heightRatio:F
    move/from16 v0, v19

    invoke-static {v0, v11}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 127
    .local v13, maxRatio:F
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 128
    .local v14, options:Landroid/graphics/BitmapFactory$Options;
    float-to-int v2, v13

    iput v2, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 129
    const/4 v2, 0x0

    invoke-static {v12, v2, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 133
    .end local v11           #heightRatio:F
    .end local v13           #maxRatio:F
    .end local v14           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v19           #widthRatio:F
    .local v1, srcBitmap:Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 139
    if-lez v15, :cond_2

    .line 140
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 141
    .local v6, matrix:Landroid/graphics/Matrix;
    int-to-float v2, v15

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 143
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 144
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    .line 143
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 147
    .end local v6           #matrix:Landroid/graphics/Matrix;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    .line 148
    .local v18, type:Ljava/lang/String;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 149
    .local v9, baos:Ljava/io/ByteArrayOutputStream;
    const-string v2, "image/png"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 150
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 154
    :cond_3
    :goto_2
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 155
    .local v8, bMapArray:[B
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 156
    return-object v8

    .line 115
    .end local v1           #srcBitmap:Landroid/graphics/Bitmap;
    .end local v8           #bMapArray:[B
    .end local v9           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v16           #rotatedHeight:I
    .end local v17           #rotatedWidth:I
    .end local v18           #type:Ljava/lang/String;
    :cond_4
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    .line 116
    .restart local v17       #rotatedWidth:I
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    .restart local v16       #rotatedHeight:I
    goto/16 :goto_0

    .line 131
    :cond_5
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1       #srcBitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 151
    .restart local v9       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #type:Ljava/lang/String;
    :cond_6
    const-string v2, "image/jpg"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "image/jpeg"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    :cond_7
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_2
.end method
