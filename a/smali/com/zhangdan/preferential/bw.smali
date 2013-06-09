.class final Lcom/zhangdan/preferential/bw;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/WebActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/WebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/bw;->a:Lcom/zhangdan/preferential/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/WebActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/bw;-><init>(Lcom/zhangdan/preferential/WebActivity;)V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bw;->a:Lcom/zhangdan/preferential/WebActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/WebActivity;->b(Lcom/zhangdan/preferential/WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
