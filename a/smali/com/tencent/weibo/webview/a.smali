.class final Lcom/tencent/weibo/webview/a;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/weibo/webview/a;->a:Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "URL = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "checkType=verifycode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "checkType=verifycode&v="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x17

    add-int/lit8 v1, v0, 0x6

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/weibo/webview/a;->a:Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;

    invoke-static {v1}, Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;->a(Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;)Lcom/tencent/weibo/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/weibo/c/a;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "oauth"

    iget-object v2, p0, Lcom/tencent/weibo/webview/a;->a:Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;

    invoke-static {v2}, Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;->a(Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;)Lcom/tencent/weibo/c/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/weibo/webview/a;->a:Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroyDrawingCache()V

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/tencent/weibo/webview/a;->a:Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;

    invoke-virtual {v0}, Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;->finish()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://open.t.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_0
.end method
