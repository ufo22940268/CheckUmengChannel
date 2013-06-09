.class public final Lcom/zhangdan/preferential/widget/e;
.super Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string v0, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/e;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/e;->setIndeterminate(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/e;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/e;->setCancelable(Z)V

    return-void
.end method
