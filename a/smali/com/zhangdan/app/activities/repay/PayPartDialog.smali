.class public Lcom/zhangdan/app/activities/repay/PayPartDialog;
.super Lcom/zhangdan/app/widget/CustomAlertDialog;
.source "PayPartDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V
    .locals 9
    .parameter "context"
    .parameter "userBankInfo"

    .prologue
    const v8, 0x7f0c0023

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 23
    invoke-direct {p0, p1}, Lcom/zhangdan/app/widget/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getMinPayment()F

    move-result v2

    .line 25
    .local v2, minPay:F
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getReturnAmount()F

    move-result v1

    .line 26
    .local v1, hasPaid:F
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "#0.00"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, format:Ljava/text/DecimalFormat;
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 28
    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    .line 29
    const v3, 0x7f0700db

    new-array v4, v4, [Ljava/lang/Object;

    float-to-double v5, v1

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v8}, Lcom/zhangdan/app/activities/repay/PayPartDialog;->setDialogContent(Ljava/lang/String;I)V

    .line 36
    :goto_0
    const v3, 0x7f0700d6

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0700d5

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/zhangdan/app/activities/repay/PayPartDialog$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/zhangdan/app/activities/repay/PayPartDialog$1;-><init>(Lcom/zhangdan/app/activities/repay/PayPartDialog;Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V

    new-instance v6, Lcom/zhangdan/app/activities/repay/PayPartDialog$2;

    invoke-direct {v6, p0}, Lcom/zhangdan/app/activities/repay/PayPartDialog$2;-><init>(Lcom/zhangdan/app/activities/repay/PayPartDialog;)V

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/zhangdan/app/activities/repay/PayPartDialog;->setDialogButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 54
    return-void

    .line 31
    :cond_0
    const v3, 0x7f0700dc

    new-array v4, v4, [Ljava/lang/Object;

    float-to-double v5, v1

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v8}, Lcom/zhangdan/app/activities/repay/PayPartDialog;->setDialogContent(Ljava/lang/String;I)V

    goto :goto_0

    .line 34
    :cond_1
    const v3, 0x7f0700dd

    new-array v4, v4, [Ljava/lang/Object;

    float-to-double v5, v1

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v8}, Lcom/zhangdan/app/activities/repay/PayPartDialog;->setDialogContent(Ljava/lang/String;I)V

    goto :goto_0
.end method
