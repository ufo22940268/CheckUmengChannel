.class public Lcom/zhangdan/app/activities/SplashActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;,
        Lcom/zhangdan/app/activities/SplashActivity$InitTask;,
        Lcom/zhangdan/app/activities/SplashActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final MSG_INIT_DONE:I = 0x1

.field private static final MSG_UPGRADE_FROM_OLD_ACCOUNT:I = 0x2


# instance fields
.field private mMyHandler:Lcom/zhangdan/app/activities/SplashActivity$MyHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    .line 101
    new-instance v0, Lcom/zhangdan/app/activities/SplashActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/SplashActivity$MyHandler;-><init>(Lcom/zhangdan/app/activities/SplashActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/SplashActivity;->mMyHandler:Lcom/zhangdan/app/activities/SplashActivity$MyHandler;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/SplashActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/zhangdan/app/activities/SplashActivity;->jump2MainPage()V

    return-void
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/SplashActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/zhangdan/app/activities/SplashActivity;->jump2NewImportPage()V

    return-void
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/SplashActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/zhangdan/app/activities/SplashActivity;->jump2LoadingPage()V

    return-void
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/SplashActivity;)Lcom/zhangdan/app/data/model/UserInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/zhangdan/app/activities/SplashActivity;->initUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/SplashActivity;)Lcom/zhangdan/app/activities/SplashActivity$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zhangdan/app/activities/SplashActivity;->mMyHandler:Lcom/zhangdan/app/activities/SplashActivity$MyHandler;

    return-object v0
.end method

.method private initUserInfo()Lcom/zhangdan/app/data/model/UserInfo;
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 164
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/SplashActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v5

    .line 165
    .local v5, loginInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-eqz v5, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/SplashActivity;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v4

    .line 167
    .local v4, dataManager:Lcom/zhangdan/app/global/DataManager;
    invoke-virtual {v4}, Lcom/zhangdan/app/global/DataManager;->isLoadDataDone()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 168
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/zhangdan/app/activities/SplashActivity;->startSyncService(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v4}, Lcom/zhangdan/app/global/DataManager;->getCacheTime()J

    move-result-wide v0

    .line 172
    .local v0, cacheTime:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 173
    .local v3, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 174
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, nowTimeStr:Ljava/lang/String;
    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 176
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, cacheTimeStr:Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 179
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, p0, v9}, Lcom/zhangdan/app/global/DataManager;->initData(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    move-object v6, v5

    .line 196
    .end local v0           #cacheTime:J
    .end local v2           #cacheTimeStr:Ljava/lang/String;
    .end local v3           #cal:Ljava/util/Calendar;
    .end local v4           #dataManager:Lcom/zhangdan/app/global/DataManager;
    .end local v5           #loginInfo:Lcom/zhangdan/app/data/model/UserInfo;
    .end local v7           #nowTimeStr:Ljava/lang/String;
    .local v6, loginInfo:Lcom/zhangdan/app/data/model/UserInfo;
    :goto_0
    return-object v6

    .line 186
    .end local v6           #loginInfo:Lcom/zhangdan/app/data/model/UserInfo;
    .restart local v5       #loginInfo:Lcom/zhangdan/app/data/model/UserInfo;
    :cond_1
    invoke-static {p0}, Lcom/zhangdan/app/data/db/util/SysMasterDbUtil;->getCurrentUserInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 187
    .local v8, userInfo:Ljava/lang/String;
    invoke-static {v8}, Lcom/zhangdan/app/api/AccountApi;->parseUserSuiInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v5

    .line 188
    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/SplashActivity;->setCurrUserInfo(Lcom/zhangdan/app/data/model/UserInfo;)V

    .line 191
    if-eqz v5, :cond_2

    .line 192
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/SplashActivity;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v4

    .line 193
    .restart local v4       #dataManager:Lcom/zhangdan/app/global/DataManager;
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, p0, v9}, Lcom/zhangdan/app/global/DataManager;->initData(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/zhangdan/app/activities/SplashActivity;->startSyncService(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4           #dataManager:Lcom/zhangdan/app/global/DataManager;
    :cond_2
    move-object v6, v5

    .line 196
    .end local v5           #loginInfo:Lcom/zhangdan/app/data/model/UserInfo;
    .restart local v6       #loginInfo:Lcom/zhangdan/app/data/model/UserInfo;
    goto :goto_0
.end method

.method private jump2LoadingPage()V
    .locals 2

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 221
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/SplashActivity;->finish()V

    .line 222
    return-void
.end method

.method private jump2MainPage()V
    .locals 3

    .prologue
    .line 204
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 206
    .local v0, data:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 207
    const-string v2, "launch_uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 209
    :cond_0
    const-class v2, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 211
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/SplashActivity;->finish()V

    .line 212
    return-void
.end method

.method private jump2NewImportPage()V
    .locals 3

    .prologue
    .line 228
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getFirstUseFlag(Landroid/content/Context;)I

    move-result v0

    .line 230
    .local v0, firstUseFlag:I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 231
    .local v1, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 232
    const-class v2, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 236
    :goto_0
    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 237
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/SplashActivity;->finish()V

    .line 238
    return-void

    .line 234
    :cond_0
    const-class v2, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private startSyncService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "userId"
    .parameter "token"

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/zhangdan/app/service/SyncService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 153
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v1, "token"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/SplashActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 156
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/SplashActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->updateOnlineConfig(Landroid/content/Context;)V

    .line 45
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zhangdan/app/activities/SplashActivity$InitTask;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/SplashActivity$InitTask;-><init>(Lcom/zhangdan/app/activities/SplashActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 46
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onDestroy()V

    .line 55
    return-void
.end method
