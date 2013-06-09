.class public Lcom/zhangdan/preferential/widget/DianpingSectionView;
.super Lcom/zhangdan/preferential/widget/TextSectionView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/TextSectionView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0201d4

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/DianpingSectionView;->a(I)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/DianpingSectionView;->g()V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/DianpingSectionView;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/zhangdan/preferential/data/model/l;ILcom/a/a/a/f/b;Lcom/a/a/a/a;)V
    .locals 3

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/DianpingSectionView;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/DianpingSectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.MIX_VIEW_DIANPING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "dianping_id"

    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/l;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/DianpingSectionView;->f()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/preferential/widget/b;

    invoke-direct {v2, p0, v0}, Lcom/zhangdan/preferential/widget/b;-><init>(Lcom/zhangdan/preferential/widget/DetailSectionView;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
