.class public Lcom/zhangdan/preferential/PickErrorActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;
.source "PickErrorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/PickErrorActivity$SendErrorTask;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mParser:Lcom/zhangdan/preferential/utils/JsonParser;

.field private mShopId:Ljava/lang/String;

.field private mYouhuiUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/zhangdan/preferential/PickErrorActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zhangdan/preferential/PickErrorActivity;->mShopId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/preferential/PickErrorActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zhangdan/preferential/PickErrorActivity;->mYouhuiUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/preferential/PickErrorActivity;)Lcom/zhangdan/preferential/utils/JsonParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zhangdan/preferential/PickErrorActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    return-object v0
.end method

.method private buildDialog(I)V
    .locals 3
    .parameter "typeId"

    .prologue
    .line 59
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0701fb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/zhangdan/preferential/PickErrorActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/zhangdan/preferential/PickErrorActivity$1;-><init>(Lcom/zhangdan/preferential/PickErrorActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 70
    return-void
.end method

.method private getTypeId(I)I
    .locals 1
    .parameter "pos"

    .prologue
    .line 73
    add-int/lit8 v0, p1, 0x1

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 80
    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/PickErrorActivity;->finish()V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x7f090037
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedBundleInstance"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v1, 0x7f0300e8

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/PickErrorActivity;->setContentView(I)V

    .line 35
    new-instance v1, Lcom/zhangdan/preferential/utils/JsonParser;

    invoke-direct {v1, p0}, Lcom/zhangdan/preferential/utils/JsonParser;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zhangdan/preferential/PickErrorActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    .line 36
    invoke-virtual {p0}, Lcom/zhangdan/preferential/PickErrorActivity;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/preferential/PickErrorActivity;->mYouhuiUid:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/zhangdan/preferential/PickErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shop_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/preferential/PickErrorActivity;->mShopId:Ljava/lang/String;

    .line 40
    const v1, 0x7f0902f5

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/PickErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0701fa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 42
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/PickErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zhangdan/preferential/PickErrorActivity;->mListView:Landroid/widget/ListView;

    .line 43
    invoke-virtual {p0}, Lcom/zhangdan/preferential/PickErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, strs:[Ljava/lang/String;
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0300c4

    const v3, 0x1020014

    invoke-direct {v1, p0, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/zhangdan/preferential/PickErrorActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 45
    iget-object v1, p0, Lcom/zhangdan/preferential/PickErrorActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zhangdan/preferential/PickErrorActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    iget-object v1, p0, Lcom/zhangdan/preferential/PickErrorActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 47
    iget-object v1, p0, Lcom/zhangdan/preferential/PickErrorActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 48
    iget-object v1, p0, Lcom/zhangdan/preferential/PickErrorActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    const v1, 0x7f090037

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/PickErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "pos"
    .parameter "id"

    .prologue
    .line 55
    invoke-direct {p0, p3}, Lcom/zhangdan/preferential/PickErrorActivity;->getTypeId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/PickErrorActivity;->buildDialog(I)V

    .line 56
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onPause()V

    .line 88
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/ViewUtils;->setReturnTransition(Landroid/app/Activity;)V

    .line 89
    return-void
.end method
