.class public Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "MailHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final HELP_URL:Ljava/lang/String; = "http://www.51zhangdan.com/share/help/help.html"


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090039

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;->finish()V

    .line 63
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030045

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;->setContentView(I)V

    .line 30
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0700b9

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/CommTitleMgr;->displayDarkTitle(Landroid/view/View;I)V

    .line 31
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v0, 0x7f090121

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;->mWebView:Landroid/webkit/WebView;

    .line 34
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "http://www.51zhangdan.com/share/help/help.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 37
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity$1;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity$1;-><init>(Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 52
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;->mWebView:Landroid/webkit/WebView;

    .line 56
    :cond_0
    return-void
.end method
