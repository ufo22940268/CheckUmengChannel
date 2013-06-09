.class public Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;
.super Lcom/zhangdan/app/activities/BaseFragmentActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Lcom/zhangdan/app/activities/shopping/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->b:Lcom/zhangdan/app/activities/shopping/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->b:Lcom/zhangdan/app/activities/shopping/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zhangdan/app/activities/shopping/h;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060039

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->setContentView(I)V

    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080111

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/d;->a(Landroid/view/View;I)V

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "category_id"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "username"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "year"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "month"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    new-instance v5, Lcom/zhangdan/app/activities/shopping/h;

    invoke-direct {v5}, Lcom/zhangdan/app/activities/shopping/h;-><init>()V

    iput-object v5, p0, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->b:Lcom/zhangdan/app/activities/shopping/h;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "category_id"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "username"

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "year"

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "month"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->b:Lcom/zhangdan/app/activities/shopping/h;

    invoke-virtual {v0, v5}, Lcom/zhangdan/app/activities/shopping/h;->setArguments(Landroid/os/Bundle;)V

    const v0, 0x7f060087

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->b:Lcom/zhangdan/app/activities/shopping/h;

    invoke-virtual {v4, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
