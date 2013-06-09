.class final Lcom/zhangdan/preferential/bv;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/WebActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/WebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/bv;->a:Lcom/zhangdan/preferential/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bv;->a:Lcom/zhangdan/preferential/WebActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/WebActivity;->a(Lcom/zhangdan/preferential/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
