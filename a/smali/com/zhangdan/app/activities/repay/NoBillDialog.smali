.class public Lcom/zhangdan/app/activities/repay/NoBillDialog;
.super Lcom/zhangdan/app/widget/CustomAlertDialog;
.source "NoBillDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V
    .locals 6
    .parameter "context"
    .parameter "data"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/zhangdan/app/widget/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 23
    const v2, 0x7f0700de

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0018

    invoke-virtual {p0, v2, v3}, Lcom/zhangdan/app/activities/repay/NoBillDialog;->setDialogContent(Ljava/lang/String;I)V

    .line 24
    const-string v1, ""

    .line 25
    .local v1, rightBtnText:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    const v2, 0x7f0700d7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    :goto_0
    const v2, 0x7f0700d5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, leftBtnText:Ljava/lang/String;
    new-instance v2, Lcom/zhangdan/app/activities/repay/NoBillDialog$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/zhangdan/app/activities/repay/NoBillDialog$1;-><init>(Lcom/zhangdan/app/activities/repay/NoBillDialog;Lcom/zhangdan/app/data/model/UserBankInfo;Landroid/content/Context;)V

    new-instance v3, Lcom/zhangdan/app/activities/repay/NoBillDialog$2;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/repay/NoBillDialog$2;-><init>(Lcom/zhangdan/app/activities/repay/NoBillDialog;)V

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/zhangdan/app/activities/repay/NoBillDialog;->setDialogButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 53
    return-void

    .line 28
    .end local v0           #leftBtnText:Ljava/lang/String;
    :cond_0
    const v2, 0x7f0700d6

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
