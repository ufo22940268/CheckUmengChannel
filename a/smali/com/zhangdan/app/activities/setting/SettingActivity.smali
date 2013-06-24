.class public Lcom/zhangdan/app/activities/setting/SettingActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;


# static fields
.field private static final DIALOG_BIND_ACCOUNT:I = 0x2

.field private static final DIALOG_LOGOUT:I = 0x1

.field private static final DIALOG_SETTING:I = 0x3

.field public static final REQ_BIND_ACCOUNT:I = 0x1


# instance fields
.field private mAvatarHandler:Lcom/zhangdan/app/img/AvatarHandler;

.field private mAvatarView:Lcom/zhangdan/app/widget/AvatarView;

.field private mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

.field private mIsGuest:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->mIsGuest:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/setting/SettingActivity;)Lcom/zhangdan/app/img/AvatarHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->mAvatarHandler:Lcom/zhangdan/app/img/AvatarHandler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zhangdan/app/activities/setting/SettingActivity;Lcom/zhangdan/app/img/AvatarHandler;)Lcom/zhangdan/app/img/AvatarHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->mAvatarHandler:Lcom/zhangdan/app/img/AvatarHandler;

    return-object p1
.end method

.method private initAccountInfo(Lcom/zhangdan/app/data/model/UserInfo;)V
    .locals 8
    .parameter "info"

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserInfo;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, from:Ljava/lang/String;
    const-string v5, "SettingActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v2, ""

    .line 85
    .local v2, accountType:Ljava/lang/String;
    const v5, 0x7f0900f8

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 86
    .local v4, textLabel:Landroid/widget/TextView;
    const-string v5, "sina"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    const v5, 0x7f07017a

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, account:Ljava/lang/String;
    const v5, 0x7f0900f9

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 97
    .local v1, accountText:Landroid/widget/TextView;
    const-string v5, "quick"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 98
    :cond_0
    const v5, 0x7f07013b

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->mIsGuest:Z

    .line 103
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void

    .line 88
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #accountText:Landroid/widget/TextView;
    :cond_1
    const-string v5, "qq"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    const v5, 0x7f07017b

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 91
    :cond_2
    const v5, 0x7f07017c

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 101
    .restart local v0       #account:Ljava/lang/String;
    .restart local v1       #accountText:Landroid/widget/TextView;
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->mIsGuest:Z

    goto :goto_1
.end method

.method private initAvatar()V
    .locals 2

    .prologue
    .line 107
    const v0, 0x7f0900f7

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/widget/AvatarView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->mAvatarView:Lcom/zhangdan/app/widget/AvatarView;

    .line 108
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->mAvatarView:Lcom/zhangdan/app/widget/AvatarView;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/widget/AvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->mAvatarView:Lcom/zhangdan/app/widget/AvatarView;

    invoke-static {p0, v0}, Lcom/zhangdan/app/img/AvatarHandler;->loadAvatar(Landroid/content/Context;Lcom/zhangdan/app/widget/AvatarView;)V

    .line 110
    new-instance v0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    .line 111
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->setOnAvatarChangedListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;)V

    .line 112
    return-void
.end method

