.class public Lcom/zhangdan/app/activities/repay/SetUnPaidDialog;
.super Lcom/zhangdan/app/widget/CustomAlertDialog;
.source "SetUnPaidDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V
    .locals 4
    .parameter "context"
    .parameter "userBankInfo"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/zhangdan/app/widget/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 20
    const v0, 0x7f0700d8

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c0024

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/repay/SetUnPaidDialog;->setDialogContent(Ljava/lang/String;I)V

    .line 21
    const v0, 0x7f0700d4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0700d3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/app/activities/repay/SetUnPaidDialog$1;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/repay/SetUnPaidDialog$1;-><init>(Lcom/zhangdan/app/activities/repay/SetUnPaidDialog;)V

    new-instance v3, Lcom/zhangdan/app/activities/repay/SetUnPaidDialog$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/zhangdan/app/activities/repay/SetUnPaidDialog$2;-><init>(Lcom/zhangdan/app/activities/repay/SetUnPaidDialog;Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zhangdan/app/activities/repay/SetUnPaidDialog;->setDialogButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method
