.class public Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;
.super Landroid/app/Dialog;
.source "EditCreditLimitDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog$OnEditCreditLimitListener;
    }
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mOnClickListener:Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog$OnEditCreditLimitListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 1
    .parameter "context"
    .parameter "creditLimit"

    .prologue
    .line 25
    const v0, 0x7f08005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->mOnClickListener:Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog$OnEditCreditLimitListener;

    .line 26
    const v0, 0x7f030066

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->setContentView(I)V

    .line 27
    invoke-direct {p0, p2}, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->initViews(F)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->setCanceledOnTouchOutside(Z)V

    .line 29
    return-void
.end method

.method private initViews(F)V
    .locals 4
    .parameter "creditLimit"

    .prologue
    .line 32
    const v2, 0x7f09016c

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->mEditText:Landroid/widget/EditText;

    .line 33
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#0"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, format:Ljava/text/DecimalFormat;
    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, str:Ljava/lang/String;
    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 37
    const v2, 0x7f09016d

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x7f070183

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f09016d

    if-ne v3, v4, :cond_0

    .line 43
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, creditLimit:Ljava/lang/String;
    invoke-static {v2}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    .end local v2           #creditLimit:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 48
    .restart local v2       #creditLimit:Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 49
    .local v0, amount:D
    const-wide/16 v3, 0x0

    cmpl-double v3, v0, v3

    if-nez v3, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->dismiss()V

    .line 54
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->mOnClickListener:Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog$OnEditCreditLimitListener;

    if-eqz v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->mOnClickListener:Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog$OnEditCreditLimitListener;

    invoke-interface {v3, v2}, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog$OnEditCreditLimitListener;->onCreditLimitConfirm(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnEditCreditLimitListener(Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog$OnEditCreditLimitListener;)V
    .locals 0
    .parameter "onClickListener"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->mOnClickListener:Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog$OnEditCreditLimitListener;

    .line 61
    return-void
.end method
