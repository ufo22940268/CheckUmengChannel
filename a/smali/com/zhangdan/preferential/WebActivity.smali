.class public abstract Lcom/zhangdan/preferential/WebActivity;
.super Lcom/zhangdan/preferential/BaseActivity;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/WebActivity$RedirectWebViewClient;
    }
.end annotation


# instance fields
.field private mChromeClient:Landroid/webkit/WebChromeClient;

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/zhangdan/preferential/BaseActivity;-><init>()V

    .line 77
    new-instance v0, Lcom/zhangdan/preferential/WebActivity$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/WebActivity$1;-><init>(Lcom/zhangdan/preferential/WebActivity;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/WebActivity;->mChromeClient:Landroid/webkit/WebChromeClient;

    return-void
.end method

.method static synthetic access$100(Lcom/zhangdan/preferential/WebActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zhangdan/preferential/WebActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/preferential/WebActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zhangdan/preferential/WebActivity;->mProgressView:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method protected configureWebView(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "web"

    .prologue
    .line 57
    return-void
.end method

.method protected abstract getFrameTitle()Ljava/lang/String;
.end method

.method protected abstract getUrl()Ljava/lang/String;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 72
    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/WebActivity;->finish()V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x7f090037
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "saved"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/zhangdan/preferential/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f03010f

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/WebActivity;->setContentView(I)V

    .line 39
    const v1, 0x7f090346

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/zhangdan/preferential/WebActivity;->mWebView:Landroid/webkit/WebView;

    .line 41
    iget-object v1, p0, Lcom/zhangdan/preferential/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 42
    .local v0, webSettings:Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 43
    iget-object v1, p0, Lcom/zhangdan/preferential/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/WebActivity;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/zhangdan/preferential/WebActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/zhangdan/preferential/WebActivity$RedirectWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zhangdan/preferential/WebActivity$RedirectWebViewClient;-><init>(Lcom/zhangdan/preferential/WebActivity;Lcom/zhangdan/preferential/WebActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 45
    iget-object v1, p0, Lcom/zhangdan/preferential/WebActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/zhangdan/preferential/WebActivity;->mChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 47
    const v1, 0x7f0902f5

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/WebActivity;->getFrameTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v1, 0x7f090037

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v1, 0x7f090345

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/zhangdan/preferential/WebActivity;->mProgressView:Landroid/widget/ProgressBar;

    .line 51
    iget-object v1, p0, Lcom/zhangdan/preferential/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/WebActivity;->configureWebView(Landroid/webkit/WebView;)V

    .line 52
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/zhangdan/preferential/BaseActivity;->onPause()V

    .line 87
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/ViewUtils;->setReturnTransition(Landroid/app/Activity;)V

    .line 88
    return-void
.end method