.method private initVersion()V
    .locals 6

    .prologue
    const v5, 0x7f0900ff

    .line 118
    const v3, 0x7f0900fe

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 119
    .local v2, tvVersion:Landroid/widget/TextView;
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getCurrNewVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, newVersion:Ljava/lang/String;
    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getPackageVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, currVersion:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-static {v1, v0}, Lcom/zhangdan/app/util/CommonMethod;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 124
    const v3, 0x7f0900fd

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 6

    .prologue
    .line 64
    const v2, 0x7f09003c

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f070175

    invoke-static {v2, v3}, Lcom/zhangdan/app/activities/CommTitleMgr;->displayBlueTitle(Landroid/view/View;I)V

    .line 65
    const v2, 0x7f090039

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v0

    .line 68
    .local v0, info:Lcom/zhangdan/app/data/model/UserInfo;
    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->initAccountInfo(Lcom/zhangdan/app/data/model/UserInfo;)V

    .line 71
    const v2, 0x7f0900fa

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 72
    .local v1, text:Landroid/widget/TextView;
    const v2, 0x7f070176

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/zhangdan/app/activities/setting/SettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v2, 0x7f0900fc

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v2, 0x7f0900fb

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-direct {p0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->initAvatar()V

    .line 78
    invoke-direct {p0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->initVersion()V

    goto :goto_0
.end method

.method private showAvatarDiaog()V
    .locals 3

    .prologue
    .line 254
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0700b7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 256
    const v1, 0x7f060003

    new-instance v2, Lcom/zhangdan/app/activities/setting/SettingActivity$6;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/setting/SettingActivity$6;-><init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 268
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 269
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 273
    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/WrappedActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 274
    iget-object v2, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->mAvatarHandler:Lcom/zhangdan/app/img/AvatarHandler;

    if-eqz v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->mAvatarHandler:Lcom/zhangdan/app/img/AvatarHandler;

    invoke-virtual {v2, p1, p2, p3}, Lcom/zhangdan/app/img/AvatarHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 276
    :cond_0
    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 278
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v1

    .line 279
    .local v1, info:Lcom/zhangdan/app/data/model/UserInfo;
    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/setting/SettingActivity;->initAccountInfo(Lcom/zhangdan/app/data/model/UserInfo;)V

    .line 281
    .end local v0           #app:Lcom/zhangdan/app/ZhangdanApplication;
    .end local v1           #info:Lcom/zhangdan/app/data/model/UserInfo;
    :cond_1
    return-void
.end method

.method public onAvatarChanged()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->mAvatarView:Lcom/zhangdan/app/widget/AvatarView;

    invoke-static {p0, v0}, Lcom/zhangdan/app/img/AvatarHandler;->loadAvatar(Landroid/content/Context;Lcom/zhangdan/app/widget/AvatarView;)V

    .line 295
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 133
    .local v1, id:I
    sparse-switch v1, :sswitch_data_0

    .line 183
    :goto_0
    return-void

    .line 135
    :sswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->finish()V

    goto :goto_0

    .line 138
    :sswitch_1
    const-string v5, "yuan_setting_avatar"

    invoke-static {p0, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->showAvatarDiaog()V

    goto :goto_0

    .line 142
    :sswitch_2
    const-string v5, "yuan_setting_logout"

    invoke-static {p0, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    iget-boolean v5, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->mIsGuest:Z

    if-eqz v5, :cond_0

    .line 144
    const/4 v5, 0x2

    invoke-virtual {p0, v5, v6}, Lcom/zhangdan/app/activities/setting/SettingActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 146
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/zhangdan/app/activities/setting/SettingActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 149
    :sswitch_3
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getCurrApkUpdateInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, updateInfo:Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, obj:Lorg/json/JSONObject;
    new-instance v3, Lcom/umeng/update/UpdateResponse;

    invoke-direct {v3, v2}, Lcom/umeng/update/UpdateResponse;-><init>(Lorg/json/JSONObject;)V

    .line 153
    .local v3, resp:Lcom/umeng/update/UpdateResponse;
    const-string v5, "version"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    const-string v5, "version"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/umeng/update/UpdateResponse;->version:Ljava/lang/String;

    .line 155
    :cond_1
    const-string v5, "path"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 156
    const-string v5, "path"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/umeng/update/UpdateResponse;->path:Ljava/lang/String;

    .line 157
    :cond_2
    const-string v5, "hasUpdate"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 158
    const-string v5, "hasUpdate"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/umeng/update/UpdateResponse;->hasUpdate:Z

    .line 159
    :cond_3
    const-string v5, "updateLog"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 160
    const-string v5, "updateLog"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/umeng/update/UpdateResponse;->updateLog:Ljava/lang/String;

    .line 161
    :cond_4
    const-string v5, "delta"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 162
    const-string v5, "delta"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/umeng/update/UpdateResponse;->delta:Z

    .line 163
    :cond_5
    const-string v5, "new_md5"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 164
    const-string v5, "new_md5"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    .line 165
    :cond_6
    const-string v5, "patch_md5"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 166
    const-string v5, "patch_md5"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/umeng/update/UpdateResponse;->patch_md5:Ljava/lang/String;

    .line 167
    :cond_7
    const-string v5, "proto_ver"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 168
    const-string v5, "proto_ver"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/umeng/update/UpdateResponse;->proto_ver:Ljava/lang/String;

    .line 169
    :cond_8
    const-string v5, "size"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 170
    const-string v5, "size"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/umeng/update/UpdateResponse;->size:Ljava/lang/String;

    .line 171
    :cond_9
    const-string v5, "target_size"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 172
    const-string v5, "target_size"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/umeng/update/UpdateResponse;->target_size:Ljava/lang/String;

    .line 173
    :cond_a
    invoke-static {p0, v3}, Lcom/umeng/update/UmengUpdateAgent;->showUpdateDialog(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 174
    .end local v2           #obj:Lorg/json/JSONObject;
    .end local v3           #resp:Lcom/umeng/update/UpdateResponse;
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 179
    .end local v0           #e:Lorg/json/JSONException;
    .end local v4           #updateInfo:Ljava/lang/String;
    :sswitch_4
    const/4 v5, 0x3

    invoke-virtual {p0, v5, v6}, Lcom/zhangdan/app/activities/setting/SettingActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x7f090039 -> :sswitch_0
        0x7f0900f7 -> :sswitch_1
        0x7f0900fb -> :sswitch_4
        0x7f0900fc -> :sswitch_2
        0x7f0900fd -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->initViews()V

    .line 61
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "id"
    .parameter "args"

    .prologue
    const v6, 0x7f0c0024

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 187
    if-ne v5, p1, :cond_0

    .line 188
    new-instance v1, Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/widget/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 189
    .local v1, dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    const v3, 0x7f07017d

    invoke-virtual {v1, v3, v6}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogContent(II)V

    .line 190
    const v3, 0x7f07017e

    const v4, 0x7f07017f

    new-instance v5, Lcom/zhangdan/app/activities/setting/SettingActivity$1;

    invoke-direct {v5, p0}, Lcom/zhangdan/app/activities/setting/SettingActivity$1;-><init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V

    new-instance v6, Lcom/zhangdan/app/activities/setting/SettingActivity$2;

    invoke-direct {v6, p0}, Lcom/zhangdan/app/activities/setting/SettingActivity$2;-><init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogButton(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 250
    .end local v1           #dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    :goto_0
    return-object v1

    .line 203
    :cond_0
    if-ne v4, p1, :cond_1

    .line 204
    new-instance v1, Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/widget/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 205
    .restart local v1       #dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    const v3, 0x7f070181

    invoke-virtual {v1, v3, v6}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogContent(II)V

    .line 206
    const v3, 0x7f070192

    const v4, 0x7f070022

    new-instance v5, Lcom/zhangdan/app/activities/setting/SettingActivity$3;

    invoke-direct {v5, p0}, Lcom/zhangdan/app/activities/setting/SettingActivity$3;-><init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V

    new-instance v6, Lcom/zhangdan/app/activities/setting/SettingActivity$4;

    invoke-direct {v6, p0}, Lcom/zhangdan/app/activities/setting/SettingActivity$4;-><init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogButton(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 222
    .end local v1           #dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    :cond_1
    const/4 v3, 0x3

    if-ne v3, p1, :cond_2

    .line 223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0701ab

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 225
    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f070174

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x7f0700b8

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 226
    .local v2, items:[Ljava/lang/String;
    new-instance v3, Lcom/zhangdan/app/activities/setting/SettingActivity$5;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/setting/SettingActivity$5;-><init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 248
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 250
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #items:[Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 286
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {v0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->destroy()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    .line 290
    :cond_0
    return-void
.end method
