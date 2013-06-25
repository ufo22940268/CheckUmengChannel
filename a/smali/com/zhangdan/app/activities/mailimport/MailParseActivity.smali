.class public Lcom/zhangdan/app/activities/mailimport/MailParseActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "MailParseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailStatusListener;
.implements Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBillParseListener;


# static fields
.field public static final EXTRA_KEY_EMAIL_NAME:Ljava/lang/String; = "email_name"

.field public static final EXTRA_KEY_FIRST_LOGIN:Ljava/lang/String; = "first_login"

.field public static final EXTRA_KEY_MAIL_ACCOUNT_ID:Ljava/lang/String; = "mail_account_id"

.field public static final EXTRA_KEY_PWD:Ljava/lang/String; = "email_pwd"

.field public static final EXTRA_KEY_SUBMIT_TIME:Ljava/lang/String; = "submit_time"

.field private static final MarqueeTextView_TAG_NO_BILL:I = 0x1

.field private static final MarqueeTextView_TAG_PARSE_DONE:I = 0x2


# instance fields
.field private mBillAdapter:Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;

.field private mBillListView:Landroid/widget/ListView;

.field private mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

.field private mBtnImport:Landroid/widget/Button;

.field private mContinueZeroResult:I

.field private mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

.field private mEmailName:Ljava/lang/String;

.field private mEmailPwd:Ljava/lang/String;

.field private mFirstLogin:I

.field private mHasBroadcastNewBill:Z

.field private mHasParsed:Z

.field private mHistoryBillList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/MailBillInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mImgComplete:Landroid/widget/ImageView;

.field private mLoginFail:Z

.field private mLoginSuccess:Z

.field private mMailAccountId:Ljava/lang/String;

.field private mMarqueeTextView:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

.field private mOnMailSubmitProcessListener:Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;

.field private mParseMode:I

.field private mParseStartTime:J

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReceiveComplete:Z

.field private mSdf1:Ljava/text/SimpleDateFormat;

.field private mSdf2:Ljava/text/SimpleDateFormat;

.field private mSdf3:Ljava/text/SimpleDateFormat;

.field private mSubmitTime:Ljava/lang/String;

.field private mTmpCount:I

.field private mTvBillCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 79
    iput v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mFirstLogin:I

    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSdf1:Ljava/text/SimpleDateFormat;

    .line 95
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSdf2:Ljava/text/SimpleDateFormat;

    .line 96
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSdf3:Ljava/text/SimpleDateFormat;

    .line 100
    iput-boolean v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mLoginFail:Z

    .line 104
    iput-boolean v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mLoginSuccess:Z

    .line 106
    iput v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mParseMode:I

    .line 109
    iput-boolean v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mReceiveComplete:Z

    .line 111
    iput v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mTmpCount:I

    .line 113
    iput v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mContinueZeroResult:I

    .line 116
    iput-boolean v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mHasParsed:Z

    .line 118
    iput-boolean v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mHasBroadcastNewBill:Z

    .line 626
    new-instance v0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;-><init>(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mOnMailSubmitProcessListener:Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Lcom/zhangdan/app/widget/LoadingDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Lcom/zhangdan/app/widget/LoadingDialog;)Lcom/zhangdan/app/widget/LoadingDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

    return-object p1
.end method

