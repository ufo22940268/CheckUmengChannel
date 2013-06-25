.class Lcom/zhangdan/app/activities/setting/AboutUsActivity$2;
.super Landroid/webkit/WebViewClient;
.source "AboutUsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/setting/AboutUsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/setting/AboutUsActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/setting/AboutUsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/AboutUsActivity$2;->this$0:Lcom/zhangdan/app/activities/setting/AboutUsActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    .line 66
    const-string v0, "http://www.51zhangdan.com/share/talk/index.htm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://www.51zhangdan.com/share/talk/index.htm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/AboutUsActivity$2;->this$0:Lcom/zhangdan/app/activities/setting/AboutUsActivity;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/setting/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    :goto_0
    return v2

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/AboutUsActivity$2;->this$0:Lcom/zhangdan/app/activities/setting/AboutUsActivity;

    invoke-static {v0, p2}, Lcom/zhangdan/app/util/CommonMethod;->launchBrowser(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
