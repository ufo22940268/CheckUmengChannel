.class public Lcom/zhangdan/preferential/widget/AddressSectionView;
.super Lcom/zhangdan/preferential/widget/TextSectionView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/TextSectionView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0201d7

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/AddressSectionView;->a(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/zhangdan/preferential/data/model/l;ILcom/a/a/a/f/b;Lcom/a/a/a/a;)V
    .locals 4

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/AddressSectionView;->f()Landroid/view/ViewGroup;

    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/l;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/AddressSectionView;->e()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/l;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.MIX_VIEW_DETAIL_MAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type_id"

    iget v3, p1, Lcom/zhangdan/preferential/data/model/l;->g:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "position"

    iget-object v3, p1, Lcom/zhangdan/preferential/data/model/l;->s:Lcom/zhangdan/preferential/data/model/Position;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/AddressSectionView;->f()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/preferential/widget/b;

    invoke-direct {v2, p0, v0}, Lcom/zhangdan/preferential/widget/b;-><init>(Lcom/zhangdan/preferential/widget/DetailSectionView;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
