.class public Lcom/zhangdan/app/activities/chart/ConsumeCategoryActvity;
.super Lcom/zhangdan/app/activities/BaseFragmentActivity;
.source "ConsumeCategoryActvity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_KEY_MONTH:Ljava/lang/String; = "month"

.field public static final EXTRA_KEY_USERNAME:Ljava/lang/String; = "user_name"

.field public static final EXTRA_KEY_YEAR:Ljava/lang/String; = "year"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090039

    if-ne v0, v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryActvity;->finish()V

    .line 50
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 22
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v8, 0x7f03002e

    invoke-virtual {p0, v8}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryActvity;->setContentView(I)V

    .line 25
    const v8, 0x7f09003c

    invoke-virtual {p0, v8}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryActvity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f07019f

    invoke-static {v8, v9}, Lcom/zhangdan/app/activities/CommTitleMgr;->displayBlueTitle(Landroid/view/View;I)V

    .line 26
    const v8, 0x7f090039

    invoke-virtual {p0, v8}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryActvity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryActvity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 29
    .local v1, data:Landroid/content/Intent;
    const-string v8, "user_name"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 30
    .local v6, userName:Ljava/lang/String;
    const-string v8, "year"

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 31
    .local v7, year:I
    const-string v8, "month"

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 33
    .local v5, month:I
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryActvity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 34
    .local v3, fragmentMgr:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 35
    .local v4, fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    new-instance v2, Lcom/zhangdan/app/activities/chart/CategoryFragment;

    invoke-direct {v2}, Lcom/zhangdan/app/activities/chart/CategoryFragment;-><init>()V

    .line 36
    .local v2, fragment:Lcom/zhangdan/app/activities/chart/CategoryFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, args:Landroid/os/Bundle;
    const-string v8, "user_name"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v8, "year"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    const-string v8, "month"

    invoke-virtual {v0, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {v2, v0}, Lcom/zhangdan/app/activities/chart/CategoryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    const v8, 0x7f09008b

    invoke-virtual {v4, v8, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 42
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 43
    return-void
.end method
