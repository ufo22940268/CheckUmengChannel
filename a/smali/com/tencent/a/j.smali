.class final Lcom/tencent/a/j;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/tencent/a/i;


# direct methods
.method private constructor <init>(Lcom/tencent/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/j;->a:Lcom/tencent/a/i;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/a/i;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/a/j;-><init>(Lcom/tencent/a/i;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/a/i;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/a/i;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/a/i;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/a/j;->a:Lcom/tencent/a/i;

    invoke-static {v0}, Lcom/tencent/a/i;->d(Lcom/tencent/a/i;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Webview loading URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/tencent/a/n;->a()V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/tencent/a/i;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/a/i;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/a/i;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/a/j;->a:Lcom/tencent/a/i;

    invoke-static {v0}, Lcom/tencent/a/i;->e(Lcom/tencent/a/i;)Lcom/tencent/a/l;

    move-result-object v0

    new-instance v1, Lcom/tencent/tauth/d;

    invoke-direct {v1, p2, p3, p4}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/a/l;->a(Lcom/tencent/tauth/d;)V

    invoke-static {}, Lcom/tencent/a/i;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/a/i;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/a/i;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\u6216\u7cfb\u7edf\u9519\u8bef"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/a/j;->a:Lcom/tencent/a/i;

    invoke-virtual {v0}, Lcom/tencent/a/i;->dismiss()V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Redirect URL: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/tencent/a/n;->a()V

    const-string v0, "auth://browser"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/tencent/a/n;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/a/j;->a:Lcom/tencent/a/i;

    iget-object v3, p0, Lcom/tencent/a/j;->a:Lcom/tencent/a/i;

    invoke-static {v3}, Lcom/tencent/a/i;->a(Lcom/tencent/a/i;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/a/i;->a(Lcom/tencent/a/i;Z)Z

    iget-object v2, p0, Lcom/tencent/a/j;->a:Lcom/tencent/a/i;

    invoke-static {v2}, Lcom/tencent/a/i;->b(Lcom/tencent/a/i;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fall_to_wv"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/tencent/a/j;->a:Lcom/tencent/a/i;

    iget-object v0, p0, Lcom/tencent/a/j;->a:Lcom/tencent/a/i;

    invoke-static {v0}, Lcom/tencent/a/i;->c(Lcom/tencent/a/i;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const-string v0, "&"

    :goto_0
    invoke-static {v2, v0}, Lcom/tencent/a/i;->a(Lcom/tencent/a/i;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/a/j;->a:Lcom/tencent/a/i;

    const-string v2, "browser_error=1"

    invoke-static {v0, v2}, Lcom/tencent/a/i;->a(Lcom/tencent/a/i;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/a/j;->a:Lcom/tencent/a/i;

    invoke-static {v0}, Lcom/tencent/a/i;->d(Lcom/tencent/a/i;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/a/j;->a:Lcom/tencent/a/i;

    invoke-static {v2}, Lcom/tencent/a/i;->c(Lcom/tencent/a/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    :goto_1
    move v0, v1

    :goto_2
    return v0

    :cond_1
    const-string v0, "?"

    goto :goto_0

    :cond_2
    const-string v2, "redir"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/tencent/a/j;->a:Lcom/tencent/a/i;

    invoke-static {v2}, Lcom/tencent/a/i;->d(Lcom/tencent/a/i;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "auth://tauth.qq.com/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/a/j;->a:Lcom/tencent/a/i;

    invoke-static {v0}, Lcom/tencent/a/i;->e(Lcom/tencent/a/i;)Lcom/tencent/a/l;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/a/n;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/a/l;->a(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/tencent/a/j;->a:Lcom/tencent/a/i;

    invoke-virtual {v0}, Lcom/tencent/a/i;->dismiss()V

    move v0, v1

    goto :goto_2

    :cond_4
    const-string v0, "auth://cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/a/j;->a:Lcom/tencent/a/i;

    invoke-static {v0}, Lcom/tencent/a/i;->e(Lcom/tencent/a/i;)Lcom/tencent/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/l;->a()V

    iget-object v0, p0, Lcom/tencent/a/j;->a:Lcom/tencent/a/i;

    invoke-virtual {v0}, Lcom/tencent/a/i;->dismiss()V

    move v0, v1

    goto :goto_2

    :cond_5
    const-string v0, "auth://close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/a/j;->a:Lcom/tencent/a/i;

    invoke-virtual {v0}, Lcom/tencent/a/i;->dismiss()V

    move v0, v1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method
