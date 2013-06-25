.class public Lcom/zhangdan/banka/kh/BankaMainActivity;
.super Lcom/zhangdan/banka/activities/BankaActivity;
.source "BankaMainActivity.java"


# static fields
.field public static final EXTRA_KEY_FROM:Ljava/lang/String; = "from"


# instance fields
.field private mFromType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/zhangdan/banka/activities/BankaActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0}, Lcom/zhangdan/banka/kh/BankaMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/banka/kh/BankaMainActivity;->mFromType:I

    .line 21
    invoke-super {p0, p1}, Lcom/zhangdan/banka/activities/BankaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    iget v0, p0, Lcom/zhangdan/banka/kh/BankaMainActivity;->mFromType:I

    if-nez v0, :cond_0

    .line 23
    invoke-static {v2}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateOnlyWifi(Z)V

    .line 24
    invoke-static {p0}, Lcom/umeng/update/UmengUpdateAgent;->update(Landroid/content/Context;)V

    .line 26
    :cond_0
    return-void
.end method

.method public setLoadingBg(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "imageView"

    .prologue
    .line 30
    sget v0, Lcom/zhangdan/banka/kh/R$drawable;->banka_splash_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 31
    return-void
.end method

.method public setWebviewUrl(Landroid/webkit/WebView;)V
    .locals 5
    .parameter "webView"

    .prologue
    .line 36
    const-string v1, "http://www.51zhangdan.com/www_bk/index.html?v=@1&chanelid=@2&app=@3"

    .line 37
    .local v1, url:Ljava/lang/String;
    invoke-static {p0}, Lcom/zhangdan/banka/utils/CommonMethod;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/banka/utils/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, version:Ljava/lang/String;
    invoke-static {p0}, Lcom/zhangdan/banka/utils/CommonMethod;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/banka/utils/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, channel:Ljava/lang/String;
    const-string v3, "@1"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@2"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 40
    iget v3, p0, Lcom/zhangdan/banka/kh/BankaMainActivity;->mFromType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 41
    const-string v3, "@3"

    const-string v4, "21"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&from=ccm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    :goto_0
    const-string v3, "Banka"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 48
    return-void

    .line 44
    :cond_0
    const-string v3, "@3"

    const-string v4, "20"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
