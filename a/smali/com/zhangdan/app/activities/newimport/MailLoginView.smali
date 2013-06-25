.class public Lcom/zhangdan/app/activities/newimport/MailLoginView;
.super Ljava/lang/Object;
.source "MailLoginView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;,
        Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBtnSubmit:Landroid/widget/RelativeLayout;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContentView:Landroid/view/View;

.field private mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

.field private mEtMailAccount:Lcom/zhangdan/app/widget/EmailEditText;

.field private mEtPwd:Landroid/widget/EditText;

.field private mLayoutUserAgreement:Landroid/widget/RelativeLayout;

.field private mViewFlow:Lorg/taptwo/android/widget/ViewFlow;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 7
    .parameter "activity"
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;

    .line 63
    iput-object p2, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mContentView:Landroid/view/View;

    .line 65
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mContentView:Landroid/view/View;

    const v4, 0x7f0900b9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/taptwo/android/widget/ViewFlow;

    iput-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mViewFlow:Lorg/taptwo/android/widget/ViewFlow;

    .line 66
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mViewFlow:Lorg/taptwo/android/widget/ViewFlow;

    new-instance v4, Lcom/zhangdan/app/activities/newimport/CutScenesAdapter;

    iget-object v5, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/zhangdan/app/activities/newimport/CutScenesAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lorg/taptwo/android/widget/ViewFlow;->setAdapter(Landroid/widget/Adapter;)V

    .line 68
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mContentView:Landroid/view/View;

    const v4, 0x7f090202

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/widget/EmailEditText;

    iput-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mEtMailAccount:Lcom/zhangdan/app/widget/EmailEditText;

    .line 69
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mContentView:Landroid/view/View;

    const v4, 0x7f090203

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mEtPwd:Landroid/widget/EditText;

    .line 70
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mEtMailAccount:Lcom/zhangdan/app/widget/EmailEditText;

    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mEtPwd:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/widget/EmailEditText;->setNextFocusableEditText(Landroid/widget/EditText;)V

    .line 71
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mEtMailAccount:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v3, p0}, Lcom/zhangdan/app/widget/EmailEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mEtPwd:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mEtMailAccount:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v3, p0}, Lcom/zhangdan/app/widget/EmailEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 74
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mEtPwd:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 76
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mContentView:Landroid/view/View;

    const v4, 0x7f0901f6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mBtnSubmit:Landroid/widget/RelativeLayout;

    .line 77
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mBtnSubmit:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mContentView:Landroid/view/View;

    const v4, 0x7f0901f3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mLayoutUserAgreement:Landroid/widget/RelativeLayout;

    .line 80
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mContentView:Landroid/view/View;

    const v4, 0x7f0901f4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mCheckBox:Landroid/widget/CheckBox;

    .line 82
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mContentView:Landroid/view/View;

    const v4, 0x7f0901f5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 83
    .local v2, txtReadUserAgree:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;

    const v4, 0x7f070139

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, str:Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 85
    .local v0, spanStr:Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v6, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 86
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Lcom/zhangdan/app/widget/LoadingDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zhangdan/app/activities/newimport/MailLoginView;Lcom/zhangdan/app/widget/LoadingDialog;)Lcom/zhangdan/app/widget/LoadingDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/newimport/MailLoginView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->dissmissLoadingDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Lcom/zhangdan/app/widget/EmailEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mEtMailAccount:Lcom/zhangdan/app/widget/EmailEditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mEtPwd:Landroid/widget/EditText;

    return-object v0
.end method

.method private dissmissLoadingDialog()V
    .locals 1

    .prologue
    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/LoadingDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mContentView:Landroid/view/View;

    .line 100
    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mViewFlow:Lorg/taptwo/android/widget/ViewFlow;

    .line 101
    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;

    .line 102
    return-void
.end method

.method public displayImportDesc()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 175
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mContentView:Landroid/view/View;

    const v4, 0x7f090200

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 176
    .local v1, layoutCutScene:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 185
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mContentView:Landroid/view/View;

    const v4, 0x7f090179

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 179
    .local v0, layoutBottom:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 180
    .local v2, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 181
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mBtnSubmit:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 184
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mLayoutUserAgreement:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideImportDesc()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 159
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mContentView:Landroid/view/View;

    const v4, 0x7f090200

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 160
    .local v1, layoutCutScene:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 169
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mContentView:Landroid/view/View;

    const v4, 0x7f090179

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 164
    .local v0, layoutBottom:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 165
    .local v2, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 166
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mBtnSubmit:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 168
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mLayoutUserAgreement:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public isHideImportDesc()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mContentView:Landroid/view/View;

    const v1, 0x7f090200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 91
    const v0, 0x7f0d0004

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 106
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mEtMailAccount:Lcom/zhangdan/app/widget/EmailEditText;

    if-eq p1, v3, :cond_0

    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mEtPwd:Landroid/widget/EditText;

    if-ne p1, v3, :cond_2

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->hideImportDesc()V

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mBtnSubmit:Landroid/widget/RelativeLayout;

    if-ne p1, v3, :cond_7

    .line 109
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;

    const-string v4, "yuan_mail_direct_login"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 111
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;

    const v5, 0x7f07013a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_3
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mEtMailAccount:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v3}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, mailName:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;

    const v5, 0x7f070128

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_4
    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 121
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;

    const v5, 0x7f070129

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_5
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mEtPwd:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, mailPwd:Ljava/lang/String;
    invoke-static {v2}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 126
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;

    const v5, 0x7f07012a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_6
    new-instance v3, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;-><init>(Lcom/zhangdan/app/activities/newimport/MailLoginView;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    goto/16 :goto_0

    .line 131
    .end local v1           #mailName:Ljava/lang/String;
    .end local v2           #mailPwd:Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0901f5

    if-ne v3, v4, :cond_1

    .line 132
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;

    const-string v4, "yuan_mail_direct_user_agreement"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 135
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView;->mEtPwd:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->hideImportDesc()V

    .line 144
    :cond_0
    return-void
.end method
