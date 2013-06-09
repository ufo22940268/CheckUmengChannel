.class public Lcom/zhangdan/preferential/PickErrorActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/ArrayAdapter;

.field private c:Lcom/zhangdan/preferential/a/f;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/PickErrorActivity;)Lcom/zhangdan/preferential/a/f;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/PickErrorActivity;->c:Lcom/zhangdan/preferential/a/f;

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/preferential/PickErrorActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/PickErrorActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/preferential/PickErrorActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/PickErrorActivity;->d:Ljava/lang/String;

    return-object v0
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
    invoke-virtual {p0}, Lcom/zhangdan/preferential/PickErrorActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f060037
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300e3

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/PickErrorActivity;->setContentView(I)V

    new-instance v0, Lcom/zhangdan/preferential/a/f;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/PickErrorActivity;->c:Lcom/zhangdan/preferential/a/f;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/PickErrorActivity;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/PickErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shop_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/PickErrorActivity;->e:Ljava/lang/String;

    const v0, 0x7f0602e9

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/PickErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/PickErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/PickErrorActivity;->a:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/PickErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0300bf

    const v3, 0x1020014

    invoke-direct {v1, p0, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/zhangdan/preferential/PickErrorActivity;->b:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/zhangdan/preferential/PickErrorActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/PickErrorActivity;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/PickErrorActivity;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/zhangdan/preferential/PickErrorActivity;->a:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/PickErrorActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/PickErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    add-int/lit8 v0, p3, 0x1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0801f3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/zhangdan/preferential/r;

    invoke-direct {v3, p0, v0}, Lcom/zhangdan/preferential/r;-><init>(Lcom/zhangdan/preferential/PickErrorActivity;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onPause()V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/z;->c(Landroid/app/Activity;)V

    return-void
.end method
