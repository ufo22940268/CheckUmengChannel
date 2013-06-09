.class final Lcom/zhangdan/app/activities/remark/l;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/l;->a:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/l;->a:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    const v1, 0x7f06011a

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
