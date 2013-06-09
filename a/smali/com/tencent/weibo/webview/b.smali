.class final Lcom/tencent/weibo/webview/b;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/weibo/webview/b;->a:Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;

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

    const-string v0, "access_token="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "access_token="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/weibo/webview/b;->a:Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;

    invoke-static {v1}, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->a(Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;)Lcom/tencent/weibo/d/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/weibo/d/b;->a(Ljava/lang/String;Lcom/tencent/weibo/d/a;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "oauth"

    iget-object v2, p0, Lcom/tencent/weibo/webview/b;->a:Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;

    invoke-static {v2}, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->a(Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;)Lcom/tencent/weibo/d/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/weibo/webview/b;->a:Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroyDrawingCache()V

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/tencent/weibo/webview/b;->a:Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;

    invoke-virtual {v0}, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->finish()V

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
