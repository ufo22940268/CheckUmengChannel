.class public Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;
.super Ljava/lang/Object;
.source "MailAutoImportManager.java"

# interfaces
.implements Lcom/zhangdan/app/widget/CustomCheckBox$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;
.implements Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailStatusListener;


# static fields
.field public static final FLAG_FINISH_CURR_ACTIVITY:I = 0x1

.field public static final FLAG_FIRST_LOGIN:I = 0x2

.field private static final SHOW_PWD:Ljava/lang/String; = "*********"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

.field private mContentView:Landroid/view/View;

.field private mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

.field private mDialogPhoneCode:Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;

.field private mEtEmail:Lcom/zhangdan/app/widget/EmailEditText;

.field private mEtIndependPwd:Landroid/widget/EditText;

.field private mEtPwd:Landroid/widget/EditText;

.field private mFlag:I

.field private mGuideLineView:Landroid/view/View;

.field private mInitialEmail:Ljava/lang/String;

.field private mIsJump2MailList:Z

.field private mLayoutMailAdd:Landroid/view/View;

.field private mLayoutMailList:Landroid/view/View;

.field private mMailAccountId:Ljava/lang/String;

.field private mMailListManager:Lcom/zhangdan/app/activities/mailimport/MailListManager;

.field private mOnPhonecodeListener:Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode$OnVerifyCodeListener;

.field private mOnVerifyCodeListener:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$OnVerifyCodeListener;

.field private mSubmitTime:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private mVerifyCodeDialog:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;

.field private mViewStubMailList:Landroid/view/ViewStub;

