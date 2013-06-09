.class final Lcom/zhangdan/app/activities/bankservice/c;
.super Lza/co/immedia/pinnedheaderlistview/c;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/bankservice/a;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/bankservice/a;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/zhangdan/app/activities/bankservice/c;->a:Lcom/zhangdan/app/activities/bankservice/a;

    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/c;-><init>()V

    iput v0, p0, Lcom/zhangdan/app/activities/bankservice/c;->d:I

    iput v0, p0, Lcom/zhangdan/app/activities/bankservice/c;->e:I

    iput-object p2, p0, Lcom/zhangdan/app/activities/bankservice/c;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/zhangdan/app/activities/bankservice/c;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final a(I)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/c;->b:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/c;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(IILandroid/view/View;)Landroid/view/View;
    .locals 4

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/c;->a:Lcom/zhangdan/app/activities/bankservice/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/bankservice/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/zhangdan/app/activities/bankservice/d;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/bankservice/d;-><init>(Lcom/zhangdan/app/activities/bankservice/c;)V

    const v0, 0x7f060173

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/bankservice/d;->a:Landroid/widget/ImageView;

    const v0, 0x7f0602b6

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/bankservice/d;->b:Landroid/widget/TextView;

    const v0, 0x7f0602b7

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/bankservice/d;->c:Landroid/widget/ImageView;

    const v0, 0x7f0602b8

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/zhangdan/app/activities/bankservice/d;->d:Landroid/view/View;

    const v0, 0x7f0602b9

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/bankservice/d;->e:Landroid/widget/ImageView;

    const v0, 0x7f0602ba

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/bankservice/d;->f:Landroid/widget/ImageView;

    const v0, 0x7f0602bb

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/bankservice/d;->g:Landroid/widget/ImageView;

    iget-object v0, v1, Lcom/zhangdan/app/activities/bankservice/d;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/zhangdan/app/activities/bankservice/d;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/zhangdan/app/activities/bankservice/d;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/zhangdan/app/activities/bankservice/d;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/bankservice/d;

    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/activities/bankservice/c;->a(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/a;

    if-nez v1, :cond_1

    :goto_0
    return-object p3

    :cond_1
    iget-object v2, v0, Lcom/zhangdan/app/activities/bankservice/d;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/a;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v0, Lcom/zhangdan/app/activities/bankservice/d;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/zhangdan/app/activities/bankservice/c;->d:I

    if-ne p1, v2, :cond_2

    iget v2, p0, Lcom/zhangdan/app/activities/bankservice/c;->e:I

    if-ne p2, v2, :cond_2

    iget-object v2, v0, Lcom/zhangdan/app/activities/bankservice/d;->d:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/zhangdan/app/activities/bankservice/d;->c:Landroid/widget/ImageView;

    const v3, 0x7f02029e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v2, v0, Lcom/zhangdan/app/activities/bankservice/d;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/zhangdan/app/activities/bankservice/d;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/zhangdan/app/activities/bankservice/d;->d:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/zhangdan/app/activities/bankservice/d;->c:Landroid/widget/ImageView;

    const v1, 0x7f02029f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public final a(ILandroid/view/View;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/c;->a:Lcom/zhangdan/app/activities/bankservice/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/bankservice/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030097

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f060207

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p1, :cond_2

    const v1, 0x7f080180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const v1, 0x7f080181

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final a(II)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/c;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/c;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/bankservice/c;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/zhangdan/app/activities/bankservice/c;->c:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/c;->notifyDataSetChanged()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/zhangdan/app/activities/bankservice/c;->a:Lcom/zhangdan/app/activities/bankservice/a;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/bankservice/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "bank_id"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/a;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "bank_name"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0602b9

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/c;->a:Lcom/zhangdan/app/activities/bankservice/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/bankservice/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "right_menu_tel"

    invoke-static {v0, v2}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "service_type"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/c;->a:Lcom/zhangdan/app/activities/bankservice/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/bankservice/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0602ba

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/c;->a:Lcom/zhangdan/app/activities/bankservice/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/bankservice/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "right_menu_sms"

    invoke-static {v0, v2}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "service_type"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0, p3}, Lcom/zhangdan/app/activities/bankservice/c;->d(I)I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/zhangdan/app/activities/bankservice/c;->e(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/zhangdan/app/activities/bankservice/c;->d:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/zhangdan/app/activities/bankservice/c;->e:I

    if-ne v2, v1, :cond_1

    iput v3, p0, Lcom/zhangdan/app/activities/bankservice/c;->d:I

    iput v3, p0, Lcom/zhangdan/app/activities/bankservice/c;->e:I

    :goto_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/c;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/zhangdan/app/activities/bankservice/c;->d:I

    iput v1, p0, Lcom/zhangdan/app/activities/bankservice/c;->e:I

    goto :goto_1
.end method
