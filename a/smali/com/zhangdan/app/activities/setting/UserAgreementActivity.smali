.class public Lcom/zhangdan/app/activities/setting/UserAgreementActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "UserAgreementActivity.java"


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v1, 0x7f030045

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;->setContentView(I)V

    .line 26
    const v1, 0x7f09003c

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    const v1, 0x7f090121

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;->mWebView:Landroid/webkit/WebView;

    .line 29
    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, channel:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    invoke-static {v0}, Lcom/zhangdan/app/util/URIEncodingUtil;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/user_agreement.htm"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/zhangdan/app/activities/setting/UserAgreementActivity$1;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/setting/UserAgreementActivity$1;-><init>(Lcom/zhangdan/app/activities/setting/UserAgreementActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 48
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;->mWebView:Landroid/webkit/WebView;

    .line 52
    :cond_0
    return-void
.end method
