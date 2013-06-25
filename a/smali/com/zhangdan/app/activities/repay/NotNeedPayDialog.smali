.class public Lcom/zhangdan/app/activities/repay/NotNeedPayDialog;
.super Lcom/zhangdan/app/widget/CustomAlertDialog;
.source "NotNeedPayDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V
    .locals 4
    .parameter "context"
    .parameter "userBankInfo"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/zhangdan/app/widget/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 22
    const v0, 0x7f0700da

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/repay/NotNeedPayDialog;->setDialogContent(Ljava/lang/String;I)V

    .line 23
    const v0, 0x7f0700d6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0700d5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/app/activities/repay/NotNeedPayDialog$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/zhangdan/app/activities/repay/NotNeedPayDialog$1;-><init>(Lcom/zhangdan/app/activities/repay/NotNeedPayDialog;Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V

    new-instance v3, Lcom/zhangdan/app/activities/repay/NotNeedPayDialog$2;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/repay/NotNeedPayDialog$2;-><init>(Lcom/zhangdan/app/activities/repay/NotNeedPayDialog;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zhangdan/app/activities/repay/NotNeedPayDialog;->setDialogButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method
