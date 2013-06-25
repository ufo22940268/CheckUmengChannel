.class public Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "TaobaoImportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static REDIRECT_URL:Ljava/lang/String;

.field private static TAOBAO_AUTHORIZE_URL:Ljava/lang/String;


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "http://121.196.129.4/login.ashx?redirect_url=%1$s"

    sput-object v0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->TAOBAO_AUTHORIZE_URL:Ljava/lang/String;

    .line 31
    const-string v0, "http://www.51zhangdan.com/share/taobao/index.html?user_id=%1$s&token=%2$s"

    sput-object v0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->REDIRECT_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private initWebView(Lcom/zhangdan/app/data/model/UserInfo;)V
    .locals 8
    .parameter "userInfo"

    .prologue
    const/4 v6, 0x1

    .line 82
    iget-object v5, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 83
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 84
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 86
    iget-object v5, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v6, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity$1;

    invoke-direct {v6, p0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity$1;-><init>(Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 96
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, userId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, token:Ljava/lang/String;
    sget-object v5, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->REDIRECT_URL:Ljava/lang/String;

    const-string v6, "%1$s"

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%2$s"

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, redirectUrl:Ljava/lang/String;
    sget-object v5, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->TAOBAO_AUTHORIZE_URL:Ljava/lang/String;

    const-string v6, "%1$s"

    invoke-static {v0}, Lcom/zhangdan/app/util/URIEncodingUtil;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, url:Ljava/lang/String;
    const-string v5, "TaobaoImportActivity"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v5, "TaobaoImportActivity"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v5, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 103
    iget-object v5, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v6, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity$2;

    invoke-direct {v6, p0, v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity$2;-><init>(Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 115
    iget-object v5, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 116
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090039

    if-ne v1, v2, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->finish()V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090120

    if-ne v1, v2, :cond_0

    .line 61
    const v1, 0x7f09011f

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 63
    const v1, 0x7f090122

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v0

    .line 66
    .local v0, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->initWebView(Lcom/zhangdan/app/data/model/UserInfo;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->setContentView(I)V

    .line 40
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070177

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/CommTitleMgr;->displayBlueTitle(Landroid/view/View;I)V

    .line 41
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v0, 0x7f090121

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->mWebView:Landroid/webkit/WebView;

    .line 44
    const v0, 0x7f090120

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 120
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 121
    new-instance v0, Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    const v1, 0x7f070178

    const v2, 0x7f0c0021

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogContent(II)V

    .line 123
    const v1, 0x7f0700bf

    new-instance v2, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity$3;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity$3;-><init>(Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogButton(ILandroid/view/View$OnClickListener;)V

    .line 137
    .end local v0           #dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 75
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->mWebView:Landroid/webkit/WebView;

    .line 79
    :cond_0
    return-void
.end method
