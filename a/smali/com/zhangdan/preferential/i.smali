.class public final Lcom/zhangdan/preferential/i;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/h;

.field private b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/h;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v1, p0, Lcom/zhangdan/preferential/i;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/i;->c:I

    iput v1, p0, Lcom/zhangdan/preferential/i;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/zhangdan/preferential/i;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/i;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/i;->g:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/view/View;Lcom/zhangdan/preferential/data/model/i;)V
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/j;

    iget-object v1, p2, Lcom/zhangdan/preferential/data/model/i;->e:Ljava/lang/String;

    iget-object v2, p2, Lcom/zhangdan/preferential/data/model/i;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, v0, Lcom/zhangdan/preferential/j;->b:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/zhangdan/preferential/data/model/i;->l:Ljava/lang/String;

    const v5, 0x7f0c0073

    const v6, 0x7f0c0074

    invoke-static {v2, v4, v5, v1, v6}, Lcom/zhangdan/preferential/a/z;->a(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;I)V

    iget-object v1, v0, Lcom/zhangdan/preferential/j;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v4, 0x7f0801ea

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/zhangdan/preferential/data/model/i;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v1}, Lcom/zhangdan/preferential/h;->i(Lcom/zhangdan/preferential/h;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    iget-object v2, v0, Lcom/zhangdan/preferential/j;->a:Landroid/widget/ImageView;

    iget-object v4, p2, Lcom/zhangdan/preferential/data/model/i;->i:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/zhangdan/preferential/h;->a(Lcom/zhangdan/preferential/h;Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v1, v0, Lcom/zhangdan/preferential/j;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p2}, Lcom/zhangdan/preferential/data/model/i;->g()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v2, v3

    :goto_0
    if-lt v2, v6, :cond_3

    iget-object v1, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v1}, Lcom/zhangdan/preferential/h;->i(Lcom/zhangdan/preferential/h;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/zhangdan/preferential/j;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    aget-object v7, v5, v2

    const v1, 0x7f03010b

    iget-object v8, v0, Lcom/zhangdan/preferential/j;->d:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/zhangdan/preferential/j;->d:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/zhangdan/preferential/data/model/k;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/k;

    iget-object v1, v0, Lcom/zhangdan/preferential/k;->d:Landroid/widget/TextView;

    invoke-static {v1, p2}, Lcom/zhangdan/preferential/a/z;->c(Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/k;)V

    iget-object v1, v0, Lcom/zhangdan/preferential/k;->c:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/zhangdan/preferential/data/model/k;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/zhangdan/preferential/k;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v3}, Lcom/zhangdan/preferential/h;->h(Lcom/zhangdan/preferential/h;)Lcom/zhangdan/preferential/a/i;

    invoke-static {p2}, Lcom/zhangdan/preferential/a/i;->a(Lcom/zhangdan/preferential/data/model/k;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v1}, Lcom/zhangdan/preferential/h;->i(Lcom/zhangdan/preferential/h;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    iget-object v3, v0, Lcom/zhangdan/preferential/k;->a:Landroid/widget/ImageView;

    iget-object v4, p2, Lcom/zhangdan/preferential/data/model/k;->d:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/zhangdan/preferential/h;->a(Lcom/zhangdan/preferential/h;Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x3

    if-lt v1, v3, :cond_2

    iget-object v1, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v1}, Lcom/zhangdan/preferential/h;->i(Lcom/zhangdan/preferential/h;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/zhangdan/preferential/k;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p2, Lcom/zhangdan/preferential/data/model/k;->i:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, v0, Lcom/zhangdan/preferential/k;->b:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    iget-object v4, p2, Lcom/zhangdan/preferential/data/model/k;->i:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/zhangdan/preferential/k;->b:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/zhangdan/preferential/k;->b:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/i;->f:Ljava/util/List;

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/i;->g:Ljava/util/List;

    return-void
.end method

.method public final getCount()I
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v0}, Lcom/zhangdan/preferential/h;->f(Lcom/zhangdan/preferential/h;)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zhangdan/preferential/i;->b:I

    iget-object v1, p0, Lcom/zhangdan/preferential/i;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/zhangdan/preferential/i;->b:I

    iget-object v1, p0, Lcom/zhangdan/preferential/i;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v0}, Lcom/zhangdan/preferential/h;->f(Lcom/zhangdan/preferential/h;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const v2, 0x7f060151

    const v5, 0x7f060149

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/i;->getItemViewType(I)I

    move-result v3

    if-nez p2, :cond_0

    packed-switch v3, :pswitch_data_0

    :cond_0
    move-object v1, p2

    :goto_0
    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-object v1

    :pswitch_0
    iget-object v0, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v0}, Lcom/zhangdan/preferential/h;->g(Lcom/zhangdan/preferential/h;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006c

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/16 v4, 0x50

    invoke-direct {v0, v2, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v0}, Lcom/zhangdan/preferential/h;->g(Lcom/zhangdan/preferential/h;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ac

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v4, Lcom/zhangdan/preferential/k;

    invoke-direct {v4, p0}, Lcom/zhangdan/preferential/k;-><init>(Lcom/zhangdan/preferential/i;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/zhangdan/preferential/k;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/zhangdan/preferential/k;->d:Landroid/widget/TextView;

    iget-object v5, v4, Lcom/zhangdan/preferential/k;->b:[Landroid/widget/TextView;

    const v2, 0x7f0602e8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v5, v6

    iget-object v5, v4, Lcom/zhangdan/preferential/k;->b:[Landroid/widget/TextView;

    const/4 v6, 0x1

    const v2, 0x7f0602e7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v5, v6

    iget-object v5, v4, Lcom/zhangdan/preferential/k;->b:[Landroid/widget/TextView;

    const/4 v6, 0x2

    const v2, 0x7f0602e6

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v5, v6

    const v2, 0x7f06026c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/zhangdan/preferential/k;->c:Landroid/widget/TextView;

    const v2, 0x7f06026d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/zhangdan/preferential/k;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v0}, Lcom/zhangdan/preferential/h;->g(Lcom/zhangdan/preferential/h;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ab

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v4, Lcom/zhangdan/preferential/j;

    invoke-direct {v4, p0}, Lcom/zhangdan/preferential/j;-><init>(Lcom/zhangdan/preferential/i;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/zhangdan/preferential/j;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/zhangdan/preferential/j;->b:Landroid/widget/TextView;

    const v2, 0x7f060269

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/zhangdan/preferential/j;->c:Landroid/widget/TextView;

    const v2, 0x7f06026a

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v4, Lcom/zhangdan/preferential/j;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v0}, Lcom/zhangdan/preferential/h;->f(Lcom/zhangdan/preferential/h;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/preferential/i;->f:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/k;

    invoke-direct {p0, v1, v0}, Lcom/zhangdan/preferential/i;->a(Landroid/view/View;Lcom/zhangdan/preferential/data/model/k;)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/preferential/i;->g:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/i;

    invoke-direct {p0, v1, v0}, Lcom/zhangdan/preferential/i;->a(Landroid/view/View;Lcom/zhangdan/preferential/data/model/i;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v0}, Lcom/zhangdan/preferential/h;->f(Lcom/zhangdan/preferential/h;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/i;->f:Ljava/util/List;

    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/k;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zhangdan.preferential.MIX_VIEW_SHOP_DETAIL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "shop_id"

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/h;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/i;->g:Ljava/util/List;

    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/i;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zhangdan.preferential.MIX_VIEW_RECOMMEND_DETAIL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "prom_id"

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/preferential/i;->a:Lcom/zhangdan/preferential/h;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/h;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
