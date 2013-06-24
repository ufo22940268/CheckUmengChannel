.class public Lcom/zhangdan/app/activities/setting/AboutUsActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "AboutUsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ABOUT_URL:Ljava/lang/String; = "http://www.51zhangdan.com/appabout.html?plat=android&goods=credit&edition="


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onAboutUsOptionSelected()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 82
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700b8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090039

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 102
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700b8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v3, 0x7f030045

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->setContentView(I)V

    .line 35
    const v3, 0x7f09003c

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0700b8

    invoke-static {v3, v4}, Lcom/zhangdan/app/activities/CommTitleMgr;->displayBlueTitle(Landroid/view/View;I)V

    .line 36
    const v3, 0x7f090039

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v3, 0x7f090121

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    .line 39
    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, channel:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 41
    invoke-static {v0}, Lcom/zhangdan/app/util/URIEncodingUtil;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v3, "http://www.51zhangdan.com/appabout.html?plat=android&goods=credit&edition="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getPackageVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "&channelName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v2

    .line 46
    .local v2, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-eqz v2, :cond_1

    .line 47
    const-string v3, "&user_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    :cond_1
    iget-object v3, p0, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 51
    iget-object v3, p0, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    iget-object v3, p0, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/zhangdan/app/activities/setting/AboutUsActivity$1;

    invoke-direct {v4, p0}, Lcom/zhangdan/app/activities/setting/AboutUsActivity$1;-><init>(Lcom/zhangdan/app/activities/setting/AboutUsActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 63
    iget-object v3, p0, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/zhangdan/app/activities/setting/AboutUsActivity$2;

    invoke-direct {v4, p0}, Lcom/zhangdan/app/activities/setting/AboutUsActivity$2;-><init>(Lcom/zhangdan/app/activities/setting/AboutUsActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 91
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    .line 95
    :cond_0
    return-void
.end method
