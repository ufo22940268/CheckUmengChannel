.class public Lcom/zhangdan/preferential/widget/TelSectionView;
.super Lcom/zhangdan/preferential/widget/TextSectionView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/TextSectionView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/zhangdan/preferential/data/model/l;ILcom/a/a/a/f/b;Lcom/a/a/a/a;)V
    .locals 5

    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/l;->e:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TelSectionView;->e()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/l;->e:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_0

    const v1, 0x7f0201da

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/TelSectionView;->a(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TelSectionView;->f()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/preferential/widget/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-direct {v2, p0, v3}, Lcom/zhangdan/preferential/widget/b;-><init>(Lcom/zhangdan/preferential/widget/DetailSectionView;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const v1, 0x7f02039c

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/TelSectionView;->a(I)V

    goto :goto_0
.end method
