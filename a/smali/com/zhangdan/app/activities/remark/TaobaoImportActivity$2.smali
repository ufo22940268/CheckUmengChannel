.class Lcom/zhangdan/app/activities/remark/TaobaoImportActivity$2;
.super Landroid/webkit/WebViewClient;
.source "TaobaoImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->initWebView(Lcom/zhangdan/app/data/model/UserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

.field final synthetic val$redirectUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity$2;->this$0:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity$2;->val$redirectUrl:Ljava/lang/String;

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

    .line 106
    const-string v0, "TaobaoImportActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity$2;->val$redirectUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity$2;->this$0:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 112
    :goto_0
    return v2

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity$2;->this$0:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    #getter for: Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->access$000(Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