.method static synthetic access$102(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mLoginSuccess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->dismissLoadingDialog()V

    return-void
.end method

.method static synthetic access$302(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mMailAccountId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSubmitTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSubmitTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->jump2MainPage()V

    return-void
.end method

.method private dismissLoadingDialog()V
    .locals 2

    .prologue
    .line 675
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

    if-eqz v1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;

    invoke-virtual {v1}, Lcom/zhangdan/app/widget/LoadingDialog;->dismiss()V

    .line 677
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 261
    const v0, 0x7f0900bc

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mTvBillCount:Landroid/widget/TextView;

    .line 262
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBillListView:Landroid/widget/ListView;

    .line 263
    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mMarqueeTextView:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    .line 264
    const v0, 0x7f0900bf

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBtnImport:Landroid/widget/Button;

    .line 265
    const v0, 0x7f0900c1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 266
    const v0, 0x7f0900c0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mImgComplete:Landroid/widget/ImageView;

    .line 267
    return-void
.end method

.method private finishParseMail()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 579
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->stopService()V

    .line 581
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->sendNewBillBroadcast()V

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 584
    .local v3, now:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 585
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 586
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSdf3:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, dateStr:Ljava/lang/String;
    const-string v5, "MailParse"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mParseStartTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-wide v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mParseStartTime:J

    invoke-static {v3, v4, v5, v6}, Lcom/zhangdan/app/util/DateUtils;->calInterval(JJ)Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, cost:Ljava/lang/String;
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBillAdapter:Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;

    const v6, 0x7f070108

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->setParseDone(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mImgComplete:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 592
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 593
    const v5, 0x7f0900c5

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 594
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBillAdapter:Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBillAdapter:Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;

    invoke-virtual {v5}, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->getNewBillSize()I

    move-result v5

    if-nez v5, :cond_1

    .line 595
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mMarqueeTextView:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    const v6, 0x7f070104

    invoke-virtual {p0, v6}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zhangdan/app/widget/mail/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mMarqueeTextView:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zhangdan/app/widget/mail/MarqueeTextView;->setTag(Ljava/lang/Object;)V

    .line 601
    :goto_0
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mMarqueeTextView:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    invoke-virtual {v5, p0}, Lcom/zhangdan/app/widget/mail/MarqueeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBillAdapter:Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;

    invoke-virtual {v5}, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->getNewBillSize()I

    move-result v5

    if-eqz v5, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->showFinishDialog()V

    .line 606
    :cond_0
    return-void

    .line 598
    :cond_1
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mMarqueeTextView:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    const v6, 0x7f070105

    invoke-virtual {p0, v6}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zhangdan/app/widget/mail/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mMarqueeTextView:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zhangdan/app/widget/mail/MarqueeTextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private initBroadcastMgr()V
    .locals 2

    .prologue
    .line 318
    new-instance v0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    const/16 v1, 0x300

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    .line 319
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->setOnMailStatusListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailStatusListener;)V

    .line 320
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->setOnBillParseListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBillParseListener;)V

    .line 321
    return-void
.end method

.method private initParseMail()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSubmitTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mMailAccountId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBtnImport:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mImgComplete:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mMarqueeTextView:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/mail/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBtnImport:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mImgComplete:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mMarqueeTextView:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    const v1, 0x7f070100

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/mail/MarqueeTextView;->setText(I)V

    .line 313
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mMailAccountId:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->startGetMailBillService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 10

    .prologue
    .line 270
    const v7, 0x7f090039

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    const v7, 0x7f0900bb

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    const v7, 0x7f0900be

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v7, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBtnImport:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v6

    .line 277
    .local v6, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    const-string v7, "MailParseActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mEmailName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",userId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v7, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailName:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8}, Lcom/zhangdan/app/data/db/util/MailBillRecordDbUtil;->loadAllBillRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mHistoryBillList:Ljava/util/List;

    .line 279
    const-string v7, "MailParseActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mHistoryBillList.size() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mHistoryBillList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v7, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mHistoryBillList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/MailBillInfo;

    .line 281
    .local v0, data:Lcom/zhangdan/app/data/model/http/MailBillInfo;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getSendTime()Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, sendTime:Ljava/lang/String;
    const/4 v3, 0x0

    .line 284
    .local v3, formatDisplayTime:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSdf1:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 285
    .local v1, date:Ljava/util/Date;
    iget-object v7, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSdf2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 289
    .end local v1           #date:Ljava/util/Date;
    :goto_1
    if-nez v3, :cond_0

    .end local v5           #sendTime:Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v5}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setFormatDislpayTime(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    .restart local v5       #sendTime:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 287
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .end local v2           #e:Ljava/text/ParseException;
    :cond_0
    move-object v5, v3

    .line 289
    goto :goto_2

    .line 292
    .end local v0           #data:Lcom/zhangdan/app/data/model/http/MailBillInfo;
    .end local v3           #formatDisplayTime:Ljava/lang/String;
    .end local v5           #sendTime:Ljava/lang/String;
    :cond_1
    new-instance v7, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;

    iget-object v8, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mHistoryBillList:Ljava/util/List;

    invoke-direct {v7, p0, v8}, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v7, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBillAdapter:Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;

    .line 293
    iget-object v7, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBillListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBillAdapter:Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 294
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->initParseMail()V

    .line 295
    return-void
