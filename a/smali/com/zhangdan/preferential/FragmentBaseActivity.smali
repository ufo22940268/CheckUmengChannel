.class public Lcom/zhangdan/preferential/FragmentBaseActivity;
.super Lcom/slidingmenu/lib/app/SlidingFragmentActivity;


# instance fields
.field protected a:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const v2, 0x7f0602f4

    invoke-super {p0, p1}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300db

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/FragmentBaseActivity;->a(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/FragmentBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/preferential/bm;

    invoke-direct {v1}, Lcom/zhangdan/preferential/bm;-><init>()V

    iput-object v1, p0, Lcom/zhangdan/preferential/FragmentBaseActivity;->a:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/zhangdan/preferential/FragmentBaseActivity;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/FragmentBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ListFragment;

    iput-object v0, p0, Lcom/zhangdan/preferential/FragmentBaseActivity;->a:Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onPause()V

    invoke-static {p0}, Lcom/umeng/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onResume()V

    invoke-static {p0}, Lcom/umeng/a/a;->b(Landroid/content/Context;)V

    return-void
.end method
