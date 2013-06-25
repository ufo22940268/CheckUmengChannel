.class public Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;
.super Lcom/zhangdan/app/activities/BaseFragmentActivity;
.source "BankServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_KEY_BANK_ID:Ljava/lang/String; = "bank_id"

.field public static final EXTRA_KEY_BANK_NAME:Ljava/lang/String; = "bank_name"

.field public static final EXTRA_KEY_SERVICE_TYPE:Ljava/lang/String; = "service_type"

.field public static final SERVICE_TYPE_MAP:I = 0x2

.field public static final SERVICE_TYPE_SMS:I = 0x1

.field public static final SERVICE_TYPE_TEL:I


# instance fields
.field private mBankId:I

.field private mBankName:Ljava/lang/String;

.field private mBtnMap:Landroid/widget/Button;

.field private mBtnSms:Landroid/widget/Button;

.field private mBtnTel:Landroid/widget/Button;

.field private mFragmentSms:Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

.field private mFragmentTel:Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

.field private mServiceType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mFragmentTel:Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

    .line 32
    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mFragmentSms:Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

    return-void
.end method

.method private changeFragment(I)V
    .locals 7
    .parameter "serviceType"

    .prologue
    const v6, 0x7f09008b

    const/4 v5, 0x1

    .line 135
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 136
    .local v1, fragmentMgr:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 137
    .local v2, fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    if-nez p1, :cond_3

    .line 138
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mFragmentSms:Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

    if-eqz v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mFragmentSms:Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 140
    :cond_0
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mFragmentTel:Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

    if-nez v3, :cond_1

    .line 141
    new-instance v3, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

    invoke-direct {v3}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;-><init>()V

    iput-object v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mFragmentTel:Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "bank_id"

    iget v4, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBankId:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string v3, "service_type"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mFragmentTel:Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

    invoke-virtual {v3, v0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->setArguments(Landroid/os/Bundle;)V

    .line 146
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mFragmentTel:Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

    invoke-virtual {v2, v6, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 148
    .end local v0           #args:Landroid/os/Bundle;
    :cond_1
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mFragmentTel:Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 164
    :cond_2
    :goto_0
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 165
    return-void

    .line 149
    :cond_3
    if-ne p1, v5, :cond_6

    .line 150
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mFragmentTel:Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

    if-eqz v3, :cond_4

    .line 151
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mFragmentTel:Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 152
    :cond_4
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mFragmentSms:Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

    if-nez v3, :cond_5

    .line 153
    new-instance v3, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

    invoke-direct {v3}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;-><init>()V

    iput-object v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mFragmentSms:Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v3, "bank_id"

    iget v4, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBankId:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    const-string v3, "service_type"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mFragmentSms:Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

    invoke-virtual {v3, v0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->setArguments(Landroid/os/Bundle;)V

    .line 158
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mFragmentSms:Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

    invoke-virtual {v2, v6, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 160
    .end local v0           #args:Landroid/os/Bundle;
    :cond_5
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mFragmentSms:Lcom/zhangdan/app/activities/bankservice/FragmentBankService;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 161
    :cond_6
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    goto :goto_0
.end method

.method private changeTitleBtns(I)V
    .locals 4
    .parameter "serviceType"

    .prologue
    const v1, 0x7f02038f

    const v3, 0x7f02036d

    const v2, 0x7f02029d

    .line 114
    if-nez p1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBtnTel:Landroid/widget/Button;

    const v1, 0x7f02038e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 116
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBtnSms:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 117
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBtnMap:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBtnTel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 120
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBtnSms:Landroid/widget/Button;

    const v1, 0x7f02036a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 121
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBtnMap:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 122
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBtnTel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 124
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBtnSms:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 125
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBtnMap:Landroid/widget/Button;

    const v1, 0x7f02029b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private initTitles()V
    .locals 2

    .prologue
    .line 73
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBankName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v0, 0x7f09008f

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBtnTel:Landroid/widget/Button;

    .line 76
    const v0, 0x7f090090

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBtnSms:Landroid/widget/Button;

    .line 77
    const v0, 0x7f090091

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBtnMap:Landroid/widget/Button;

    .line 78
    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mServiceType:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->changeTitleBtns(I)V

    .line 79
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBtnTel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBtnSms:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBtnMap:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method private unPackIntentExtras(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, data:Landroid/content/Intent;
    const-string v1, "bank_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBankId:I

    .line 55
    const-string v1, "bank_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBankName:Ljava/lang/String;

    .line 56
    const-string v1, "service_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mServiceType:I

    .line 57
    iget v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBankId:I

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 58
    const-string v1, "bank_id"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBankId:I

    .line 59
    const-string v1, "bank_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBankName:Ljava/lang/String;

    .line 60
    const-string v1, "service_type"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mServiceType:I

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090039

    if-ne v0, v1, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->finish()V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09008f

    if-ne v0, v1, :cond_2

    .line 89
    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mServiceType:I

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mServiceType:I

    .line 92
    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mServiceType:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->changeTitleBtns(I)V

    .line 93
    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mServiceType:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->changeFragment(I)V

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090090

    if-ne v0, v1, :cond_3

    .line 95
    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mServiceType:I

    if-eq v0, v2, :cond_0

    .line 97
    iput v2, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mServiceType:I

    .line 98
    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mServiceType:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->changeTitleBtns(I)V

    .line 99
    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mServiceType:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->changeFragment(I)V

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090091

    if-ne v0, v1, :cond_0

    .line 101
    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mServiceType:I

    if-eq v0, v3, :cond_0

    .line 103
    iput v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mServiceType:I

    .line 104
    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mServiceType:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->changeTitleBtns(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->setContentView(I)V

    .line 47
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->unPackIntentExtras(Landroid/os/Bundle;)V

    .line 48
    invoke-direct {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->initTitles()V

    .line 49
    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mServiceType:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->changeFragment(I)V

    .line 50
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 67
    const-string v0, "bank_id"

    iget v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBankId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string v0, "bank_name"

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mBankName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "service_type"

    iget v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->mServiceType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    return-void
.end method
