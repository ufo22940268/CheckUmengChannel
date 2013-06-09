.class public Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/tencent/weibo/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;)Lcom/tencent/weibo/d/a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->a:Lcom/tencent/weibo/d/a;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "oauth"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tencent/weibo/d/a;

    iput-object v0, p0, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->a:Lcom/tencent/weibo/d/a;

    iget-object v0, p0, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->a:Lcom/tencent/weibo/d/a;

    invoke-static {v0}, Lcom/tencent/weibo/d/b;->a(Lcom/tencent/weibo/d/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/weibo/webview/b;

    invoke-direct {v0, p0}, Lcom/tencent/weibo/webview/b;-><init>(Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
