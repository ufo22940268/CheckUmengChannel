.class Lcom/zhangdan/preferential/utils/RemotePhotoLoader$1;
.super Landroid/support/v4/util/LruCache;
.source "RemotePhotoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/preferential/utils/RemotePhotoLoader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;I)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$1;->this$0:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 69
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    return v0
.end method
