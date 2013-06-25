.class public Lcom/zhangdan/app/img/AvatarHandler;
.super Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;
.source "AvatarHandler.java"

# interfaces
.implements Lcom/zhangdan/app/img/AbstractPhotoSelectHandler$OnImageSelectedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const/16 v3, 0x64

    .line 36
    new-instance v2, Ljava/io/File;

    const-string v0, "avatar"

    invoke-static {v0}, Lcom/zhangdan/app/img/FileCache;->getAvatarCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/zhangdan/app/img/AvatarHandler;->generatePhotoName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/zhangdan/app/img/AbstractPhotoSelectHandler;-><init>(Landroid/app/Activity;Ljava/io/File;IIZ)V

    .line 37
    invoke-virtual {p0, p0}, Lcom/zhangdan/app/img/AvatarHandler;->setOnImageSelectedListener(Lcom/zhangdan/app/img/AbstractPhotoSelectHandler$OnImageSelectedListener;)V

    .line 38
    return-void
.end method

.method public static loadAvatar(Landroid/content/Context;Lcom/zhangdan/app/widget/AvatarView;)V
    .locals 8
    .parameter "context"
    .parameter "avatar"

    .prologue
    const/4 v7, 0x0

    .line 72
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getAvatarUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, avatarUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 74
    const-string v6, "http"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->getImageLoader()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v4

    .line 76
    .local v4, imageManager:Lcom/novoda/imageloader/core/ImageManager;
    const v6, 0x7f020093

    invoke-static {p0, v6}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(Landroid/content/Context;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v5

    .line 77
    .local v5, imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/zhangdan/app/widget/AvatarView;->setTag(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v4}, Lcom/novoda/imageloader/core/ImageManager;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 96
    .end local v4           #imageManager:Lcom/novoda/imageloader/core/ImageManager;
    .end local v5           #imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 80
    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->getImageLoader()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v4

    .line 81
    .restart local v4       #imageManager:Lcom/novoda/imageloader/core/ImageManager;
    invoke-virtual {v4}, Lcom/novoda/imageloader/core/ImageManager;->getCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v2

    .line 82
    .local v2, cacheManager:Lcom/novoda/imageloader/core/cache/CacheManager;
    invoke-interface {v2, v0, v7, v7}, Lcom/novoda/imageloader/core/cache/CacheManager;->get(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 83
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {p1, v1}, Lcom/zhangdan/app/widget/AvatarView;->setAvatar(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 87
    :cond_2
    :try_start_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 88
    invoke-interface {v2, v0, v1}, Lcom/novoda/imageloader/core/cache/CacheManager;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 89
    invoke-virtual {p1, v1}, Lcom/zhangdan/app/widget/AvatarView;->setAvatar(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v3

    .line 91
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onInageSelected(Landroid/content/Intent;Ljava/io/File;)V
    .locals 5
    .parameter "data"
    .parameter "file"

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    const-string v3, "MenuTopView"

    const-string v4, "\u83b7\u53d6\u526a\u5207\u7684\u56fe\u5931\u8d25111..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 46
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 47
    const-string v3, "MenuTopView"

    const-string v4, "\u6210\u529f\u83b7\u53d6\u526a\u5207\u7684\u56fe..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v3, "data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 49
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 50
    const-string v3, "MenuTopView"

    const-string v4, "bmp is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v0, p2}, Lcom/zhangdan/app/img/AvatarHandler;->saveCroppedImage(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 54
    iget-object v3, p0, Lcom/zhangdan/app/img/AvatarHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setAvatarUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.zhangdan.app.download_avatar"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v3, p0, Lcom/zhangdan/app/img/AvatarHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 60
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    const-string v3, "MenuTopView"

    const-string v4, "\u83b7\u53d6\u526a\u5207\u7684\u56fe\u5931\u8d25222..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
