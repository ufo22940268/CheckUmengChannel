.class public Lcom/zhangdan/preferential/SearchResultActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SearchResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBackView:Landroid/view/View;

.field private mFragment:Lcom/zhangdan/preferential/ShopListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private configureTitle()V
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/zhangdan/preferential/SearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, title:Ljava/lang/String;
    const v2, 0x7f0902f5

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/SearchResultActivity;->mBackView:Landroid/view/View;

    .line 71
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zhangdan/preferential/SearchResultActivity;->mBackView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 81
    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/SearchResultActivity;->finish()V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x7f090037
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v4, 0x7f0300f9

    invoke-virtual {p0, v4}, Lcom/zhangdan/preferential/SearchResultActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/zhangdan/preferential/SearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 36
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.zhangdan.preferential.MIX_VIEW_TAG_RESULT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 38
    new-instance v4, Lcom/zhangdan/preferential/ShopListFragment;

    invoke-direct {v4, v6}, Lcom/zhangdan/preferential/ShopListFragment;-><init>(I)V

    iput-object v4, p0, Lcom/zhangdan/preferential/SearchResultActivity;->mFragment:Lcom/zhangdan/preferential/ShopListFragment;

    .line 39
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 40
    .local v1, data:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 41
    iget-object v4, p0, Lcom/zhangdan/preferential/SearchResultActivity;->mFragment:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-virtual {v4, v1}, Lcom/zhangdan/preferential/ShopListFragment;->setModeData(Landroid/os/Bundle;)V

    .line 42
    const-string v4, "type_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, typeName:Ljava/lang/String;
    const v4, 0x7f0902f5

    invoke-virtual {p0, v4}, Lcom/zhangdan/preferential/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0701de

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/zhangdan/preferential/SearchResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .end local v1           #data:Landroid/os/Bundle;
    .end local v3           #typeName:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/zhangdan/preferential/SearchResultActivity;->configureTitle()V

    .line 52
    invoke-virtual {p0}, Lcom/zhangdan/preferential/SearchResultActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f090026

    iget-object v6, p0, Lcom/zhangdan/preferential/SearchResultActivity;->mFragment:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 57
    invoke-direct {p0}, Lcom/zhangdan/preferential/SearchResultActivity;->findViews()V

    .line 58
    invoke-direct {p0}, Lcom/zhangdan/preferential/SearchResultActivity;->initViews()V

    .line 59
    return-void

    .line 45
    :cond_1
    const-string v4, "com.zhangdan.preferential.MIX_VIEW_SEARCH_RESULT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    new-instance v4, Lcom/zhangdan/preferential/ShopListFragment;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/zhangdan/preferential/ShopListFragment;-><init>(I)V

    iput-object v4, p0, Lcom/zhangdan/preferential/SearchResultActivity;->mFragment:Lcom/zhangdan/preferential/ShopListFragment;

    .line 47
    iget-object v4, p0, Lcom/zhangdan/preferential/SearchResultActivity;->mFragment:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zhangdan/preferential/ShopListFragment;->setModeData(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 89
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/ViewUtils;->setReturnTransition(Landroid/app/Activity;)V

    .line 90
    return-void
.end method
