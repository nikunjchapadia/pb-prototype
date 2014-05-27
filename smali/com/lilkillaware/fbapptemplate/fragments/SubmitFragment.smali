.class public Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;
.super Landroid/support/v4/app/Fragment;
.source "SubmitFragment.java"


# static fields
.field private static final CAMERA_REQ_CODE:I = 0x3e9

.field private static final CAMERA_REQ_CROP_CODE:I = 0x3ea

.field private static final FILENAME:Ljava/lang/String; = "ILoveFunnyDogs"

.field private static final SCREEN_LABEL:Ljava/lang/String; = "Submit Screen"

.field private static final SELECT_PHOTO:I = 0x3eb

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

.field private _app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

.field private _imageUri:Landroid/net/Uri;

.field private _imageUriForUpload:Landroid/net/Uri;

.field private _ivPhotoForUpload:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic access$002(Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_imageUriForUpload:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_ivPhotoForUpload:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getCropIntent(Z)Landroid/content/Intent;
    .locals 6
    .parameter "isInErrorMode"

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x1

    .line 178
    if-nez p1, :cond_0

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_imageUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 181
    const-string v2, "outputX"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    const-string v2, "outputY"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    const-string v2, "aspectX"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    const-string v2, "aspectY"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    const-string v2, "scale"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    const-string v2, "return-data"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v1, v0

    .line 198
    .end local v0           #intent:Landroid/content/Intent;
    .local v1, intent:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 190
    .end local v1           #intent:Ljava/lang/Object;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_imageUri:Landroid/net/Uri;

    const-string v3, "image/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v2, "outputX"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    const-string v2, "outputY"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const-string v2, "aspectX"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    const-string v2, "aspectY"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    const-string v2, "scale"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    const-string v2, "return-data"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v1, v0

    .line 198
    .restart local v1       #intent:Ljava/lang/Object;
    goto :goto_0
.end method

.method public static getOutputMediaFile()Ljava/io/File;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v3, Ljava/io/File;

    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const-string v6, "ILoveFunnyDogs"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 282
    .local v3, mediaStorageDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 283
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 284
    sget-object v5, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->TAG:Ljava/lang/String;

    const-string v6, "failed to create directory"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v2, 0x0

    .line 296
    :goto_0
    return-object v2

    .line 290
    :cond_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd_HHmmss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, timeStamp:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 294
    .local v0, currentTime:J
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "IMG_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v2, mediaFile:Ljava/io/File;
    goto :goto_0
.end method

.method private onErrorTakingPhoto()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    const-string v1, "Error while taking photo"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 270
    return-void
.end method

.method private onPhotoAcquired()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_imageUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_imageUriForUpload:Landroid/net/Uri;

    .line 203
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_ivPhotoForUpload:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_imageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 204
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    .line 74
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    iput-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    .line 75
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "&cd"

    const-string v2, "Submit Screen"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 20
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 88
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    .line 89
    const/16 v2, 0x3e9

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 91
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->getCropIntent(Z)Landroid/content/Intent;

    move-result-object v16

    .line 93
    .local v16, intent:Landroid/content/Intent;
    const/16 v17, 0x0

    .line 95
    .local v17, isInErrorMode:Z
    :try_start_0
    const-string v2, "com.android.camera"

    const-string v5, "com.android.camera.CropImage"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const/16 v2, 0x3ea

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    if-eqz v17, :cond_0

    .line 114
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->getCropIntent(Z)Landroid/content/Intent;

    move-result-object v16

    .line 116
    const/16 v2, 0x3ea

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 175
    .end local v16           #intent:Landroid/content/Intent;
    .end local v17           #isInErrorMode:Z
    :cond_0
    :goto_1
    return-void

    .line 97
    .restart local v16       #intent:Landroid/content/Intent;
    .restart local v17       #isInErrorMode:Z
    :catch_0
    move-exception v11

    .line 100
    .local v11, e1:Landroid/content/ActivityNotFoundException;
    :try_start_2
    const-string v2, "com.android.gallery"

    const-string v5, "com.android.camera.CropImage"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const/16 v2, 0x3ea

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 102
    :catch_1
    move-exception v12

    .line 104
    .local v12, e2:Landroid/content/ActivityNotFoundException;
    :try_start_3
    const-string v2, "com.android.gallery3d"

    const-string v5, "com.android.gallery3d.app.CropImage"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const/16 v2, 0x3ea

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 106
    :catch_2
    move-exception v10

    .line 107
    .local v10, e:Landroid/content/ActivityNotFoundException;
    const/16 v17, 0x1

    goto :goto_0

    .line 117
    .end local v10           #e:Landroid/content/ActivityNotFoundException;
    .end local v11           #e1:Landroid/content/ActivityNotFoundException;
    .end local v12           #e2:Landroid/content/ActivityNotFoundException;
    :catch_3
    move-exception v10

    .line 119
    .restart local v10       #e:Landroid/content/ActivityNotFoundException;
    invoke-direct/range {p0 .. p0}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->onPhotoAcquired()V

    goto :goto_1

    .line 123
    .end local v10           #e:Landroid/content/ActivityNotFoundException;
    .end local v16           #intent:Landroid/content/Intent;
    .end local v17           #isInErrorMode:Z
    :cond_1
    const/16 v2, 0x3ea

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 124
    if-eqz p3, :cond_3

    .line 125
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_imageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v14, f:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 129
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 130
    .local v13, extras:Landroid/os/Bundle;
    if-eqz v13, :cond_0

    .line 131
    const-string v2, "data"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/graphics/Bitmap;

    .line 134
    .local v19, photo:Landroid/graphics/Bitmap;
    :try_start_4
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_imageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 135
    .local v18, out:Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 136
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 137
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 140
    invoke-direct/range {p0 .. p0}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->onPhotoAcquired()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_1

    .line 141
    .end local v18           #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v10

    .line 142
    .local v10, e:Ljava/io/FileNotFoundException;
    invoke-direct/range {p0 .. p0}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->onErrorTakingPhoto()V

    goto/16 :goto_1

    .line 143
    .end local v10           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v10

    .line 144
    .local v10, e:Ljava/io/IOException;
    invoke-direct/range {p0 .. p0}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->onErrorTakingPhoto()V

    goto/16 :goto_1

    .line 148
    .end local v10           #e:Ljava/io/IOException;
    .end local v13           #extras:Landroid/os/Bundle;
    .end local v14           #f:Ljava/io/File;
    .end local v19           #photo:Landroid/graphics/Bitmap;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->onPhotoAcquired()V

    goto/16 :goto_1

    .line 150
    :cond_4
    const/16 v2, 0x3eb

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 152
    .local v3, selectedImage:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_data"

    aput-object v5, v4, v2

    .line 154
    .local v4, filePathColumn:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 155
    .local v9, cursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 157
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 158
    .local v8, columnIndex:I
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 159
    .local v15, filePath:Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 162
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_imageUri:Landroid/net/Uri;

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->onPhotoAcquired()V

    goto/16 :goto_1

    .line 165
    .end local v3           #selectedImage:Landroid/net/Uri;
    .end local v4           #filePathColumn:[Ljava/lang/String;
    .end local v8           #columnIndex:I
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v15           #filePath:Ljava/lang/String;
    :cond_5
    invoke-super/range {p0 .. p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 168
    :cond_6
    const/16 v2, 0x3eb

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    .line 169
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_imageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .restart local v14       #f:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-direct/range {p0 .. p0}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->onPhotoAcquired()V

    goto/16 :goto_1
.end method

.method protected onCamera()V
    .locals 6

    .prologue
    .line 246
    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v3}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->canPost()Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v4}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getApplicationNameForMail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    sget v5, Lcom/lilkillaware/fbapptemplate/R$string;->cannot_post_message:I

    invoke-virtual {v4, v5}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/lilkillaware/fbapptemplate/util/DialogHelper;->showInfoMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .end local v1           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    const-string v4, "button_camera"

    invoke-virtual {v3, v4}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->gaTrackButtonClick(Ljava/lang/String;)V

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->getOutputMediaFile()Ljava/io/File;

    move-result-object v2

    .line 256
    .local v2, photoFolder:Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_imageUri:Landroid/net/Uri;

    .line 258
    const-string v3, "output"

    iget-object v4, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_imageUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 265
    const/16 v3, 0x3ea

    invoke-virtual {p0, v0, v3}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "parent"
    .parameter "savedInstanceState"

    .prologue
    .line 58
    sget v1, Lcom/lilkillaware/fbapptemplate/R$layout;->fragment_submit:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, view:Landroid/view/View;
    sget v1, Lcom/lilkillaware/fbapptemplate/R$id;->ib_gallery:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment$1;

    invoke-direct {v2, p0}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment$1;-><init>(Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget v1, Lcom/lilkillaware/fbapptemplate/R$id;->ib_upload:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment$2;

    invoke-direct {v2, p0}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment$2;-><init>(Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget v1, Lcom/lilkillaware/fbapptemplate/R$id;->ib_camera:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment$3;

    invoke-direct {v2, p0}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment$3;-><init>(Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    sget v1, Lcom/lilkillaware/fbapptemplate/R$id;->iv_photo_for_upload:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_ivPhotoForUpload:Landroid/widget/ImageView;

    .line 66
    return-object v0
.end method

.method protected onGallery()V
    .locals 5

    .prologue
    .line 207
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v2}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->canPost()Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v3}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getApplicationNameForMail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    sget v4, Lcom/lilkillaware/fbapptemplate/R$string;->cannot_post_message:I

    invoke-virtual {v3, v4}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/lilkillaware/fbapptemplate/util/DialogHelper;->showInfoMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .end local v0           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    const-string v3, "button_gallery"

    invoke-virtual {v2, v3}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->gaTrackButtonClick(Ljava/lang/String;)V

    .line 214
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, photoPickerIntent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const/16 v2, 0x3eb

    invoke-virtual {p0, v1, v2}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 81
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getGaTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    .line 82
    .local v0, gaTracker:Lcom/google/analytics/tracking/android/Tracker;
    const-string v1, "&cd"

    const-string v2, "Submit Screen"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/google/analytics/tracking/android/MapBuilder;->createAppView()Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 84
    return-void
.end method

.method protected onUpload()V
    .locals 4

    .prologue
    .line 220
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v1}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->canPost()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    invoke-virtual {v2}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->getApplicationNameForMail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    sget v3, Lcom/lilkillaware/fbapptemplate/R$string;->cannot_post_message:I

    invoke-virtual {v2, v3}, Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/lilkillaware/fbapptemplate/util/DialogHelper;->showInfoMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .end local v0           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_imageUriForUpload:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    const-string v2, "Please select photo for upload"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    const-string v2, "button_upload"

    invoke-virtual {v1, v2}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->gaTrackButtonClick(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_app:Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;

    const-string v2, "click picture upload"

    invoke-virtual {v1, v2}, Lcom/lilkillaware/fbapptemplate/FBAppTemplateApplication;->gaTrackButtonClick2(Ljava/lang/String;)V

    .line 233
    new-instance v1, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_activity:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;-><init>(Lcom/lilkillaware/fbapptemplate/activities/MainActivity;Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V

    iget-object v2, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->_imageUriForUpload:Landroid/net/Uri;

    new-instance v3, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment$4;

    invoke-direct {v3, p0}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment$4;-><init>(Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->postPhoto(Landroid/net/Uri;Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$PhotoUploadCallback;)V

    goto :goto_0
.end method
