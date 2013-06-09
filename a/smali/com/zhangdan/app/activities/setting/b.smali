.class final Lcom/zhangdan/app/activities/setting/b;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/setting/AboutUsActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/setting/AboutUsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/b;->a:Lcom/zhangdan/app/activities/setting/AboutUsActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "http://www.51zhangdan.com/share/talk/index.htm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://www.51zhangdan.com/share/talk/index.htm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/b;->a:Lcom/zhangdan/app/activities/setting/AboutUsActivity;

    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/b;->a:Lcom/zhangdan/app/activities/setting/AboutUsActivity;

    invoke-static {v0, p2}, Lcom/zhangdan/app/h/d;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