.field private mViewStubMaillAdd:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .parameter "activity"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailAdd:Landroid/view/View;

    .line 70
    iput-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mGuideLineView:Landroid/view/View;

    .line 71
    iput-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailList:Landroid/view/View;

    .line 72
    iput-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mMailListManager:Lcom/zhangdan/app/activities/mailimport/MailListManager;

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mIsJump2MailList:Z

    .line 92
    iput-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mInitialEmail:Ljava/lang/String;

    .line 607
    new-instance v1, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$1;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$1;-><init>(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mOnVerifyCodeListener:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$OnVerifyCodeListener;

    .line 628
    new-instance v1, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$2;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$2;-><init>(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mOnPhonecodeListener:Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode$OnVerifyCodeListener;

    .line 96
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    .line 97
    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mContentView:Landroid/view/View;

    .line 98
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v1}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v0

    .line 99
    .local v0, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mUserId:Ljava/lang/String;

    .line 101
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mToken:Ljava/lang/String;

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mContentView:Landroid/view/View;

    const v2, 0x7f0901e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mViewStubMaillAdd:Landroid/view/ViewStub;

    .line 104
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mContentView:Landroid/view/View;

    const v2, 0x7f0901e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mViewStubMailList:Landroid/view/ViewStub;

    .line 105
    const v1, 0x7f0901e6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/widget/CustomCheckBox;

    invoke-virtual {v1, p0}, Lcom/zhangdan/app/widget/CustomCheckBox;->setOnCheckedChangeListener(Lcom/zhangdan/app/widget/CustomCheckBox$OnCheckedChangeListener;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissVerifyCodeDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Lcom/zhangdan/app/widget/EmailEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtEmail:Lcom/zhangdan/app/widget/EmailEditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtPwd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtIndependPwd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissPhoneCodeDialog()V

    return-void
.end method

.method private dismissLoadingDialog()V
    .locals 2

    .prologue
    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

    invoke-virtual {v1}, Lcom/zhangdan/app/widget/LoadingDialog;->dismiss()V

    .line 308
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private dismissPhoneCodeDialog()V
    .locals 2

    .prologue
    .line 585
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mDialogPhoneCode:Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;

    if-eqz v1, :cond_0

    .line 587
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mDialogPhoneCode:Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;->dismiss()V

    .line 588
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mDialogPhoneCode:Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private dismissVerifyCodeDialog()V
    .locals 2

    .prologue
    .line 557
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mVerifyCodeDialog:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;

    if-eqz v1, :cond_0

    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mVerifyCodeDialog:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->dismiss()V

    .line 560
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mVerifyCodeDialog:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private displayPhoneCode()V
    .locals 2

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissLoadingDialog()V

    .line 600
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissPhoneCodeDialog()V

    .line 601
    new-instance v0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mDialogPhoneCode:Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;

    .line 602
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mDialogPhoneCode:Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;

    const v1, 0x7f0700fe

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;->setDialogTitle(I)V

    .line 603
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mDialogPhoneCode:Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mOnPhonecodeListener:Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode$OnVerifyCodeListener;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;->setOnVerifyCodeListener(Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode$OnVerifyCodeListener;)V

    .line 604
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mDialogPhoneCode:Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode;->show()V

    .line 605
    return-void
.end method

.method private displayVerifyCodeDialog(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissLoadingDialog()V

    .line 574
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissVerifyCodeDialog()V

    .line 575
    new-instance v1, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mVerifyCodeDialog:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;

    .line 576
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mVerifyCodeDialog:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;

    const v2, 0x7f0700fc

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->setDialogTitle(I)V

    .line 577
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mVerifyCodeDialog:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mOnVerifyCodeListener:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$OnVerifyCodeListener;

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->setOnVerifyCodeListener(Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$OnVerifyCodeListener;)V

    .line 578
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mVerifyCodeDialog:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->show()V

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.51zhangdan.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, url:Ljava/lang/String;
    const-string v1, "MailLoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9a8c\u8bc1\u7801\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mVerifyCodeDialog:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->displayVerifyCode(Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method private initBroadcastMgr()V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    .line 300
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->setOnMailStatusListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailStatusListener;)V

    .line 302
    :cond_0
    return-void
.end method

.method private initGuideLineViews()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mContentView:Landroid/view/View;

    const v1, 0x7f0901ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mGuideLineView:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mGuideLineView:Landroid/view/View;

    const v1, 0x7f0901ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0700ee

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mGuideLineView:Landroid/view/View;

    const v1, 0x7f0901ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0700f0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mGuideLineView:Landroid/view/View;

    const v1, 0x7f0901ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-void
.end method

.method private initMailAddViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 196
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailAdd:Landroid/view/View;

    const v5, 0x7f0901f5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 197
    .local v2, tvUserAgreement:Landroid/widget/TextView;
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const v5, 0x7f070139

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, str:Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 200
    .local v0, spanStr:Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v6, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 201
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailAdd:Landroid/view/View;

    const v5, 0x7f0901f9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 205
    .local v3, tvWhyInputEmail:Landroid/widget/TextView;
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0700e2

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    new-instance v0, Landroid/text/SpannableString;

    .end local v0           #spanStr:Landroid/text/SpannableString;
    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 208
    .restart local v0       #spanStr:Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v6, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 209
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailAdd:Landroid/view/View;

    const v5, 0x7f0901f0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/widget/EmailEditText;

    iput-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtEmail:Lcom/zhangdan/app/widget/EmailEditText;

    .line 212
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailAdd:Landroid/view/View;

    const v5, 0x7f0901f1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtPwd:Landroid/widget/EditText;

    .line 213
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailAdd:Landroid/view/View;

    const v5, 0x7f0901f2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtIndependPwd:Landroid/widget/EditText;

    .line 214
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtEmail:Lcom/zhangdan/app/widget/EmailEditText;

    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtPwd:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/widget/EmailEditText;->setNextFocusableEditText(Landroid/widget/EditText;)V

    .line 215
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailAdd:Landroid/view/View;

    const v5, 0x7f0901f6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtEmail:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v4, p0}, Lcom/zhangdan/app/widget/EmailEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 217
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtPwd:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 219
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mInitialEmail:Ljava/lang/String;

    invoke-static {v4}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 220
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtEmail:Lcom/zhangdan/app/widget/EmailEditText;

    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mInitialEmail:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :cond_0
    return-void
.end method

.method private jump2MailList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 382
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mIsJump2MailList:Z

    if-eqz v1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iput-boolean v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mIsJump2MailList:Z

    .line 385
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissLoadingDialog()V

    .line 387
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    if-eqz v1, :cond_2

    .line 388
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {v1}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->destroy()V

    .line 389
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    .line 392
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 393
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 394
    const-string v1, "email_name"

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtEmail:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v2}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v1, "mail_account_id"

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mMailAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v1, "submit_time"

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mSubmitTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    iget v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mFlag:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_3

    .line 398
    const-string v1, "first_login"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    :cond_3
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 402
    iget v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mFlag:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public init(Ljava/util/List;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "emailName"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/MailAccountInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/MailAccountInfo;>;"
    iput p3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mFlag:I

    .line 155
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mViewStubMaillAdd:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailAdd:Landroid/view/View;

    .line 157
    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mInitialEmail:Ljava/lang/String;

    .line 158
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->initMailAddViews()V

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mViewStubMailList:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailList:Landroid/view/View;

    .line 162
    new-instance v0, Lcom/zhangdan/app/activities/mailimport/MailListManager;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailList:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/app/activities/mailimport/MailListManager;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mMailListManager:Lcom/zhangdan/app/activities/mailimport/MailListManager;

    .line 163
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mMailListManager:Lcom/zhangdan/app/activities/mailimport/MailListManager;

    invoke-virtual {v0, p1}, Lcom/zhangdan/app/activities/mailimport/MailListManager;->initMailListView(Ljava/util/List;)V

    goto :goto_0
.end method

.method public initMailStatusResult(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 176
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtPwd:Landroid/widget/EditText;

    const-string v1, "*********"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->onMailStatusListener(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Lcom/zhangdan/app/widget/CustomCheckBox;Z)V
    .locals 4
    .parameter "checkBox"
    .parameter "checked"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 122
    invoke-virtual {p1}, Lcom/zhangdan/app/widget/CustomCheckBox;->getId()I

    move-result v0

    const v1, 0x7f0901e6

    if-ne v0, v1, :cond_2

    .line 123
    if-eqz p2, :cond_3

    .line 124
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailAdd:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailAdd:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailList:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailList:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mGuideLineView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mGuideLineView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :cond_2
    :goto_0
    return-void

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailAdd:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailAdd:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailList:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 134
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailList:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_5
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mGuideLineView:Landroid/view/View;

    if-nez v0, :cond_6

    .line 136
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->initGuideLineViews()V

    .line 140
    :goto_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/zhangdan/app/util/CommonMethod;->hideSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mGuideLineView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0901ef

    if-ne v5, v6, :cond_1

    .line 238
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const-string v6, "yuan_import_bank_hotline"

    invoke-static {v5, v6}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 241
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 242
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const v6, 0x7f040003

    const v7, 0x7f040005

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 292
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0901f5

    if-ne v5, v6, :cond_2

    .line 244
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const-string v6, "yuan_import_user_agreement"

    invoke-static {v5, v6}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 246
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 247
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 248
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0901f9

    if-ne v5, v6, :cond_3

    .line 249
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const-string v6, "yuan_import_img_desc"

    invoke-static {v5, v6}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 251
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 252
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 253
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0901f6

    if-ne v5, v6, :cond_9

    .line 254
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const-string v6, "yuan_import_submit"

    invoke-static {v5, v6}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 255
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mLayoutMailAdd:Landroid/view/View;

    const v6, 0x7f0901f4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_4

    .line 256
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const v7, 0x7f07013a

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_4
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtEmail:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v5}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, mailName:Ljava/lang/String;
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtPwd:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, mailPwd:Ljava/lang/String;
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtIndependPwd:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, mailIndepPwd:Ljava/lang/String;
    invoke-static {v2}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 263
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const v7, 0x7f070128

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    :cond_5
    const-string v5, "@"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    .line 267
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const v7, 0x7f070129

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    :cond_6
    invoke-static {v3}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 271
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const v7, 0x7f07012a

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    :cond_7
    const-string v5, "*********"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 275
    const-string v3, ""

    .line 276
    :cond_8
    new-instance v4, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;

    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;-><init>(Landroid/content/Context;)V

    .line 277
    .local v4, task:Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;
    invoke-virtual {v4, p0}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->setOnMailSubmitProcessListener(Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;)V

    .line 278
    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mToken:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mUserId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v6, 0x3

    aput-object v3, v5, v6

    const/4 v6, 0x4

    aput-object v1, v5, v6

    const/4 v6, 0x5

    const-string v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, ""

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    goto/16 :goto_0

    .line 279
    .end local v1           #mailIndepPwd:Ljava/lang/String;
    .end local v2           #mailName:Ljava/lang/String;
    .end local v3           #mailPwd:Ljava/lang/String;
    .end local v4           #task:Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0902fa

    if-ne v5, v6, :cond_0

    .line 280
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    if-eqz v5, :cond_a

    .line 281
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {v5}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->destroy()V

    .line 282
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    .line 286
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 287
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/zhangdan/app/service/MailStatusService;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 288
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 290
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissLoadingDialog()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {v0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->destroy()V

    .line 111
    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mMailListManager:Lcom/zhangdan/app/activities/mailimport/MailListManager;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mMailListManager:Lcom/zhangdan/app/activities/mailimport/MailListManager;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/MailListManager;->onDestroy()V

    .line 115
    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mMailListManager:Lcom/zhangdan/app/activities/mailimport/MailListManager;

    .line 117
    :cond_1
    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    .line 118
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 226
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtEmail:Lcom/zhangdan/app/widget/EmailEditText;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtPwd:Landroid/widget/EditText;

    if-ne p1, v1, :cond_1

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtEmail:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v1}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, email:Ljava/lang/String;
    const-string v1, "@qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtIndependPwd:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 233
    .end local v0           #email:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 231
    .restart local v0       #email:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtIndependPwd:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method public onMailStatusListener(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 409
    const-string v2, "MailImportActivity"

    const-string v3, "onMailStatusListener()...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 546
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getMsg()Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, msg:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 548
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const-string v3, "\u7f51\u7edc\u7e41\u5fd9\uff0c\u8bf7\u5c1d\u8bd5\u91cd\u65b0\u63d0\u4ea4"

    invoke-static {v2, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 554
    .end local v1           #msg:Ljava/lang/String;
    :goto_0
    :sswitch_0
    return-void

    .line 413
    :sswitch_1
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissLoadingDialog()V

    .line 414
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :sswitch_2
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissLoadingDialog()V

    .line 419
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :sswitch_3
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissLoadingDialog()V

    .line 426
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getMsg()Ljava/lang/String;

    move-result-object v1

    .line 427
    .restart local v1       #msg:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0700fb

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_0
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u8bf7\u5c1d\u8bd5\u91cd\u65b0\u63d0\u4ea4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 443
    .end local v1           #msg:Ljava/lang/String;
    :sswitch_4
    const-string v2, "MailImportActivity"

    const-string v3, "\u5bc6\u7801\u9519\u8bef"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissLoadingDialog()V

    .line 445
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtPwd:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtPwd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 447
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtEmail:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v2}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, account:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "www."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0700fa

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 452
    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 456
    .end local v0           #account:Ljava/lang/String;
    :sswitch_5
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissLoadingDialog()V

    .line 457
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    :sswitch_6
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissLoadingDialog()V

    .line 462
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 467
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->displayVerifyCodeDialog(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto/16 :goto_0

    .line 472
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->displayVerifyCodeDialog(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto/16 :goto_0

    .line 477
    :sswitch_9
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissLoadingDialog()V

    .line 478
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 479
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtIndependPwd:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 480
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtIndependPwd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 485
    :sswitch_a
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissLoadingDialog()V

    .line 486
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 487
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtIndependPwd:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 488
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtIndependPwd:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtIndependPwd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 494
    :sswitch_b
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->displayPhoneCode()V

    goto/16 :goto_0

    .line 499
    :sswitch_c
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->displayPhoneCode()V

    goto/16 :goto_0

    .line 507
    :sswitch_d
    const-string v2, "MailLoginActivity"

    const-string v3, "\u767b\u5f55\u6210\u529f..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->jump2MailList()V

    goto/16 :goto_0

    .line 513
    :sswitch_e
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->jump2MailList()V

    goto/16 :goto_0

    .line 517
    :sswitch_f
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->jump2MailList()V

    goto/16 :goto_0

    .line 521
    :sswitch_10
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->jump2MailList()V

    goto/16 :goto_0

    .line 525
    :sswitch_11
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->jump2MailList()V

    goto/16 :goto_0

    .line 529
    :sswitch_12
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->jump2MailList()V

    goto/16 :goto_0

    .line 533
    :sswitch_13
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->jump2MailList()V

    goto/16 :goto_0

    .line 537
    :sswitch_14
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->jump2MailList()V

    goto/16 :goto_0

    .line 541
    :sswitch_15
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->jump2MailList()V

    goto/16 :goto_0

    .line 550
    .restart local v1       #msg:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u8bf7\u5c1d\u8bd5\u91cd\u65b0\u63d0\u4ea4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 411
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e9 -> :sswitch_2
        -0x3e8 -> :sswitch_1
        0x0 -> :sswitch_3
        0x1 -> :sswitch_0
        0x2 -> :sswitch_d
        0x3 -> :sswitch_4
        0x4 -> :sswitch_7
        0x5 -> :sswitch_8
        0x6 -> :sswitch_9
        0xa -> :sswitch_5
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_a
        0xf -> :sswitch_e
        0x64 -> :sswitch_3
        0x65 -> :sswitch_6
        0xc8 -> :sswitch_f
        0xc9 -> :sswitch_10
        0xca -> :sswitch_11
        0x12c -> :sswitch_12
        0x12d -> :sswitch_13
        0x12e -> :sswitch_14
        0x3e8 -> :sswitch_15
    .end sparse-switch
.end method

.method public onPostExecute(Lcom/zhangdan/app/data/model/http/MailLoginResult;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    .line 329
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 376
    :goto_0
    return-void

    .line 331
    :cond_0
    if-nez p1, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissLoadingDialog()V

    .line 333
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const v5, 0x7f070024

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    iput-object v6, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mMailAccountId:Ljava/lang/String;

    .line 335
    iput-object v6, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mSubmitTime:Ljava/lang/String;

    goto :goto_0

    .line 337
    :cond_1
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->getCode()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->getCode()I

    move-result v3

    const/16 v4, 0x70

    if-ne v3, v4, :cond_4

    .line 338
    :cond_2
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

    if-eqz v3, :cond_3

    .line 339
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

    const v4, 0x7f0700f9

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/widget/LoadingDialog;->setContent(I)V

    .line 340
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

    invoke-virtual {v3, p0}, Lcom/zhangdan/app/widget/LoadingDialog;->setOnClickCancelListener(Landroid/view/View$OnClickListener;)V

    .line 343
    :cond_3
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->getSid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mMailAccountId:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->getTime()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mSubmitTime:Ljava/lang/String;

    .line 347
    new-instance v0, Lcom/zhangdan/app/data/model/MailAccountInfo;

    invoke-direct {v0}, Lcom/zhangdan/app/data/model/MailAccountInfo;-><init>()V

    .line 348
    .local v0, account:Lcom/zhangdan/app/data/model/MailAccountInfo;
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->getAutoId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/zhangdan/app/data/model/MailAccountInfo;->setAutoId(J)V

    .line 349
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/data/model/MailAccountInfo;->setUserId(Ljava/lang/String;)V

    .line 350
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtEmail:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v3}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/data/model/MailAccountInfo;->setMailAccount(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/data/model/MailAccountInfo;->setLastWebAccessTime(Ljava/lang/String;)V

    .line 352
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtPwd:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/data/model/MailAccountInfo;->setLocalPwd(Ljava/lang/String;)V

    .line 353
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtIndependPwd:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/data/model/MailAccountInfo;->setLocalSpecialPwd(Ljava/lang/String;)V

    .line 354
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v0}, Lcom/zhangdan/app/data/db/util/MailAccountDbUtil;->saveMailAccount(Landroid/content/Context;Lcom/zhangdan/app/data/model/MailAccountInfo;)V

    .line 357
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 358
    .local v1, broadcastIntent:Landroid/content/Intent;
    const-string v3, "com.zhangdan.app.mail_account_update"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 362
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 363
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/zhangdan/app/service/MailStatusService;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 364
    const-string v3, "sid"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v3, "token"

    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mToken:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v3, "user_id"

    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 370
    .end local v0           #account:Lcom/zhangdan/app/data/model/MailAccountInfo;
    .end local v1           #broadcastIntent:Landroid/content/Intent;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissLoadingDialog()V

    .line 371
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    iput-object v6, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mMailAccountId:Ljava/lang/String;

    .line 373
    iput-object v6, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mSubmitTime:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    new-instance v0, Lcom/zhangdan/app/widget/LoadingDialog;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zhangdan/app/widget/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

    .line 318
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

    const v1, 0x7f0700f8

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/LoadingDialog;->setContent(I)V

    .line 319
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/widget/LoadingDialog;->setCancelable(Z)V

    .line 320
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/LoadingDialog;->show()V

    .line 321
    iput-boolean v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mIsJump2MailList:Z

    .line 322
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->initBroadcastMgr()V

    .line 323
    return-void
.end method
