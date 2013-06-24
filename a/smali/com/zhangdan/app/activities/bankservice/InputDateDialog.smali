.class public Lcom/zhangdan/app/activities/bankservice/InputDateDialog;
.super Landroid/app/Dialog;
.source "InputDateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mMethod:Ljava/lang/String;

.field private mTo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "method"
    .parameter "to"

    .prologue
    .line 29
    const v0, 0x7f08005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/InputDateDialog;->setCanceledOnTouchOutside(Z)V

    .line 31
    iput-object p2, p0, Lcom/zhangdan/app/activities/bankservice/InputDateDialog;->mMethod:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/zhangdan/app/activities/bankservice/InputDateDialog;->mTo:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/InputDateDialog;->dismiss()V

    .line 52
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/InputDateDialog;->mMethod:Ljava/lang/String;

    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->YEAR_MONTH:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/ServiceSettingType;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/bankservice/InputDateDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/InputDateDialog;->mMethod:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/InputDateDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/InputDateDialog;->mTo:Ljava/lang/String;

    iget-object v2, p0, Lcom/zhangdan/app/activities/bankservice/InputDateDialog;->mMethod:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->launchSendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v3, 0x7f03006a

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/bankservice/InputDateDialog;->setContentView(I)V

    .line 39
    const v3, 0x7f090173

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/bankservice/InputDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zhangdan/app/activities/bankservice/InputDateDialog;->mEditText:Landroid/widget/EditText;

    .line 40
    const v3, 0x7f090174

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/bankservice/InputDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 43
    .local v0, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 44
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMM"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 45
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, dateStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/InputDateDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method
