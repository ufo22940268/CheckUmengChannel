.class public abstract Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;
.super Ljava/lang/Object;
.source "AbstractPhotoSelectHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/img/AbstractPhotoSelectHandler$OnImageSelectedListener;
    }
.end annotation


# static fields
.field private static final REQ_CODE_CROP_IMAGE:I = 0x66

.field private static final REQ_CODE_SELECT_PHOTO:I = 0x65

.field private static final REQ_CODE_TAKE_PHOTO:I = 0x64


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mCacheFile:Ljava/io/File;

.field protected mCropHeight:I

.field protected mCropWidth:I

.field private mOnImageSelectedListener:Lcom/zhangdan/app/img/AbstractPhotoSelectHandler$OnImageSelectedListener;

.field private mReturnData:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/io/File;IIZ)V
    .locals 0
    .parameter "activity"
    .parameter "cacheFile"
    .parameter "cropWidth"
    .parameter "cropHeight"
    .parameter "returnData"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mActivity:Landroid/app/Activity;

    .line 46
    iput-object p2, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mCacheFile:Ljava/io/File;

    .line 47
    iput p3, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mCropWidth:I

    .line 48
    iput p4, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mCropHeight:I

    .line 49
    iput-boolean p5, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mReturnData:Z

    .line 50
    return-void
.end method

.method private cropImage(Landroid/net/Uri;Ljava/io/File;II)V
    .locals 4
    .parameter "paramUri"
    .parameter "file"
    .parameter "outX"
    .parameter "outY"

    .prologue
    .line 114
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, localIntent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v2, "aspectX"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const-string v2, "aspectY"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string v2, "outputX"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v2, "outputY"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v2, "noFaceDetection"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    iget-boolean v2, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mReturnData:Z

    if-eqz v2, :cond_0

    .line 123
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    :goto_0
    const-string v2, "outputFormat"

    const-string v3, "JPEG"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v2, "output"

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 128
    iget-object v2, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x66

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 133
    .end local v1           #localIntent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 125
    .restart local v1       #localIntent:Landroid/content/Intent;
    :cond_0
    const-string v2, "return-data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v1           #localIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    iget-object v2, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mActivity:Landroid/app/Activity;

    const-string v3, "\u5f88\u62b1\u6b49\uff0c\u60a8\u7684\u624b\u673a\u4e0d\u652f\u6301\u56fe\u7247\u526a\u5207\u529f\u80fd!"

    invoke-static {v2, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static generatePhotoName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method

.method public static saveCroppedImage(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 5
    .parameter "bmp"
    .parameter "file"

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 144
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 145
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 151
    if-eqz v2, :cond_0

    .line 152
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 157
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 153
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 156
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 147
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 148
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    if-eqz v1, :cond_1

    .line 152
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 153
    :catch_2
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 151
    :goto_2
    if-eqz v1, :cond_2

    .line 152
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 155
    :cond_2
    :goto_3
    throw v3

    .line 153
    :catch_3
    move-exception v0

    .line 154
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 150
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 147
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/zhangdan/app/ZhangdanApplication;->RUN_TO_BACKGROUND_TIME:J

    .line 58
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/16 v1, 0x64

    if-ne p1, v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mCacheFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mCacheFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mCacheFile:Ljava/io/File;

    iget v3, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mCropWidth:I

    iget v4, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mCropHeight:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->cropImage(Landroid/net/Uri;Ljava/io/File;II)V

    goto :goto_0

    .line 63
    :cond_2
    const/16 v1, 0x65

    if-ne p1, v1, :cond_3

    .line 64
    if-eqz p3, :cond_0

    .line 66
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 67
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mCacheFile:Ljava/io/File;

    iget v2, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mCropWidth:I

    iget v3, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mCropHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->cropImage(Landroid/net/Uri;Ljava/io/File;II)V

    goto :goto_0

    .line 70
    .end local v0           #uri:Landroid/net/Uri;
    :cond_3
    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mOnImageSelectedListener:Lcom/zhangdan/app/img/AbstractPhotoSelectHandler$OnImageSelectedListener;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mOnImageSelectedListener:Lcom/zhangdan/app/img/AbstractPhotoSelectHandler$OnImageSelectedListener;

    iget-object v2, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mCacheFile:Ljava/io/File;

    invoke-interface {v1, p3, v2}, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler$OnImageSelectedListener;->onInageSelected(Landroid/content/Intent;Ljava/io/File;)V

    goto :goto_0
.end method

.method public pickPhotoFromGallery()V
    .locals 4

    .prologue
    .line 83
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 84
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x65

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOnImageSelectedListener(Lcom/zhangdan/app/img/AbstractPhotoSelectHandler$OnImageSelectedListener;)V
    .locals 0
    .parameter "onImageSelectedListener"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mOnImageSelectedListener:Lcom/zhangdan/app/img/AbstractPhotoSelectHandler$OnImageSelectedListener;

    .line 54
    return-void
.end method

.method public takePhoto()V
    .locals 4

    .prologue
    .line 96
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 97
    .local v1, localIntent:Landroid/content/Intent;
    const-string v2, "output"

    iget-object v3, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mCacheFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    iget-object v2, p0, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x64

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1           #localIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
