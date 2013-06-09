.class final Lcom/zhangdan/app/activities/remark/m;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/m;->a:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/remark/m;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/m;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/m;->a:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->showDialog(ILandroid/os/Bundle;)Z

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/m;->a:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->a(Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
