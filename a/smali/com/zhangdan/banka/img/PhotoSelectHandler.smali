.class public Lcom/zhangdan/banka/img/PhotoSelectHandler;
.super Lcom/zhangdan/banka/img/AbstractPhotoSelectHandler;
.source "PhotoSelectHandler.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 6
    .parameter "activity"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v4, 0xc8

    .line 16
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/zhangdan/banka/img/FileCache;->getSdCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/zhangdan/banka/img/PhotoSelectHandler;->generatePhotoName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/zhangdan/banka/img/AbstractPhotoSelectHandler;-><init>(Landroid/app/Activity;Ljava/io/File;IIZ)V

    .line 17
    return-void

    :cond_0
    move v3, p2

    .line 16
    goto :goto_0

    :cond_1
    move v4, p3

    goto :goto_1
.end method
