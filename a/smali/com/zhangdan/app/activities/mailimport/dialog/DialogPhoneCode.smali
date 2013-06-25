.class public Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;
.super Landroid/app/Dialog;
.source "DialogPhoneCode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode$OnVerifyCodeListener;
    }
.end annotation


# instance fields
.field private mEtVerifyCode:Landroid/widget/EditText;

.field private mOnVerifyCodeListener:Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode$OnVerifyCodeListener;

.field private mTvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    const v0, 0x7f08005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    const v0, 0x7f030068

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;->setContentView(I)V

    .line 27
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;->initViews()V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;->setCanceledOnTouchOutside(Z)V

    .line 29
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f09016e

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;->mTvTitle:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f090170

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;->mEtVerifyCode:Landroid/widget/EditText;

    .line 34
    const v0, 0x7f09016f

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f09016f

    if-ne v1, v2, :cond_2

    .line 45
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;->mEtVerifyCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, code:Ljava/lang/String;
    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    .end local v0           #code:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 50
    .restart local v0       #code:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;->mOnVerifyCodeListener:Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode$OnVerifyCodeListener;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;->mOnVerifyCodeListener:Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode$OnVerifyCodeListener;

    invoke-interface {v1, v0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode$OnVerifyCodeListener;->onConfirm(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v0           #code:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090171

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 40
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .parameter "strResId"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 64
    return-void
.end method

.method public setDialogTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public setOnVerifyCodeListener(Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode$OnVerifyCodeListener;)V
    .locals 0
    .parameter "onVerifyCodeListener"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;->mOnVerifyCodeListener:Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode$OnVerifyCodeListener;

    .line 68
    return-void
.end method
