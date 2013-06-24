.class public Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;
.super Lcom/zhangdan/app/activities/BaseFragmentActivity;
.source "AllShoppingSheetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_CATEGORY_ID:Ljava/lang/String; = "category_id"

.field public static final EXTRA_MONTH:Ljava/lang/String; = "month"

.field public static final EXTRA_USER_NAME:Ljava/lang/String; = "username"

.field public static final EXTRA_YEAR:Ljava/lang/String; = "year"


# instance fields
.field private mShoppingSheetFragment:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 58
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->mShoppingSheetFragment:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->mShoppingSheetFragment:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 61
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090039

    if-ne v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->finish()V

    .line 68
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 30
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v8, 0x7f030025

    invoke-virtual {p0, v8}, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->setContentView(I)V

    .line 33
    const v8, 0x7f09003c

    invoke-virtual {p0, v8}, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f070116

    invoke-static {v8, v9}, Lcom/zhangdan/app/activities/CommTitleMgr;->displayBlueTitle(Landroid/view/View;I)V

    .line 34
    const v8, 0x7f090039

    invoke-virtual {p0, v8}, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 37
    .local v2, data:Landroid/content/Intent;
    const-string v8, "category_id"

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 38
    .local v1, categoryId:I
    const-string v8, "username"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 39
    .local v6, userName:Ljava/lang/String;
    const-string v8, "year"

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 40
    .local v7, year:I
    const-string v8, "month"

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 42
    .local v5, month:I
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 43
    .local v3, fragmentMgr:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 44
    .local v4, fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    new-instance v8, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    invoke-direct {v8}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;-><init>()V

    iput-object v8, p0, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->mShoppingSheetFragment:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, args:Landroid/os/Bundle;
    const-string v8, "category_id"

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    const-string v8, "username"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v8, "year"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    const-string v8, "month"

    invoke-virtual {v0, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    iget-object v8, p0, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->mShoppingSheetFragment:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    invoke-virtual {v8, v0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    const v8, 0x7f09008b

    iget-object v9, p0, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;->mShoppingSheetFragment:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    invoke-virtual {v4, v8, v9}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 52
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 53
    return-void
.end method
