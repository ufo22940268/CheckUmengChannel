.class public Lcom/zhangdan/app/activities/setting/UserAgreementActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;


# instance fields
.field private c:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;->setContentView(I)V

    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f060119

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;->c:Landroid/webkit/WebView;

    invoke-static {p0}, Lcom/zhangdan/app/h/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/zhangdan/app/h/j;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;->c:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/user_agreement.htm"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/zhangdan/app/activities/setting/p;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/setting/p;-><init>(Lcom/zhangdan/app/activities/setting/UserAgreementActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;->c:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method