.end method

.method private jump2MainPage()V
    .locals 2

    .prologue
    .line 251
    iget-boolean v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mHasParsed:Z

    if-eqz v1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->sendNewBillBroadcast()V

    .line 254
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 255
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->startActivity(Landroid/content/Intent;)V

    .line 257
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->finish()V

    .line 258
    return-void
.end method

.method private loginFail(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    .line 688
    iget-boolean v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mLoginFail:Z

    if-eqz v1, :cond_0

    .line 703
    :goto_0
    return-void

    .line 690
    :cond_0
    iput-boolean v3, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mLoginFail:Z

    .line 691
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->dismissLoadingDialog()V

    .line 692
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 693
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 694
    const-string v1, "email_name"

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailPwd:Ljava/lang/String;

    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 697
    const-string v1, "first_login"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 698
    :cond_1
    if-eqz p1, :cond_2

    .line 699
    const-string v1, "mail_status_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 700
    :cond_2
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->startActivity(Landroid/content/Intent;)V

    .line 701
    const v1, 0x7f040003

    const v2, 0x7f040005

    invoke-virtual {p0, v1, v2}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->overridePendingTransition(II)V

    .line 702
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->finish()V

    goto :goto_0
.end method

.method private sendNewBillBroadcast()V
    .locals 3

    .prologue
    .line 349
    iget-boolean v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mHasBroadcastNewBill:Z

    if-eqz v1, :cond_0

    .line 356
    :goto_0
    return-void

    .line 351
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mHasBroadcastNewBill:Z

    .line 352
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 353
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.zhangdan.app.new_bill"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v1, "bill_count"

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBillAdapter:Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->getNewBillSize()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private startGetMailBillService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "mailAccountId"
    .parameter "startTime"

    .prologue
    .line 329
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mHasParsed:Z

    .line 330
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v3

    .line 331
    .local v3, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, token:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, userId:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 334
    .local v0, intent:Landroid/content/Intent;
    const-class v4, Lcom/zhangdan/app/service/MailBillService;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 335
    const-string v4, "mail_account_id"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v4, "token"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v4, "user_id"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v4, "start_time"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mParseStartTime:J

    .line 342
    return-void
.end method

.method private stopService()V
    .locals 3

    .prologue
    .line 612
    sget-object v2, Lcom/zhangdan/app/service/MailBillService;->mParseBillTask:Lcom/zhangdan/app/service/MailBillService$ParseBillTask;

    if-eqz v2, :cond_0

    .line 613
    sget-object v2, Lcom/zhangdan/app/service/MailBillService;->mParseBillTask:Lcom/zhangdan/app/service/MailBillService$ParseBillTask;

    invoke-virtual {v2}, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->stop()V

    .line 614
    const/4 v2, 0x0

    sput-object v2, Lcom/zhangdan/app/service/MailBillService;->mParseBillTask:Lcom/zhangdan/app/service/MailBillService$ParseBillTask;

    .line 616
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 617
    .local v0, intentBillService:Landroid/content/Intent;
    const-class v2, Lcom/zhangdan/app/service/MailBillService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 618
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->stopService(Landroid/content/Intent;)Z

    .line 620
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 621
    .local v1, intentMailStatus:Landroid/content/Intent;
    const-class v2, Lcom/zhangdan/app/service/MailStatusService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 622
    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->stopService(Landroid/content/Intent;)Z

    .line 623
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 185
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailPwd:Ljava/lang/String;

    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mFirstLogin:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 186
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 187
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->finish()V

    .line 193
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBillParse(Lcom/zhangdan/app/data/model/http/MailBillResult;)V
    .locals 14
    .parameter "data"

    .prologue
    const/4 v13, 0x0

    .line 385
    if-nez p1, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailBillResult;->getCode()I

    move-result v2

    .line 388
    .local v2, code:I
    const-string v10, "Bill"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onBillParse : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailBillResult;->getBillList()Ljava/util/List;

    move-result-object v7

    .line 390
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/MailBillInfo;>;"
    const/4 v1, 0x0

    .line 391
    .local v1, billSize:I
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSubmitTime:Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 392
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 393
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v9, tmpList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/MailBillInfo;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v1, :cond_3

    .line 395
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/MailBillInfo;

    .line 396
    .local v0, bill:Lcom/zhangdan/app/data/model/http/MailBillInfo;
    iget-object v10, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setEmailName(Ljava/lang/String;)V

    .line 397
    const/4 v5, 0x0

    .line 399
    .local v5, formatDisplayTime:Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSdf1:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getSendTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 400
    .local v3, date:Ljava/util/Date;
    iget-object v10, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSdf2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 404
    .end local v3           #date:Ljava/util/Date;
    :goto_2
    invoke-virtual {v0, v5}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setFormatDislpayTime(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getMailType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 408
    iget-object v10, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBillAdapter:Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;

    invoke-virtual {v10, v0}, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->addCurrList(Lcom/zhangdan/app/data/model/http/MailBillInfo;)V

    .line 409
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 401
    :catch_0
    move-exception v4

    .line 402
    .local v4, e:Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2

    .line 427
    .end local v0           #bill:Lcom/zhangdan/app/data/model/http/MailBillInfo;
    .end local v4           #e:Ljava/text/ParseException;
    .end local v5           #formatDisplayTime:Ljava/lang/String;
    :cond_3
    const-string v10, "MailParseActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "save to db..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-static {p0, v9}, Lcom/zhangdan/app/data/db/util/MailBillRecordDbUtil;->saveBillRecordList(Landroid/content/Context;Ljava/util/List;)V

    .line 430
    .end local v6           #i:I
    .end local v9           #tmpList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/MailBillInfo;>;"
    :cond_4
    iget-object v10, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBillAdapter:Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;

    invoke-virtual {v10}, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->getNewBillSize()I

    move-result v8

    .line 431
    .local v8, newBillSize:I
    if-lez v8, :cond_5

    .line 432
    iget-object v11, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mTvBillCount:Landroid/widget/TextView;

    const/16 v10, 0xa

    if-ge v8, v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v10, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mTvBillCount:Landroid/widget/TextView;

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    :cond_5
    iget-boolean v10, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mReceiveComplete:Z

    if-eqz v10, :cond_0

    .line 438
    iget v10, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mTmpCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mTmpCount:I

    .line 440
    iget v10, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mTmpCount:I

    const/4 v11, 0x5

    if-lt v10, v11, :cond_0

    .line 441
    if-nez v1, :cond_7

    .line 442
    iget v10, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mContinueZeroResult:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mContinueZeroResult:I

    .line 445
    :goto_4
    iget v10, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mContinueZeroResult:I

    const/4 v11, 0x2

    if-lt v10, v11, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->finishParseMail()V

    goto/16 :goto_0

    .line 432
    :cond_6
    const-string v10, "N"

    goto :goto_3

    .line 444
    :cond_7
    iput v13, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mContinueZeroResult:I

    goto :goto_4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f090039

    if-ne v5, v6, :cond_4

    .line 201
    const-string v5, "yuan_import_parse_back"

    invoke-static {p0, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailPwd:Ljava/lang/String;

    invoke-static {v5}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mFirstLogin:I

    if-ne v5, v8, :cond_2

    .line 204
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v0, intent:Landroid/content/Intent;
    const-class v5, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->startActivity(Landroid/content/Intent;)V

    .line 207
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->finish()V

    .line 245
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    iget-boolean v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mHasParsed:Z

    if-eqz v5, :cond_3

    .line 210
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->sendNewBillBroadcast()V

    .line 212
    :cond_3
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->finish()V

    goto :goto_0

    .line 214
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0900bb

    if-ne v5, v6, :cond_5

    .line 215
    const-string v5, "yuan_import_parse_home"

    invoke-static {p0, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->jump2MainPage()V

    goto :goto_0

    .line 217
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0900bf

    if-ne v5, v6, :cond_6

    .line 218
    const-string v5, "yuan_import_parse_submit"

    invoke-static {p0, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    iput v8, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mParseMode:I

    .line 220
    new-instance v3, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;-><init>(Landroid/content/Context;)V

    .line 221
    .local v3, task:Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mOnMailSubmitProcessListener:Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;

    invoke-virtual {v3, v5}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->setOnMailSubmitProcessListener(Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;)V

    .line 222
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v4

    .line 223
    .local v4, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailName:Ljava/lang/String;

    .line 224
    .local v1, mailName:Ljava/lang/String;
    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v1, v5, v9

    const/4 v6, 0x3

    const-string v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, ""

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    goto :goto_0

    .line 225
    .end local v1           #mailName:Ljava/lang/String;
    .end local v3           #task:Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;
    .end local v4           #userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0900c6

    if-ne v5, v6, :cond_8

    .line 226
    const-string v5, "yuan_import_parse_marquee_textview_click"

    invoke-static {p0, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 230
    .local v2, tag:I
    if-ne v2, v8, :cond_7

    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 232
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v5, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;

    invoke-virtual {v0, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->startActivity(Landroid/content/Intent;)V

    .line 234
    const v5, 0x7f040003

    const v6, 0x7f040005

    invoke-virtual {p0, v5, v6}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 235
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7
    if-ne v2, v9, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->jump2MainPage()V

    goto/16 :goto_0

    .line 238
    .end local v2           #tag:I
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0902fa

    if-ne v5, v6, :cond_1

    .line 239
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->stopService()V

    .line 240
    iput-object v7, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mMailAccountId:Ljava/lang/String;

    .line 241
    iput-object v7, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSubmitTime:Ljava/lang/String;

    .line 242
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->initParseMail()V

    .line 243
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->dismissLoadingDialog()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const v4, 0x7f030032

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->setContentView(I)V

    .line 125
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 127
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "email_name"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailName:Ljava/lang/String;

    .line 128
    const-string v4, "email_pwd"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailPwd:Ljava/lang/String;

    .line 129
    const-string v4, "first_login"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mFirstLogin:I

    .line 130
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailName:Ljava/lang/String;

    if-nez v4, :cond_0

    if-eqz p1, :cond_0

    .line 131
    const-string v4, "email_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailName:Ljava/lang/String;

    .line 132
    const-string v4, "email_pwd"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailPwd:Ljava/lang/String;

    .line 133
    const-string v4, "first_login"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mFirstLogin:I

    .line 135
    :cond_0
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 157
    :goto_0
    return-void

    .line 139
    :cond_1
    const-string v4, "mail_account_id"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mMailAccountId:Ljava/lang/String;

    .line 140
    const-string v4, "submit_time"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSubmitTime:Ljava/lang/String;

    .line 142
    const-string v4, "MailParseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMailAccountId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mMailAccountId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mSubmitTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSubmitTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViews()V

    .line 145
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->initViews()V

    .line 148
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailPwd:Ljava/lang/String;

    invoke-static {v4}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 149
    iput v8, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mParseMode:I

    .line 150
    new-instance v2, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;-><init>(Landroid/content/Context;)V

    .line 151
    .local v2, task:Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mOnMailSubmitProcessListener:Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;

    invoke-virtual {v2, v4}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->setOnMailSubmitProcessListener(Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v3

    .line 153
    .local v3, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailName:Ljava/lang/String;

    .line 154
    .local v1, mailName:Ljava/lang/String;
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailPwd:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 156
    .end local v1           #mailName:Ljava/lang/String;
    .end local v2           #task:Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;
    .end local v3           #userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    :cond_2
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->initBroadcastMgr()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 162
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {v0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->destroy()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->stopService()V

    .line 167
    return-void
.end method

.method protected onImportOptionSelectd()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public onMailStatusListener(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V
    .locals 6
    .parameter "data"

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x1

    .line 454
    iget v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mParseMode:I

    if-ne v1, v4, :cond_1

    iget-boolean v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mLoginSuccess:Z

    if-nez v1, :cond_1

    .line 455
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 546
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->loginFail(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    .line 573
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 457
    :sswitch_1
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->dismissLoadingDialog()V

    .line 458
    const v1, 0x7f070024

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->loginFail(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    .line 467
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->loginFail(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    .line 471
    :sswitch_4
    const-string v1, "MailLoginActivity"

    const-string v2, "\u5bc6\u7801\u9519\u8bef"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->loginFail(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    .line 476
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->loginFail(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    .line 480
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->loginFail(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    .line 485
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->loginFail(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    .line 489
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->loginFail(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    .line 493
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->loginFail(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    .line 497
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->loginFail(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    .line 502
    :sswitch_b
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->loginFail(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    .line 506
    :sswitch_c
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->loginFail(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    .line 517
    :sswitch_d
    const-string v1, "MailLoginActivity"

    const-string v2, "\u767b\u5f55\u6210\u529f..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_1
    :sswitch_e
    iget v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mParseMode:I

    if-ne v1, v4, :cond_2

    iget-boolean v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mLoginSuccess:Z

    if-nez v1, :cond_2

    .line 553
    iput-boolean v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mLoginSuccess:Z

    .line 555
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->dismissLoadingDialog()V

    .line 556
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->initParseMail()V

    .line 559
    :cond_2
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mMarqueeTextView:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getStatusMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f070100

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/zhangdan/app/widget/mail/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getCode()I

    move-result v0

    .line 561
    .local v0, code:I
    const-string v1, "Bill"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",recentley = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getRecentlyComplete()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    if-eq v0, v5, :cond_3

    const/16 v1, 0xf

    if-eq v0, v1, :cond_3

    if-eq v0, v5, :cond_3

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xca

    if-ne v0, v1, :cond_5

    .line 565
    :cond_3
    iput-boolean v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mReceiveComplete:Z

    .line 566
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->finishParseMail()V

    goto/16 :goto_0

    .line 559
    .end local v0           #code:I
    :cond_4
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getStatusMsg()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 569
    .restart local v0       #code:I
    :cond_5
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getRecentlyComplete()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 570
    const-string v1, "Bill"

    const-string v2, "MailListActivity onMailStatusListener()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iput-boolean v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mReceiveComplete:Z

    goto/16 :goto_0

    .line 455
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
        0xc8 -> :sswitch_e
        0xc9 -> :sswitch_e
        0xca -> :sswitch_e
        0x12c -> :sswitch_e
        0x12d -> :sswitch_e
        0x12e -> :sswitch_e
        0x3e8 -> :sswitch_e
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 172
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    const-string v0, "email_name"

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "email_pwd"

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailPwd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "first_login"

    iget v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mFirstLogin:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    return-void
.end method

.method public showFinishDialog()V
    .locals 5

    .prologue
    .line 709
    new-instance v0, Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 710
    .local v0, dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    const v1, 0x7f070106

    const v2, 0x7f0c0022

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogContent(II)V

    .line 711
    const v1, 0x7f070159

    const v2, 0x7f07015a

    new-instance v3, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$2;-><init>(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Lcom/zhangdan/app/widget/CustomAlertDialog;)V

    new-instance v4, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$3;

    invoke-direct {v4, p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$3;-><init>(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Lcom/zhangdan/app/widget/CustomAlertDialog;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogButton(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 731
    invoke-virtual {v0}, Lcom/zhangdan/app/widget/CustomAlertDialog;->show()V

    .line 732
    return-void
.end method
