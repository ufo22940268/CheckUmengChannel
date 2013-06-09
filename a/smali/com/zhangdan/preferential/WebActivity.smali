.class public abstract Lcom/zhangdan/preferential/WebActivity;
.super Lcom/zhangdan/preferential/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/webkit/WebChromeClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/preferential/BaseActivity;-><init>()V

    new-instance v0, Lcom/zhangdan/preferential/bv;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/bv;-><init>(Lcom/zhangdan/preferential/WebActivity;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/WebActivity;->c:Landroid/webkit/WebChromeClient;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/WebActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/WebActivity;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/preferential/WebActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/WebActivity;->a:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected a(Landroid/webkit/WebView;)V
    .locals 0

    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/WebActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f060037
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/zhangdan/preferential/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03010a

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/WebActivity;->setContentView(I)V

    const v0, 0x7f06033b

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/zhangdan/preferential/WebActivity;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/zhangdan/preferential/WebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/zhangdan/preferential/WebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/WebActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/WebActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/zhangdan/preferential/bw;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/bw;-><init>(Lcom/zhangdan/preferential/WebActivity;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/WebActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/zhangdan/preferential/WebActivity;->c:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const v0, 0x7f0602e9

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/WebActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f06033a

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zhangdan/preferential/WebActivity;->b:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/zhangdan/preferential/WebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/WebActivity;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/zhangdan/preferential/BaseActivity;->onPause()V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/z;->c(Landroid/app/Activity;)V

    return-void
.end method
