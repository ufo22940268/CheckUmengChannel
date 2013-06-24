.class public Lcom/zhangdan/preferential/FragmentBaseActivity;
.super Lcom/slidingmenu/lib/app/SlidingFragmentActivity;
.source "FragmentBaseActivity.java"


# instance fields
.field protected mFrag:Landroid/support/v4/app/Fragment;

.field private mTitleRes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const v2, 0x7f090300

    .line 51
    invoke-super {p0, p1}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v1, 0x7f0300e0

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/FragmentBaseActivity;->setBehindContentView(I)V

    .line 57
    if-nez p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/zhangdan/preferential/FragmentBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 59
    .local v0, t:Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Lcom/zhangdan/preferential/TagFragment;

    invoke-direct {v1}, Lcom/zhangdan/preferential/TagFragment;-><init>()V

    iput-object v1, p0, Lcom/zhangdan/preferential/FragmentBaseActivity;->mFrag:Landroid/support/v4/app/Fragment;

    .line 61
    iget-object v1, p0, Lcom/zhangdan/preferential/FragmentBaseActivity;->mFrag:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 62
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 66
    .end local v0           #t:Landroid/support/v4/app/FragmentTransaction;
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/FragmentBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/ListFragment;

    iput-object v1, p0, Lcom/zhangdan/preferential/FragmentBaseActivity;->mFrag:Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onPause()V

    .line 77
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onResume()V

    .line 71
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 72
    return-void
.end method
