.class public Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method

.method private j()V
    .locals 2

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->finish()V

    const v0, 0x7f040005

    const v1, 0x7f040006

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->j()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060088

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->j()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->setContentView(I)V

    const v0, 0x7f060088

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f06008a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->c()Lcom/zhangdan/app/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/c/a;->b()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/zhangdan/app/activities/mailimport/c;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/mailimport/c;-><init>(Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;)V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    new-instance v1, Lcom/zhangdan/app/activities/mailimport/a;

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/app/activities/mailimport/a;-><init>(Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
