.class public Lcom/zhangdan/preferential/utils/SendManager;
.super Ljava/lang/Object;
.source "SendManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/utils/SendManager$SendContent;
    }
.end annotation


# static fields
.field public static final INDEX_SMS:I = 0x0

.field public static final INDEX_WEIXIN:I = 0x1

.field public static final INDEX_WEIXIN_SHARE_TO_FRIEND:I = 0x2

.field public static final WHAT_SHARED_TO_WEIBO_FAILED:I = 0x1

.field public static final WHAT_SHARED_TO_WEIBO_SUCCESS:I


# instance fields
.field protected imageManager:Lcom/novoda/imageloader/core/ImageManager;

.field private mContext:Landroid/content/Context;

.field private mMainHandler:Landroid/os/Handler;

.field private mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;

.field public mWeixinApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/SendManager;->mMainHandler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/SendManager;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {p1}, Lcom/zhangdan/preferential/utils/CommonMethod;->initWeixin(Landroid/content/Context;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/SendManager;->mWeixinApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 55
    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->getImageLoader()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/SendManager;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    .line 56
    new-instance v0, Lcom/zhangdan/preferential/utils/WeiboManager;

    invoke-direct {v0, p1}, Lcom/zhangdan/preferential/utils/WeiboManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/SendManager;->mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;

    .line 57
    return-void
.end method

.method static synthetic access$200(Lcom/zhangdan/preferential/utils/SendManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/SendManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/preferential/utils/SendManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/SendManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private buildDialog(Lcom/zhangdan/preferential/utils/SendManager$SendContent;)Landroid/app/Dialog;
    .locals 6
    .parameter "content"

    .prologue
    .line 82
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/zhangdan/preferential/utils/SendManager;->mContext:Landroid/content/Context;

    const v3, 0x7f030054

    iget-object v4, p0, Lcom/zhangdan/preferential/utils/SendManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 86
    .local v1, adapter:Landroid/widget/ArrayAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/zhangdan/preferential/utils/SendManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/zhangdan/preferential/utils/SendManager$1;

    invoke-direct {v3, p0, p1}, Lcom/zhangdan/preferential/utils/SendManager$1;-><init>(Lcom/zhangdan/preferential/utils/SendManager;Lcom/zhangdan/preferential/utils/SendManager$SendContent;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 104
    .local v0, ad:Landroid/app/AlertDialog;
    return-object v0
.end method

.method private getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/SendManager;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/ImageManager;->getFileManager()Lcom/novoda/imageloader/core/file/FileManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/novoda/imageloader/core/file/FileManager;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private shareToWeibo(Lcom/zhangdan/preferential/utils/SendManager$SendContent;)V
    .locals 6
    .parameter "sc"

    .prologue
    .line 108
    new-instance v0, Lcom/weibo/sdk/android/api/StatusesAPI;

    iget-object v1, p0, Lcom/zhangdan/preferential/utils/SendManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zhangdan/preferential/utils/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/weibo/sdk/android/api/StatusesAPI;-><init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 109
    .local v0, sa:Lcom/weibo/sdk/android/api/StatusesAPI;
    #getter for: Lcom/zhangdan/preferential/utils/SendManager$SendContent;->smsContent:Ljava/lang/String;
    invoke-static {p1}, Lcom/zhangdan/preferential/utils/SendManager$SendContent;->access$000(Lcom/zhangdan/preferential/utils/SendManager$SendContent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/zhangdan/preferential/utils/SendManager$SendContent;->imageFilePath:Ljava/lang/String;

    const-string v3, "90.0"

    const-string v4, "90.0"

    new-instance v5, Lcom/zhangdan/preferential/utils/SendManager$2;

    invoke-direct {v5, p0}, Lcom/zhangdan/preferential/utils/SendManager$2;-><init>(Lcom/zhangdan/preferential/utils/SendManager;)V

    invoke-virtual/range {v0 .. v5}, Lcom/weibo/sdk/android/api/StatusesAPI;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 122
    return-void
.end method


# virtual methods
.method public buildDialog(Lcom/zhangdan/preferential/data/model/Promotion;Landroid/graphics/Bitmap;)Landroid/app/Dialog;
    .locals 4
    .parameter "prom"
    .parameter "bitmap"

    .prologue
    .line 69
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, cloneBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/zhangdan/preferential/utils/SendManager$SendContent;

    invoke-direct {v1, p0}, Lcom/zhangdan/preferential/utils/SendManager$SendContent;-><init>(Lcom/zhangdan/preferential/utils/SendManager;)V

    .line 71
    .local v1, sc:Lcom/zhangdan/preferential/utils/SendManager$SendContent;
    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/Promotion;->composeSendContent()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/zhangdan/preferential/utils/SendManager$SendContent;->smsContent:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/zhangdan/preferential/utils/SendManager$SendContent;->access$002(Lcom/zhangdan/preferential/utils/SendManager$SendContent;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    invoke-static {p1, v0}, Lcom/zhangdan/preferential/data/model/WeixinRequest;->build(Lcom/zhangdan/preferential/data/model/Promotion;Landroid/graphics/Bitmap;)Lcom/zhangdan/preferential/data/model/WeixinRequest;

    move-result-object v2

    #setter for: Lcom/zhangdan/preferential/utils/SendManager$SendContent;->wxRequest:Lcom/zhangdan/preferential/data/model/WeixinRequest;
    invoke-static {v1, v2}, Lcom/zhangdan/preferential/utils/SendManager$SendContent;->access$102(Lcom/zhangdan/preferential/utils/SendManager$SendContent;Lcom/zhangdan/preferential/data/model/WeixinRequest;)Lcom/zhangdan/preferential/data/model/WeixinRequest;

    .line 73
    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/Promotion;->imageUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/zhangdan/preferential/utils/SendManager;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zhangdan/preferential/utils/SendManager$SendContent;->imageFilePath:Ljava/lang/String;

    .line 74
    invoke-direct {p0, v1}, Lcom/zhangdan/preferential/utils/SendManager;->buildDialog(Lcom/zhangdan/preferential/utils/SendManager$SendContent;)Landroid/app/Dialog;

    move-result-object v2

    return-object v2
.end method

.method public buildDialog(Lcom/zhangdan/preferential/data/model/ShopExtra;Landroid/graphics/Bitmap;)Landroid/app/Dialog;
    .locals 4
    .parameter "extra"
    .parameter "bitmap"

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    .local v0, cloneBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/zhangdan/preferential/utils/SendManager$SendContent;

    invoke-direct {v1, p0}, Lcom/zhangdan/preferential/utils/SendManager$SendContent;-><init>(Lcom/zhangdan/preferential/utils/SendManager;)V

    .line 62
    .local v1, sc:Lcom/zhangdan/preferential/utils/SendManager$SendContent;
    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/ShopExtra;->composeSendContent()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/zhangdan/preferential/utils/SendManager$SendContent;->smsContent:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/zhangdan/preferential/utils/SendManager$SendContent;->access$002(Lcom/zhangdan/preferential/utils/SendManager$SendContent;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    invoke-static {p1, v0}, Lcom/zhangdan/preferential/data/model/WeixinRequest;->build(Lcom/zhangdan/preferential/data/model/ShopExtra;Landroid/graphics/Bitmap;)Lcom/zhangdan/preferential/data/model/WeixinRequest;

    move-result-object v2

    #setter for: Lcom/zhangdan/preferential/utils/SendManager$SendContent;->wxRequest:Lcom/zhangdan/preferential/data/model/WeixinRequest;
    invoke-static {v1, v2}, Lcom/zhangdan/preferential/utils/SendManager$SendContent;->access$102(Lcom/zhangdan/preferential/utils/SendManager$SendContent;Lcom/zhangdan/preferential/data/model/WeixinRequest;)Lcom/zhangdan/preferential/data/model/WeixinRequest;

    .line 64
    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->imageUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/zhangdan/preferential/utils/SendManager;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zhangdan/preferential/utils/SendManager$SendContent;->imageFilePath:Ljava/lang/String;

    .line 65
    invoke-direct {p0, v1}, Lcom/zhangdan/preferential/utils/SendManager;->buildDialog(Lcom/zhangdan/preferential/utils/SendManager$SendContent;)Landroid/app/Dialog;

    move-result-object v2

    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 136
    :goto_0
    return v0

    .line 127
    :pswitch_0
    iget-object v2, p0, Lcom/zhangdan/preferential/utils/SendManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0701a8

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v2, p0, Lcom/zhangdan/preferential/utils/SendManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0701a9

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
