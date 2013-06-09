.class public Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# instance fields
.field private e:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://121.196.129.4/login.ashx?redirect_url=%1$s"

    sput-object v0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->c:Ljava/lang/String;

    const-string v0, "http://www.51zhangdan.com/share/taobao/index.html?user_id=%1$s&token=%2$s"

    sput-object v0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->e:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060039

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060118

    if-ne v0, v1, :cond_0

    const v0, 0x7f060117

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    const v0, 0x7f06011a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->e:Landroid/webkit/WebView;

    new-instance v2, Lcom/zhangdan/app/activities/remark/l;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/remark/l;-><init>(Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->d:Ljava/lang/String;

    const-string v3, "%1$s"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2$s"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->c:Ljava/lang/String;

    const-string v2, "%1$s"

    invoke-static {v0}, Lcom/zhangdan/app/h/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->e:Landroid/webkit/WebView;

    new-instance v2, Lcom/zhangdan/app/activities/remark/m;

    invoke-direct {v2, p0, v0}, Lcom/zhangdan/app/activities/remark/m;-><init>(Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->setContentView(I)V

    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080170

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/d;->a(Landroid/view/View;I)V

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060119

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->e:Landroid/webkit/WebView;

    const v0, 0x7f060118

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/zhangdan/app/widget/a;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080171

    const v2, 0x7f0a0021

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/widget/a;->a(II)V

    const v1, 0x7f0800ba

    new-instance v2, Lcom/zhangdan/app/activities/remark/n;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/remark/n;-><init>(Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/widget/a;->a(ILandroid/view/View$OnClickListener;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->e:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method
