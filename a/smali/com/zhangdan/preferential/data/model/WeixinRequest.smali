.class public Lcom/zhangdan/preferential/data/model/WeixinRequest;
.super Ljava/lang/Object;
.source "WeixinRequest.java"


# static fields
.field private static final THUMB_SIZE:I = 0x64

.field public static final URL:Ljava/lang/String; = "http://www.51zhangdan.com"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFullName:Ljava/lang/String;

.field public mSharedToFriend:Z

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lcom/zhangdan/preferential/data/model/Promotion;Landroid/graphics/Bitmap;)Lcom/zhangdan/preferential/data/model/WeixinRequest;
    .locals 3
    .parameter "prom"
    .parameter "bitmap"

    .prologue
    .line 52
    new-instance v0, Lcom/zhangdan/preferential/data/model/WeixinRequest;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/WeixinRequest;-><init>()V

    .line 53
    .local v0, req:Lcom/zhangdan/preferential/data/model/WeixinRequest;
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/Promotion;->bankSimpleName:Ljava/lang/String;

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/WeixinRequest;->mFullName:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/Promotion;->remark:Ljava/lang/String;

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/WeixinRequest;->mAddress:Ljava/lang/String;

    .line 55
    iput-object p1, v0, Lcom/zhangdan/preferential/data/model/WeixinRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://youhui.51zhangdan.com/shop/activity.htm?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/data/model/Promotion;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/WeixinRequest;->mUrl:Ljava/lang/String;

    .line 57
    return-object v0
.end method

.method public static build(Lcom/zhangdan/preferential/data/model/ShopExtra;Landroid/graphics/Bitmap;)Lcom/zhangdan/preferential/data/model/WeixinRequest;
    .locals 3
    .parameter "shop"
    .parameter "bitmap"

    .prologue
    .line 43
    new-instance v0, Lcom/zhangdan/preferential/data/model/WeixinRequest;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/WeixinRequest;-><init>()V

    .line 44
    .local v0, req:Lcom/zhangdan/preferential/data/model/WeixinRequest;
    invoke-virtual {p0}, Lcom/zhangdan/preferential/data/model/ShopExtra;->getFullName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/WeixinRequest;->mFullName:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/ShopExtra;->address:Ljava/lang/String;

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/WeixinRequest;->mAddress:Ljava/lang/String;

    .line 46
    iput-object p1, v0, Lcom/zhangdan/preferential/data/model/WeixinRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://youhui.51zhangdan.com/shop/detail.htm?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/data/model/ShopExtra;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/WeixinRequest;->mUrl:Ljava/lang/String;

    .line 48
    return-object v0
.end method


# virtual methods
.method public send(Lcom/tencent/mm/sdk/openapi/IWXAPI;)V
    .locals 10
    .parameter "api"

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 22
    new-instance v4, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;

    invoke-direct {v4}, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;-><init>()V

    .line 23
    .local v4, webpage:Lcom/tencent/mm/sdk/openapi/WXWebpageObject;
    iget-object v5, p0, Lcom/zhangdan/preferential/data/model/WeixinRequest;->mUrl:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v0, v4}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;)V

    .line 25
    .local v0, msg:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zhangdan/preferential/data/model/WeixinRequest;->mFullName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-51\u4f18\u60e0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    .line 26
    iget-object v5, p0, Lcom/zhangdan/preferential/data/model/WeixinRequest;->mAddress:Ljava/lang/String;

    iput-object v5, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 27
    iget-object v5, p0, Lcom/zhangdan/preferential/data/model/WeixinRequest;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5, v9, v9, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 28
    .local v3, thumbBmp:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/zhangdan/preferential/data/model/WeixinRequest;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 29
    move-object v2, v3

    .line 30
    .local v2, thumb:Landroid/graphics/Bitmap;
    invoke-static {v2, v8}, Lcom/zhangdan/preferential/utils/CommonMethod;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v5

    iput-object v5, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    .line 32
    new-instance v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    .line 33
    .local v1, req:Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;
    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    .line 34
    iget-boolean v5, p0, Lcom/zhangdan/preferential/data/model/WeixinRequest;->mSharedToFriend:Z

    if-eqz v5, :cond_0

    .line 35
    iput v8, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    .line 39
    :goto_0
    invoke-interface {p1, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    .line 40
    return-void

    .line 37
    :cond_0
    iput v7, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    goto :goto_0
.end method
