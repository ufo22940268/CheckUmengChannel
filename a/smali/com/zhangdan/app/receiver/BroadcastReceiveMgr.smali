.class public Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;
.super Ljava/lang/Object;
.source "BroadcastReceiveMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBankChangedListener;,
        Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBillParseListener;,
        Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailStatusListener;,
        Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;,
        Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;,
        Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;,
        Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;,
        Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;
    }
.end annotation


# static fields
.field public static final ACTION_INTENT_AVATAR_CHANGED:Ljava/lang/String; = "com.zhangdan.app.download_avatar"

.field public static final ACTION_INTENT_BANK_CHANGED:Ljava/lang/String; = "com.zhangdan.app.bank_changed"

.field public static final ACTION_INTENT_DOWNLAOD_PROGRESS:Ljava/lang/String; = "com.zhangdan.app.download_progress"

.field public static final ACTION_INTENT_DOWNLOAD_DATA_END:Ljava/lang/String; = "com.zhangdan.app.download_data_end"

.field public static final ACTION_INTENT_DOWNLOAD_DATA_START:Ljava/lang/String; = "com.zhangdan.app.download_data_start"

.field public static final ACTION_INTENT_MAIL_ACCOUNT_UPDATE:Ljava/lang/String; = "com.zhangdan.app.mail_account_update"

.field public static final ACTION_INTENT_MAIL_STATUS:Ljava/lang/String; = "com.zhangdan.app.mail_status"

.field public static final ACTION_INTENT_NEW_BILL:Ljava/lang/String; = "com.zhangdan.app.new_bill"

.field public static final ACTION_INTENT_PARSE_BILL:Ljava/lang/String; = "com.zhangdan.app.parse_bill"

.field public static final ACTION_INTENT_USER_BANK_CHANGED:Ljava/lang/String; = "com.zhangdan.app.user_bank_changed"

.field public static final EXTRA_KEY_NEW_BILL_COUNT:Ljava/lang/String; = "bill_count"

.field public static final EXTRA_KEY_UB_ID:Ljava/lang/String; = "ub_id"

.field public static final EXTRA_KEY_UB_STATUS:Ljava/lang/String; = "status"

.field public static final EXTRA_KEY_USER_BANK_TYPE:Ljava/lang/String; = "user_bank_type"

.field public static final MSG_ON_AVATAR_CHANGED:I = 0x8

.field public static final MSG_ON_BANK_CHANGED:I = 0x400

.field public static final MSG_ON_DOWNLAOD_PROGRESS:I = 0x4

.field public static final MSG_ON_DOWNLOAD_DATA_END:I = 0x2

.field public static final MSG_ON_DOWNLOAD_DATA_START:I = 0x1

.field public static final MSG_ON_MAIL_ACCOUNT_UPDATE:I = 0x20

.field public static final MSG_ON_MAIL_STATUS:I = 0x100

.field public static final MSG_ON_NEW_BILL:I = 0x80

.field public static final MSG_ON_PARSE_BILL:I = 0x200

.field public static final MSG_ON_USER_BANK_CHANGED:I = 0x40

.field public static final MSG_RECEIVE_ALL:I = -0x1


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mOnAvatarChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;

.field private mOnBankChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBankChangedListener;

.field private mOnBillParseListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBillParseListener;

.field private mOnDownloadProgressListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;

.field private mOnMailAccountListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;

.field private mOnMailStatusListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailStatusListener;

.field private mOnNewBillListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;

.field private mOnUserBankDataChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mContext:Landroid/content/Context;

    .line 81
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnDownloadProgressListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;

    .line 82
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnAvatarChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;

    .line 83
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnMailAccountListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;

    .line 85
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnUserBankDataChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;

    .line 87
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnNewBillListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;

    .line 89
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnMailStatusListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailStatusListener;

    .line 90
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnBillParseListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBillParseListener;

    .line 92
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnBankChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBankChangedListener;

    .line 206
    new-instance v0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;-><init>(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)V

    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    iput-object p1, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mContext:Landroid/content/Context;

    .line 150
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->registerReceiver(Landroid/content/Context;I)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "receiveMessage"

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mContext:Landroid/content/Context;

    .line 81
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnDownloadProgressListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;

    .line 82
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnAvatarChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;

    .line 83
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnMailAccountListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;

    .line 85
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnUserBankDataChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;

    .line 87
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnNewBillListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;

    .line 89
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnMailStatusListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailStatusListener;

    .line 90
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnBillParseListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBillParseListener;

    .line 92
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnBankChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBankChangedListener;

    .line 206
    new-instance v0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;-><init>(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)V

    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    iput-object p1, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mContext:Landroid/content/Context;

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->registerReceiver(Landroid/content/Context;I)V

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnDownloadProgressListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnAvatarChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnMailAccountListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnUserBankDataChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnNewBillListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnMailStatusListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailStatusListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBillParseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnBillParseListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBillParseListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBankChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnBankChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBankChangedListener;

    return-object v0
