.class public Lcom/zhangdan/preferential/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# instance fields
.field private mIsRunning:Z

.field private mLoadingDialog:Lcom/zhangdan/preferential/widget/LoadingDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissLoading()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zhangdan/preferential/BaseActivity;->mLoadingDialog:Lcom/zhangdan/preferential/widget/LoadingDialog;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/LoadingDialog;->dismiss()V

    .line 66
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 71
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/ViewUtils;->setReturnTransition(Landroid/app/Activity;)V

    .line 72
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Lcom/zhangdan/preferential/widget/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/widget/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/BaseActivity;->mLoadingDialog:Lcom/zhangdan/preferential/widget/LoadingDialog;

    .line 35
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 50
    invoke-virtual {p0}, Lcom/zhangdan/preferential/BaseActivity;->dismissLoading()V

    .line 51
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 40
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const v0, 0x7f0701dd

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 43
    :cond_0
    iput-boolean v1, p0, Lcom/zhangdan/preferential/BaseActivity;->mIsRunning:Z

    .line 44
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/BaseActivity;->mIsRunning:Z

    .line 58
    return-void
.end method

.method public showLoading()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zhangdan/preferential/BaseActivity;->mLoadingDialog:Lcom/zhangdan/preferential/widget/LoadingDialog;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/LoadingDialog;->show()V

    .line 62
    return-void
.end method
