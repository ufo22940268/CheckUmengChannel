.class public Lcom/zhangdan/app/activities/setting/TalkActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "TalkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private URL_TALK:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 22
    const-string v0, "http://www.51zhangdan.com/share/talk/index.html?user_id=%1$s&big_app_id=1&plat=android&token=%2$s"

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/TalkActivity;->URL_TALK:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090039

    if-ne v0, v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/TalkActivity;->finish()V

    .line 64
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v2, 0x7f030045

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/setting/TalkActivity;->setContentView(I)V

    .line 31
    const v2, 0x7f09003c

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/setting/TalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f070036

    invoke-static {v2, v3}, Lcom/zhangdan/app/activities/CommTitleMgr;->displayBlueTitle(Landroid/view/View;I)V

    .line 32
    const v2, 0x7f090039

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/setting/TalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v2, 0x7f090121

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/setting/TalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/zhangdan/app/activities/setting/TalkActivity;->mWebView:Landroid/webkit/WebView;

    .line 35
    iget-object v2, p0, Lcom/zhangdan/app/activities/setting/TalkActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    iget-object v2, p0, Lcom/zhangdan/app/activities/setting/TalkActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/zhangdan/app/activities/setting/TalkActivity$1;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/setting/TalkActivity$1;-><init>(Lcom/zhangdan/app/activities/setting/TalkActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 45
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/TalkActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v1

    .line 46
    .local v1, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    iget-object v2, p0, Lcom/zhangdan/app/activities/setting/TalkActivity;->URL_TALK:Ljava/lang/String;

    const-string v3, "%1$s"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%2$s"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, url:Ljava/lang/String;
    iget-object v2, p0, Lcom/zhangdan/app/activities/setting/TalkActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 53
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/TalkActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/TalkActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/TalkActivity;->mWebView:Landroid/webkit/WebView;

    .line 57
    :cond_0
    return-void
.end method
