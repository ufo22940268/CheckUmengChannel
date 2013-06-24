.class public abstract Lcom/zhangdan/app/activities/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected mActionBarView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActionBarView(Landroid/content/Context;)Landroid/view/View;
.end method

.method protected getApplication()Lcom/zhangdan/app/ZhangdanApplication;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 46
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/ZhangdanApplication;

    .line 49
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseFragment;->getApplication()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    .line 37
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v1

    goto :goto_0
.end method

.method protected getDataManager()Lcom/zhangdan/app/global/DataManager;
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseFragment;->getApplication()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    .line 54
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v1

    .line 56
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseFragment;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseFragment;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected hasImportedEmailBillData()Z
    .locals 9

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseFragment;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v2

    .line 61
    .local v2, dataMgr:Lcom/zhangdan/app/global/DataManager;
    const/4 v0, 0x0

    .line 62
    .local v0, count:I
    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {v2}, Lcom/zhangdan/app/global/DataManager;->getUserBankInfoList()Ljava/util/List;

    move-result-object v4

    .line 64
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    if-eqz v4, :cond_1

    .line 65
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 66
    .local v1, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v1           #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    :cond_1
    if-eqz v0, :cond_2

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public abstract initActionBarView()V
.end method
