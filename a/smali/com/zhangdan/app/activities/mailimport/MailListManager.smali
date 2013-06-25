.class public Lcom/zhangdan/app/activities/mailimport/MailListManager;
.super Ljava/lang/Object;
.source "MailListManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

.field private mListView:Landroid/widget/ListView;

.field private mMailListAdapter:Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .parameter "activity"
    .parameter "view"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mActivity:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mView:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mView:Landroid/view/View;

    const v1, 0x7f0901fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mListView:Landroid/widget/ListView;

    .line 41
    return-void
.end method


# virtual methods
.method public initMailListView(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/MailAccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/MailAccountInfo;>;"
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300b8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, footView:Landroid/view/View;
    const v1, 0x7f09028a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 48
    new-instance v1, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p1}, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mMailListAdapter:Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;

    .line 49
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mMailListAdapter:Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    new-instance v1, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    .line 52
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {v1, p0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->setOnMailAccountListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;)V

    .line 53
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f09028a

    if-ne v1, v2, :cond_0

    .line 65
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mActivity:Landroid/app/Activity;

    const-string v2, "yuan_import_add_new_mail"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 69
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mActivity:Landroid/app/Activity;

    const v2, 0x7f040003

    const v3, 0x7f040005

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 71
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {v0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->destroy()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    .line 60
    :cond_0
    return-void
.end method

.method public onMailAccountUpdate()V
    .locals 5

    .prologue
    .line 75
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 78
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v2

    .line 79
    .local v2, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-eqz v2, :cond_0

    .line 81
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/data/db/util/MailAccountDbUtil;->loadAllMailAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 82
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/MailAccountInfo;>;"
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mMailListAdapter:Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailListManager;->mMailListAdapter:Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;

    invoke-virtual {v3, v1}, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->changeData(Ljava/util/List;)V

    goto :goto_0
.end method
