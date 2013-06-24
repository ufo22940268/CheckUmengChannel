.class public Lcom/zhangdan/app/img/PhotoSelectHandler;
.super Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;
.source "PhotoSelectHandler.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const/16 v3, 0xfa

    .line 28
    new-instance v2, Ljava/io/File;

    const-string v0, "bg"

    invoke-static {v0}, Lcom/zhangdan/app/img/FileCache;->getAvatarCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/zhangdan/app/img/PhotoSelectHandler;->generatePhotoName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;-><init>(Landroid/app/Activity;Ljava/io/File;IIZ)V

    .line 29
    return-void
.end method

.method public static displayMainPangeBg(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 10
    .parameter "context"
    .parameter "imgBg"

    .prologue
    const v9, 0x7f0200ea

    const/4 v8, 0x0

    .line 32
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getMainBgType(Landroid/content/Context;)I

    move-result v5

    .line 33
    .local v5, mainBgResType:I
    if-nez v5, :cond_1

    .line 34
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getMainBgRes(Landroid/content/Context;)I

    move-result v4

    .line 35
    .local v4, mainBgResId:I
    if-gtz v4, :cond_0

    .line 36
    const v4, 0x7f0200ea

    .line 37
    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    .end local v4           #mainBgResId:I
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getMainBgPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 40
    .local v6, path:Ljava/lang/String;
    invoke-static {}, Lcom/zhangdan/app/util/CommonMethod;->canUseSdCard()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v6}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 41
    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->getImageLoader()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v3

    .line 42
    .local v3, imageManager:Lcom/novoda/imageloader/core/ImageManager;
    invoke-virtual {v3}, Lcom/novoda/imageloader/core/ImageManager;->getCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v1

    .line 43
    .local v1, cacheManager:Lcom/novoda/imageloader/core/cache/CacheManager;
    invoke-interface {v1, v6, v8, v8}, Lcom/novoda/imageloader/core/cache/CacheManager;->get(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 46
    :try_start_0
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    invoke-interface {v1, v6, v0}, Lcom/novoda/imageloader/core/cache/CacheManager;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 47
    :catch_0
    move-exception v2

    .line 48
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 55
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 58
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #cacheManager:Lcom/novoda/imageloader/core/cache/CacheManager;
    .end local v3           #imageManager:Lcom/novoda/imageloader/core/ImageManager;
    :cond_4
    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
