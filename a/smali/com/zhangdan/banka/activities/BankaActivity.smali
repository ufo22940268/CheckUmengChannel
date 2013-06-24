.class public abstract Lcom/zhangdan/banka/activities/BankaActivity;
.super Landroid/app/Activity;
.source "BankaActivity.java"

# interfaces
.implements Lcom/zhangdan/banka/img/AbstractPhotoSelectHandler$OnImageSelectedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field protected mComJs:Lcom/zhangdan/banka/view/ComJSInterface;

.field protected mImgBg:Landroid/widget/ImageView;

.field protected mImgQuality:I

.field protected mPhotoHandler:Lcom/zhangdan/banka/img/PhotoSelectHandler;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field protected mWebView:Lcom/zhangdan/banka/view/CustomWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initWebview()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mWebView:Lcom/zhangdan/banka/view/CustomWebView;

    new-instance v1, Lcom/zhangdan/banka/activities/BankaActivity$1;

    invoke-direct {v1, p0}, Lcom/zhangdan/banka/activities/BankaActivity$1;-><init>(Lcom/zhangdan/banka/activities/BankaActivity;)V

    invoke-virtual {v0, v1}, Lcom/zhangdan/banka/view/CustomWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 133
    return-void
.end method


# virtual methods
.method public hideDefaultImage()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 139
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mImgBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 141
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 95
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mPhotoHandler:Lcom/zhangdan/banka/img/PhotoSelectHandler;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mPhotoHandler:Lcom/zhangdan/banka/img/PhotoSelectHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zhangdan/banka/img/PhotoSelectHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mComJs:Lcom/zhangdan/banka/view/ComJSInterface;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mComJs:Lcom/zhangdan/banka/view/ComJSInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zhangdan/banka/view/ComJSInterface;->onActivityResult(IILandroid/content/Intent;)V

    .line 99
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mComJs:Lcom/zhangdan/banka/view/ComJSInterface;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mComJs:Lcom/zhangdan/banka/view/ComJSInterface;

    const-string v1, "onBackKeyPress"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/banka/view/ComJSInterface;->callbackJsMethod(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v0, Lcom/zhangdan/banka/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/zhangdan/banka/activities/BankaActivity;->setContentView(I)V

    .line 52
    sget v0, Lcom/zhangdan/banka/R$id;->CustomWebView_Main:I

    invoke-virtual {p0, v0}, Lcom/zhangdan/banka/activities/BankaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/banka/view/CustomWebView;

    iput-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mWebView:Lcom/zhangdan/banka/view/CustomWebView;

    .line 53
    sget v0, Lcom/zhangdan/banka/R$id;->ProgressBar_Main:I

    invoke-virtual {p0, v0}, Lcom/zhangdan/banka/activities/BankaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 54
    sget v0, Lcom/zhangdan/banka/R$id;->ImageView_Bg:I

    invoke-virtual {p0, v0}, Lcom/zhangdan/banka/activities/BankaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mImgBg:Landroid/widget/ImageView;

    .line 56
    invoke-direct {p0}, Lcom/zhangdan/banka/activities/BankaActivity;->initWebview()V

    .line 57
    new-instance v0, Lcom/zhangdan/banka/view/ComJSInterface;

    iget-object v1, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mWebView:Lcom/zhangdan/banka/view/CustomWebView;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/banka/view/ComJSInterface;-><init>(Lcom/zhangdan/banka/activities/BankaActivity;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mComJs:Lcom/zhangdan/banka/view/ComJSInterface;

    .line 58
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mWebView:Lcom/zhangdan/banka/view/CustomWebView;

    iget-object v1, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mComJs:Lcom/zhangdan/banka/view/ComJSInterface;

    const-string v2, "comjs"

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/banka/view/CustomWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mImgBg:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/zhangdan/banka/activities/BankaActivity;->setLoadingBg(Landroid/widget/ImageView;)V

    .line 61
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mWebView:Lcom/zhangdan/banka/view/CustomWebView;

    invoke-virtual {p0, v0}, Lcom/zhangdan/banka/activities/BankaActivity;->setWebviewUrl(Landroid/webkit/WebView;)V

    .line 62
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 83
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mComJs:Lcom/zhangdan/banka/view/ComJSInterface;

    invoke-virtual {v0}, Lcom/zhangdan/banka/view/ComJSInterface;->onDestroy()V

    .line 84
    iput-object v1, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mComJs:Lcom/zhangdan/banka/view/ComJSInterface;

    .line 85
    iput-object v1, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mPhotoHandler:Lcom/zhangdan/banka/img/PhotoSelectHandler;

    .line 86
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mWebView:Lcom/zhangdan/banka/view/CustomWebView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mWebView:Lcom/zhangdan/banka/view/CustomWebView;

    invoke-virtual {v0}, Lcom/zhangdan/banka/view/CustomWebView;->destroy()V

    .line 88
    iput-object v1, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mWebView:Lcom/zhangdan/banka/view/CustomWebView;

    .line 90
    :cond_0
    return-void
.end method

.method public onInageSelected(Landroid/content/Intent;Ljava/io/File;)V
    .locals 11
    .parameter "data"
    .parameter "file"

    .prologue
    .line 180
    if-nez p1, :cond_1

    .line 181
    const-string v8, "MainActivity"

    const-string v9, "\u83b7\u53d6\u526a\u5207\u7684\u56fe\u5931\u8d25111..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 184
    .local v2, bundle:Landroid/os/Bundle;
    if-eqz v2, :cond_4

    .line 185
    const-string v8, "MenuTopView"

    const-string v9, "\u6210\u529f\u83b7\u53d6\u526a\u5207\u7684\u56fe..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v8, "data"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 187
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    .line 188
    const-string v8, "MenuTopView"

    const-string v9, "bmp is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 192
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget v8, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mImgQuality:I

    if-nez v8, :cond_3

    const/16 v8, 0x64

    :goto_1
    invoke-virtual {v1, v9, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 193
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 194
    .local v3, dataArr:[B
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 196
    .local v6, obj:Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "type"

    const-string v9, "png"

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    new-instance v5, Ljava/lang/String;

    const/4 v8, 0x2

    invoke-static {v3, v8}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([B)V

    .line 198
    .local v5, img:Ljava/lang/String;
    const-string v8, "base64"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v5           #img:Ljava/lang/String;
    :goto_2
    const/4 v8, 0x0

    const-string v9, ""

    const-string v10, "Image"

    invoke-static {v8, v9, v10, v6}, Lcom/zhangdan/banka/utils/RespJsonUtil;->constructResp(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, str:Ljava/lang/String;
    iget-object v8, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mComJs:Lcom/zhangdan/banka/view/ComJSInterface;

    if-eqz v8, :cond_0

    .line 204
    iget-object v8, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mComJs:Lcom/zhangdan/banka/view/ComJSInterface;

    invoke-virtual {v8, v7}, Lcom/zhangdan/banka/view/ComJSInterface;->callbackSelectPhoto(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    .end local v3           #dataArr:[B
    .end local v6           #obj:Lorg/json/JSONObject;
    .end local v7           #str:Ljava/lang/String;
    :cond_3
    iget v8, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mImgQuality:I

    goto :goto_1

    .line 199
    .restart local v3       #dataArr:[B
    .restart local v6       #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 200
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 208
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #dataArr:[B
    .end local v4           #e:Lorg/json/JSONException;
    .end local v6           #obj:Lorg/json/JSONObject;
    :cond_4
    const-string v8, "MainActivity"

    const-string v9, "\u83b7\u53d6\u526a\u5207\u7684\u56fe\u5931\u8d25222..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 77
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public abstract setLoadingBg(Landroid/widget/ImageView;)V
.end method

.method public abstract setWebviewUrl(Landroid/webkit/WebView;)V
.end method

.method public showDefaultImage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mImgBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    return-void
.end method

.method public showGetPhotoDiaog(III)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "quality"

    .prologue
    .line 155
    invoke-static {}, Lcom/zhangdan/banka/utils/CommonMethod;->canUseSdCard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    sget v1, Lcom/zhangdan/banka/R$string;->no_sdcard:I

    invoke-virtual {p0, v1}, Lcom/zhangdan/banka/activities/BankaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zhangdan/banka/utils/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 159
    :cond_0
    iput p3, p0, Lcom/zhangdan/banka/activities/BankaActivity;->mImgQuality:I

    .line 160
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/zhangdan/banka/R$array;->banka_select_photo:I

    new-instance v2, Lcom/zhangdan/banka/activities/BankaActivity$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/zhangdan/banka/activities/BankaActivity$2;-><init>(Lcom/zhangdan/banka/activities/BankaActivity;II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
