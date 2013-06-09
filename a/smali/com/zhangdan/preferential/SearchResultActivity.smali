.class public Lcom/zhangdan/preferential/SearchResultActivity;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/zhangdan/preferential/as;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/SearchResultActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f060037
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f0602e9

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300f2

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SearchResultActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/SearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.zhangdan.preferential.MIX_VIEW_TAG_RESULT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/zhangdan/preferential/as;

    invoke-direct {v1, v3}, Lcom/zhangdan/preferential/as;-><init>(I)V

    iput-object v1, p0, Lcom/zhangdan/preferential/SearchResultActivity;->a:Lcom/zhangdan/preferential/as;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zhangdan/preferential/SearchResultActivity;->a:Lcom/zhangdan/preferential/as;

    invoke-virtual {v1, v0}, Lcom/zhangdan/preferential/as;->a(Landroid/os/Bundle;)V

    const-string v1, "type_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/zhangdan/preferential/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0801d6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/zhangdan/preferential/SearchResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/SearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/zhangdan/preferential/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/zhangdan/preferential/SearchResultActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f060026

    iget-object v2, p0, Lcom/zhangdan/preferential/SearchResultActivity;->a:Lcom/zhangdan/preferential/as;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/SearchResultActivity;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/preferential/SearchResultActivity;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    const-string v2, "com.zhangdan.preferential.MIX_VIEW_SEARCH_RESULT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/zhangdan/preferential/as;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/zhangdan/preferential/as;-><init>(I)V

    iput-object v1, p0, Lcom/zhangdan/preferential/SearchResultActivity;->a:Lcom/zhangdan/preferential/as;

    iget-object v1, p0, Lcom/zhangdan/preferential/SearchResultActivity;->a:Lcom/zhangdan/preferential/as;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/preferential/as;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/z;->c(Landroid/app/Activity;)V

    return-void
.end method
