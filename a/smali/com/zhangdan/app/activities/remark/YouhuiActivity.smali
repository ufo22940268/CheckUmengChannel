.class public Lcom/zhangdan/app/activities/remark/YouhuiActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "YouhuiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_KEY_BANK_ID:Ljava/lang/String; = "bank_id"

.field public static final EXTRA_KEY_WORD:Ljava/lang/String; = "keyword"

.field public static final EXTRA_KEY_YOUHUI_TYPE:Ljava/lang/String; = "youhui_type"

.field private static final URL_YOUHUI_CARD:Ljava/lang/String; = "http://www.51zhangdan.com/share/pre/card.html?platform=android&bank_id="

.field private static final URL_YOUHUI_STORE:Ljava/lang/String; = "http://www.51zhangdan.com/share/pre/prelist.html?platform=android&words="


# instance fields
.field private mBankId:I

.field private mKeyword:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private mYouhuiType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090123

    if-ne v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->finish()V

    .line 98
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f030046

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->setContentView(I)V

    .line 40
    const v1, 0x7f090121

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mWebView:Landroid/webkit/WebView;

    .line 41
    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 42
    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/zhangdan/app/activities/remark/YouhuiActivity$1;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/remark/YouhuiActivity$1;-><init>(Lcom/zhangdan/app/activities/remark/YouhuiActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 52
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, data:Landroid/content/Intent;
    const-string v1, "youhui_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mYouhuiType:I

    .line 54
    iget v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mYouhuiType:I

    if-nez v1, :cond_1

    .line 55
    const-string v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mKeyword:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mKeyword:Ljava/lang/String;

    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 57
    const-string v1, "keyword"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mKeyword:Ljava/lang/String;

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.51zhangdan.com/share/pre/prelist.html?platform=android&words="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mKeyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 60
    const-string v1, "YouhuiActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.51zhangdan.com/share/pre/prelist.html?platform=android&words="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mKeyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    const v1, 0x7f090123

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void

    .line 62
    :cond_1
    const-string v1, "bank_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mBankId:I

    .line 63
    iget v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mBankId:I

    if-nez v1, :cond_2

    .line 64
    const-string v1, "bank_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mBankId:I

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.51zhangdan.com/share/pre/card.html?platform=android&bank_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mBankId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 66
    const-string v1, "YouhuiActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.51zhangdan.com/share/pre/card.html?platform=android&bank_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mBankId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 87
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mWebView:Landroid/webkit/WebView;

    .line 91
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    const-string v0, "youhui_type"

    iget v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mYouhuiType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    iget v0, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mYouhuiType:I

    if-nez v0, :cond_0

    .line 78
    const-string v0, "keyword"

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mKeyword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v0, "bank_id"

    iget v1, p0, Lcom/zhangdan/app/activities/remark/YouhuiActivity;->mBankId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
