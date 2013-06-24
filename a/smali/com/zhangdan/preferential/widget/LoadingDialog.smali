.class public Lcom/zhangdan/preferential/widget/LoadingDialog;
.super Landroid/app/ProgressDialog;
.source "LoadingDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 22
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/LoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/LoadingDialog;->setIndeterminate(Z)V

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 26
    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/LoadingDialog;->setCancelable(Z)V

    .line 27
    return-void
.end method
