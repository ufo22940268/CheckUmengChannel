.class public final Lcom/zhangdan/preferential/y;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/RecommendDetailActivity;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V
    .locals 2

    const/4 v1, 0x3

    iput-object p1, p0, Lcom/zhangdan/preferential/y;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/y;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/zhangdan/preferential/y;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/zhangdan/preferential/y;->d:I

    iput v1, p0, Lcom/zhangdan/preferential/y;->e:I

    iput v1, p0, Lcom/zhangdan/preferential/y;->f:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/zhangdan/preferential/y;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/y;->h:Ljava/util/List;

    return-void
.end method

.method private a(I)Lcom/zhangdan/preferential/data/model/k;
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/y;->h:Ljava/util/List;

    add-int/lit8 v1, p1, -0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/k;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/zhangdan/preferential/data/model/k;)V
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/z;

    iget-object v1, v0, Lcom/zhangdan/preferential/z;->b:Landroid/widget/TextView;

    invoke-static {v1, p2}, Lcom/zhangdan/preferential/a/z;->c(Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/k;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/y;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    iget-object v2, v0, Lcom/zhangdan/preferential/z;->a:Landroid/widget/ImageView;

    iget-object v4, p2, Lcom/zhangdan/preferential/data/model/k;->d:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/zhangdan/preferential/RecommendDetailActivity;->a(Lcom/zhangdan/preferential/RecommendDetailActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/zhangdan/preferential/z;->c:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/zhangdan/preferential/data/model/k;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/zhangdan/preferential/z;->d:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/zhangdan/preferential/data/model/k;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/zhangdan/preferential/z;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/zhangdan/preferential/y;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v1, p2, Lcom/zhangdan/preferential/data/model/k;->r:Ljava/lang/String;

    invoke-static {v1}, Lcom/zhangdan/preferential/a/e;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v2, v3

    :goto_0
    if-lt v2, v6, :cond_1

    iget-object v1, p0, Lcom/zhangdan/preferential/y;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->l(Lcom/zhangdan/preferential/RecommendDetailActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/zhangdan/preferential/z;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    aget-object v7, v5, v2

    const v1, 0x7f03010b

    iget-object v8, v0, Lcom/zhangdan/preferential/z;->e:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/zhangdan/preferential/z;->e:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/zhangdan/preferential/y;Ljava/util/List;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/y;->h:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/zhangdan/preferential/y;->h:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/y;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final getCount()I
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/y;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/y;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->c(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->a:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Lcom/handmark/pulltorefresh/library/f;)V

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/y;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->c(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->c:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Lcom/handmark/pulltorefresh/library/f;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/y;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

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
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-le p1, v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/y;->getItemViewType(I)I

    move-result v3

    iget-object v0, p0, Lcom/zhangdan/preferential/y;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    if-nez p2, :cond_0

    packed-switch v3, :pswitch_data_0

    :cond_0
    move-object v1, p2

    :goto_0
    const/4 v0, 0x1

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/preferential/y;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->k(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/data/model/i;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/zhangdan/preferential/widget/f;

    iget-object v2, p0, Lcom/zhangdan/preferential/y;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v2}, Lcom/zhangdan/preferential/RecommendDetailActivity;->k(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/data/model/i;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/zhangdan/preferential/widget/f;->a(Lcom/zhangdan/preferential/data/model/i;)V

    :cond_1
    :goto_1
    return-object v1

    :pswitch_0
    iget-object v0, p0, Lcom/zhangdan/preferential/y;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    iget-object v1, p0, Lcom/zhangdan/preferential/y;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v2, v1

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v4, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/zhangdan/preferential/y;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006a

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0300eb

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    const v1, 0x7f0300c4

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v4, Lcom/zhangdan/preferential/z;

    invoke-direct {v4, p0, v2}, Lcom/zhangdan/preferential/z;-><init>(Lcom/zhangdan/preferential/y;B)V

    const v2, 0x7f060151

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/zhangdan/preferential/z;->a:Landroid/widget/ImageView;

    const v2, 0x7f060149

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/zhangdan/preferential/z;->b:Landroid/widget/TextView;

    const v2, 0x7f06026c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/zhangdan/preferential/z;->c:Landroid/widget/TextView;

    const v2, 0x7f06026d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/zhangdan/preferential/z;->d:Landroid/widget/TextView;

    const v2, 0x7f0602b4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v4, Lcom/zhangdan/preferential/z;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne v3, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/y;->a(I)Lcom/zhangdan/preferential/data/model/k;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/zhangdan/preferential/y;->a(Landroid/view/View;Lcom/zhangdan/preferential/data/model/k;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v3, 0x0

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/y;->a(I)Lcom/zhangdan/preferential/data/model/k;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/preferential/aa;

    iget-object v2, p0, Lcom/zhangdan/preferential/y;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-direct {v1, v2, v3}, Lcom/zhangdan/preferential/aa;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;B)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/k;->a:Ljava/lang/String;

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/zhangdan/preferential/y;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v3}, Lcom/zhangdan/preferential/RecommendDetailActivity;->k(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/data/model/i;

    move-result-object v3

    iget-object v3, v3, Lcom/zhangdan/preferential/data/model/i;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
