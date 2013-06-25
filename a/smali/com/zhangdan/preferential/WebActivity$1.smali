.class Lcom/zhangdan/preferential/WebActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/WebActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/WebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/zhangdan/preferential/WebActivity$1;->this$0:Lcom/zhangdan/preferential/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "view"
    .parameter "progress"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zhangdan/preferential/WebActivity$1;->this$0:Lcom/zhangdan/preferential/WebActivity;

    #getter for: Lcom/zhangdan/preferential/WebActivity;->mProgressView:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/zhangdan/preferential/WebActivity;->access$200(Lcom/zhangdan/preferential/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 81
    return-void
.end method
