.class Lcom/zhangdan/app/activities/mailimport/MailHelpActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "MailHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 41
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;

    const v1, 0x7f090122

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :cond_0
    return-void
.end method
