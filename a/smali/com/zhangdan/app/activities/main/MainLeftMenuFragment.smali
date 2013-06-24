.class public Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;
.super Lcom/zhangdan/app/activities/BaseFragment;
.source "MainLeftMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mActionBarClickListener:Landroid/view/View$OnClickListener;

.field private mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

.field private mMenuAdapter:Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;

.field private mOnAvatarChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;

.field private mOnItemClickListener:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$OnItemClickListener;

.field private mSelectedFlag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseFragment;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mSelectedFlag:I

    .line 98
    new-instance v0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;-><init>(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mOnItemClickListener:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$OnItemClickListener;

    .line 267
    new-instance v0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$2;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$2;-><init>(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mOnAvatarChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;

    .line 333
    new-instance v0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$3;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$3;-><init>(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mActionBarClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mMenuAdapter:Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->hasImportedEmailBillData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mSelectedFlag:I

    return v0
.end method

.method static synthetic access$202(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mSelectedFlag:I

    return p1
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->hasImportedEmailBillData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->initAvatar()V

    return-void
.end method

.method private initAccountInfo()V
    .locals 9

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v2

    .line 285
    .local v2, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mActionBarView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 286
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mActionBarView:Landroid/view/View;

    const v5, 0x7f090048

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f070176

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, userName:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mActionBarView:Landroid/view/View;

    const v5, 0x7f090046

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 289
    .local v1, tvName:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserInfo;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, from:Ljava/lang/String;
    const-string v4, "quick"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    :cond_0
    const v4, 0x7f07013b

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 293
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    .end local v0           #from:Ljava/lang/String;
    .end local v1           #tvName:Landroid/widget/TextView;
    .end local v3           #userName:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private initAvatar()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mActionBarView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mActionBarView:Landroid/view/View;

    const v2, 0x7f090044

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/widget/AvatarView;

    invoke-static {v1, v0}, Lcom/zhangdan/app/img/AvatarHandler;->loadAvatar(Landroid/content/Context;Lcom/zhangdan/app/widget/AvatarView;)V

    goto :goto_0
.end method


# virtual methods
.method public checkNewVersion()V
    .locals 6

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 355
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-static {v0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getCurrNewVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, newVersion:Ljava/lang/String;
    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->getPackageVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, currVersion:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mActionBarView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 360
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mActionBarView:Landroid/view/View;

    const v5, 0x7f090047

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 361
    .local v3, updateView:Landroid/view/View;
    invoke-static {v2, v1}, Lcom/zhangdan/app/util/CommonMethod;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    goto :goto_1
.end method

.method public getActionBarView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 300
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 301
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mActionBarView:Landroid/view/View;

    .line 302
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->initActionBarView()V

    .line 304
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->initAccountInfo()V

    .line 305
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mActionBarView:Landroid/view/View;

    return-object v1
.end method

.method public initActionBarView()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mActionBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mActionBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->checkNewVersion()V

    .line 313
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->initAvatar()V

    .line 315
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstance"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/16 v3, 0xd

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 331
    :goto_0
    return-void

    .line 321
    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "new_left_menu_bottom_search"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    .line 323
    .local v0, activity:Lcom/zhangdan/app/activities/MainFragmentActivity;
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mMenuAdapter:Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;

    invoke-virtual {v1, v3}, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->setSelectedItemFlag(I)V

    .line 324
    iget v1, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mSelectedFlag:I

    if-eq v1, v3, :cond_0

    .line 325
    new-instance v1, Lcom/zhangdan/preferential/SearchFragment;

    invoke-direct {v1}, Lcom/zhangdan/preferential/SearchFragment;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->switchFragment(Lcom/zhangdan/app/activities/BaseFragment;)V

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->showContent()V

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x7f090027
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance v0, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mMenuAdapter:Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;

    .line 62
    new-instance v0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    .line 63
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mOnAvatarChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->setOnAvatarChangedListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;)V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 69
    const v2, 0x7f0300e2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, view:Landroid/view/View;
    const v2, 0x7f09008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 71
    .local v0, listView:Landroid/widget/ListView;
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mMenuAdapter:Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mOnItemClickListener:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseFragment;->onDestroy()V

    .line 85
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {v0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->destroy()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    .line 89
    :cond_0
    return-void
.end method

.method public setSelectedItemFlag(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mMenuAdapter:Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;

    if-eqz v0, :cond_0

    .line 93
    iput p1, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mSelectedFlag:I

    .line 94
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mMenuAdapter:Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->setSelectedItemFlag(I)V

    .line 96
    :cond_0
    return-void
.end method
