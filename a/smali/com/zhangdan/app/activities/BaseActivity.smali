.class public Lcom/zhangdan/app/activities/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# instance fields
.field private mLoadingDialog:Lcom/zhangdan/preferential/widget/LoadingDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissLoading()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseActivity;->mLoadingDialog:Lcom/zhangdan/preferential/widget/LoadingDialog;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/LoadingDialog;->dismiss()V

    .line 68
    return-void
.end method

.method public getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 50
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method public getDataManager()Lcom/zhangdan/app/global/DataManager;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 59
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v1

    return-object v1
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    new-instance v0, Lcom/zhangdan/preferential/widget/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/widget/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/BaseActivity;->mLoadingDialog:Lcom/zhangdan/preferential/widget/LoadingDialog;

    .line 28
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 39
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseActivity;->dismissLoading()V

    .line 41
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 33
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public setCurrUserInfo(Lcom/zhangdan/app/data/model/UserInfo;)V
    .locals 1
    .parameter "userInfo"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 45
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0, p1}, Lcom/zhangdan/app/ZhangdanApplication;->setCurrUserInfo(Lcom/zhangdan/app/data/model/UserInfo;)V

    .line 46
    return-void
.end method

.method public showLoading()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseActivity;->mLoadingDialog:Lcom/zhangdan/preferential/widget/LoadingDialog;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/LoadingDialog;->show()V

    .line 64
    return-void
.end method
