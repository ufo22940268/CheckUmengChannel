.class public Lcom/zhangdan/app/activities/chart/ConsumeCategoryActvity;
.super Lcom/zhangdan/app/activities/BaseFragmentActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060039

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryActvity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryActvity;->setContentView(I)V

    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080198

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/d;->a(Landroid/view/View;I)V

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryActvity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "year"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "month"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryActvity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    new-instance v4, Lcom/zhangdan/app/activities/chart/a;

    invoke-direct {v4}, Lcom/zhangdan/app/activities/chart/a;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "user_name"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "year"

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "month"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/activities/chart/a;->setArguments(Landroid/os/Bundle;)V

    const v0, 0x7f060087

    invoke-virtual {v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
