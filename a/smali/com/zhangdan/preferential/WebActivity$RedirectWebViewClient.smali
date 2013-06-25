.class Lcom/zhangdan/preferential/WebActivity$RedirectWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RedirectWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/WebActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/WebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/zhangdan/preferential/WebActivity$RedirectWebViewClient;->this$0:Lcom/zhangdan/preferential/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/WebActivity;Lcom/zhangdan/preferential/WebActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/WebActivity$RedirectWebViewClient;-><init>(Lcom/zhangdan/preferential/WebActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/zhangdan/preferential/WebActivity$RedirectWebViewClient;->this$0:Lcom/zhangdan/preferential/WebActivity;

    #getter for: Lcom/zhangdan/preferential/WebActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/zhangdan/preferential/WebActivity;->access$100(Lcom/zhangdan/preferential/WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x1

    return v0
.end method