.end method

.method private registerReceiver(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "receiveMessage"

    .prologue
    .line 168
    iget-object v1, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_a

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .local v0, intentFilter:Landroid/content/IntentFilter;
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 171
    const-string v1, "com.zhangdan.app.download_data_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    :cond_0
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    .line 174
    const-string v1, "com.zhangdan.app.download_data_end"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    :cond_1
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    .line 177
    const-string v1, "com.zhangdan.app.download_progress"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    :cond_2
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_3

    .line 180
    const-string v1, "com.zhangdan.app.download_avatar"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    :cond_3
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_4

    .line 183
    const-string v1, "com.zhangdan.app.mail_account_update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    :cond_4
    and-int/lit8 v1, p2, 0x40

    if-eqz v1, :cond_5

    .line 186
    const-string v1, "com.zhangdan.app.user_bank_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    :cond_5
    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_6

    .line 189
    const-string v1, "com.zhangdan.app.new_bill"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    :cond_6
    and-int/lit16 v1, p2, 0x100

    if-eqz v1, :cond_7

    .line 192
    const-string v1, "BroadcastReceiveMgr"

    const-string v2, "ACTION_INTENT_MAIL_STATUS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v1, "com.zhangdan.app.mail_status"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    :cond_7
    and-int/lit16 v1, p2, 0x200

    if-eqz v1, :cond_8

    .line 196
    const-string v1, "BroadcastReceiveMgr"

    const-string v2, "ACTION_INTENT_MAIL_STATUS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v1, "com.zhangdan.app.parse_bill"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    :cond_8
    and-int/lit16 v1, p2, 0x400

    if-eqz v1, :cond_9

    .line 200
    const-string v1, "com.zhangdan.app.bank_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    :cond_9
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 204
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_a
    return-void
.end method

.method private unRegisterReceiver()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnDownloadProgressListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;

    .line 301
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnAvatarChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;

    .line 302
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnMailAccountListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;

    .line 303
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnUserBankDataChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;

    .line 304
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnNewBillListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;

    .line 305
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnMailStatusListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailStatusListener;

    .line 306
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnBillParseListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBillParseListener;

    .line 307
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnBankChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBankChangedListener;

    .line 308
    invoke-direct {p0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->unRegisterReceiver()V

    .line 309
    iput-object v0, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mContext:Landroid/content/Context;

    .line 310
    return-void
.end method

.method public setOnAvatarChangedListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnAvatarChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;

    .line 270
    return-void
.end method

.method public setOnBankChangedListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBankChangedListener;)V
    .locals 0
    .parameter "onBankChangedListener"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnBankChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBankChangedListener;

    .line 294
    return-void
.end method

.method public setOnBillParseListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBillParseListener;)V
    .locals 0
    .parameter "onBillParseListener"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnBillParseListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBillParseListener;

    .line 290
    return-void
.end method

.method public setOnDownloadProgressListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnDownloadProgressListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;

    .line 266
    return-void
.end method

.method public setOnMailAccountListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;)V
    .locals 0
    .parameter "onMailAccountListener"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnMailAccountListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;

    .line 274
    return-void
.end method

.method public setOnMailStatusListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailStatusListener;)V
    .locals 0
    .parameter "onMailStatusListener"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnMailStatusListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailStatusListener;

    .line 286
    return-void
.end method

.method public setOnNewBillListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;)V
    .locals 0
    .parameter "onNewBillListener"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnNewBillListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;

    .line 282
    return-void
.end method

.method public setOnUserBankDataChangedListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;)V
    .locals 0
    .parameter "onUserBankDataChangedListener"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnUserBankDataChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;

    .line 278
    return-void
.end method
