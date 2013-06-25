.class public Lcom/zhangdan/app/activities/account/LoadingActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;
.source "LoadingActivity.java"


# static fields
.field private static final MSG_LOGIN_FAIL:I = 0x2

.field private static final MSG_UPDATE_PROGRESS:I = 0x1


# instance fields
.field private mAvatarView:Lcom/zhangdan/app/widget/AvatarView;

.field private mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

.field private mCurrMaxProgress:I

.field private mCurrProgress:I

.field private mHander:Landroid/os/Handler;

.field private mOnDownloadProgressListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;

.field private mProgressBar:Lcom/zhangdan/app/widget/LoadingProgressBar;

.field private mTvAccountType:Landroid/widget/TextView;

.field private mTvLoadingDesc:Landroid/widget/TextView;

.field private mTvLoadingProgress:Landroid/widget/TextView;

.field private mTvUserName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    .line 38
    iput v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrProgress:I

    .line 39
    iput v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrMaxProgress:I

    .line 94
    new-instance v0, Lcom/zhangdan/app/activities/account/LoadingActivity$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/account/LoadingActivity$1;-><init>(Lcom/zhangdan/app/activities/account/LoadingActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mHander:Landroid/os/Handler;

    .line 146
    new-instance v0, Lcom/zhangdan/app/activities/account/LoadingActivity$2;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/account/LoadingActivity$2;-><init>(Lcom/zhangdan/app/activities/account/LoadingActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mOnDownloadProgressListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/account/LoadingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrProgress:I

    return v0
.end method

.method static synthetic access$002(Lcom/zhangdan/app/activities/account/LoadingActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrProgress:I

    return p1
.end method

.method static synthetic access$012(Lcom/zhangdan/app/activities/account/LoadingActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iget v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrProgress:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrProgress:I

    return v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/account/LoadingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrMaxProgress:I

    return v0
.end method

.method static synthetic access$102(Lcom/zhangdan/app/activities/account/LoadingActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrMaxProgress:I

    return p1
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/account/LoadingActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->setLoadingProgress(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/account/LoadingActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/account/LoadingActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->setLoadingDesc(Ljava/lang/String;)V

    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f0900c7

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/widget/AvatarView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mAvatarView:Lcom/zhangdan/app/widget/AvatarView;

    .line 87
    const v0, 0x7f0900c9

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mTvUserName:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0900ca

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/widget/LoadingProgressBar;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mProgressBar:Lcom/zhangdan/app/widget/LoadingProgressBar;

    .line 89
    const v0, 0x7f0900cc

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mTvLoadingDesc:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0900cb

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mTvLoadingProgress:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0900c8

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mTvAccountType:Landroid/widget/TextView;

    .line 92
    return-void
.end method

.method private initBroadcastManager()V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    .line 131
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mOnDownloadProgressListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->setOnDownloadProgressListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;)V

    .line 132
    return-void
.end method

.method private requestDownloadData()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/zhangdan/app/service/DownloadDataService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 124
    return-void
.end method

.method private setLoadingDesc(Ljava/lang/String;)V
    .locals 1
    .parameter "desc"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mTvLoadingDesc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method private setLoadingProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mProgressBar:Lcom/zhangdan/app/widget/LoadingProgressBar;

    invoke-virtual {v0, p1}, Lcom/zhangdan/app/widget/LoadingProgressBar;->setProgress(I)V

    .line 114
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mTvLoadingProgress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v2, p1, 0x64

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method private unRegisterBroadcast()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {v0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->destroy()V

    .line 140
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    .line 141
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v4, 0x7f030033

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/account/LoadingActivity;->setContentView(I)V

    .line 47
    invoke-direct {p0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->findViews()V

    .line 49
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v3

    .line 50
    .local v3, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    :cond_0
    const v4, 0x7f07013b

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/account/LoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    :cond_1
    iget-object v4, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mTvUserName:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const-string v0, ""

    .line 56
    .local v0, accType:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserInfo;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, from:Ljava/lang/String;
    const-string v4, "sina"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    const v4, 0x7f07017a

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/account/LoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    iget-object v4, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mTvAccountType:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-direct {p0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->initBroadcastManager()V

    .line 67
    iget-object v4, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mAvatarView:Lcom/zhangdan/app/widget/AvatarView;

    invoke-static {p0, v4}, Lcom/zhangdan/app/img/AvatarHandler;->loadAvatar(Landroid/content/Context;Lcom/zhangdan/app/widget/AvatarView;)V

    .line 69
    invoke-direct {p0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->requestDownloadData()V

    .line 70
    iget-object v4, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mHander:Landroid/os/Handler;

    const/4 v5, 0x1

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 71
    return-void

    .line 59
    :cond_2
    const-string v4, "qq"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 60
    const v4, 0x7f07017b

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/account/LoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_3
    const v4, 0x7f07017c

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/account/LoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onDestroy()V

    .line 81
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->mHander:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    invoke-direct {p0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->unRegisterBroadcast()V

    .line 83
    return-void
.end method
