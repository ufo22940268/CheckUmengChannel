.class final Lcom/zhangdan/app/activities/detail/s;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;

.field private d:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/detail/PartPaidActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/s;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/s;->d:Ljava/text/DecimalFormat;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/s;->b:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/zhangdan/app/activities/detail/s;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/zhangdan/app/data/model/http/af;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/s;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/s;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/s;->notifyDataSetChanged()V

    return-void
.end method

.method public final b(Lcom/zhangdan/app/data/model/http/af;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/s;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/s;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/s;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/s;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/s;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/s;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300be

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/zhangdan/app/activities/detail/t;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/detail/t;-><init>(Lcom/zhangdan/app/activities/detail/s;)V

    const v0, 0x7f0602a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/detail/t;->a:Landroid/widget/TextView;

    const v0, 0x7f0602a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/detail/t;->b:Landroid/widget/TextView;

    const v0, 0x7f0602aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/zhangdan/app/activities/detail/t;->c:Landroid/widget/Button;

    iget-object v0, v1, Lcom/zhangdan/app/activities/detail/t;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/af;

    iget-object v2, v1, Lcom/zhangdan/app/activities/detail/t;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8fd8\u6b3e:   \uffe5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/s;->d:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/af;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/af;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, "/"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    const-string v3, "   "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/zhangdan/app/activities/detail/t;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/detail/t;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/s;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->a(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, v1, Lcom/zhangdan/app/activities/detail/t;->c:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/detail/t;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "position"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/s;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0
.end method
