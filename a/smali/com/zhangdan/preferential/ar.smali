.class public final Lcom/zhangdan/preferential/ar;
.super Landroid/widget/BaseAdapter;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field final synthetic l:Lcom/zhangdan/preferential/ShopDetailActivity;

.field private m:Lcom/zhangdan/preferential/data/model/l;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/ShopDetailActivity;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/zhangdan/preferential/ar;->l:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v1, p0, Lcom/zhangdan/preferential/ar;->a:I

    iput v1, p0, Lcom/zhangdan/preferential/ar;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/ar;->c:I

    iput v1, p0, Lcom/zhangdan/preferential/ar;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/zhangdan/preferential/ar;->e:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/zhangdan/preferential/ar;->f:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/zhangdan/preferential/ar;->g:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/zhangdan/preferential/ar;->h:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/zhangdan/preferential/ar;->i:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/zhangdan/preferential/ar;->j:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/zhangdan/preferential/ar;->k:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/zhangdan/preferential/ar;->s:I

    iput v1, p0, Lcom/zhangdan/preferential/ar;->v:I

    iput v1, p0, Lcom/zhangdan/preferential/ar;->w:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/zhangdan/preferential/data/model/l;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/zhangdan/preferential/ar;->m:Lcom/zhangdan/preferential/data/model/l;

    iput v1, p0, Lcom/zhangdan/preferential/ar;->n:I

    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/l;->e:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/zhangdan/preferential/ar;->o:I

    iget v0, p1, Lcom/zhangdan/preferential/data/model/l;->o:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/zhangdan/preferential/ar;->p:I

    iget v0, p1, Lcom/zhangdan/preferential/data/model/l;->l:I

    iget-object v3, p1, Lcom/zhangdan/preferential/data/model/l;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/ar;->q:I

    iget v0, p1, Lcom/zhangdan/preferential/data/model/l;->n:I

    iget-object v3, p1, Lcom/zhangdan/preferential/data/model/l;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/ar;->t:I

    iget v0, p1, Lcom/zhangdan/preferential/data/model/l;->m:I

    iget-object v3, p1, Lcom/zhangdan/preferential/data/model/l;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/ar;->u:I

    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/l;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/zhangdan/preferential/ar;->v:I

    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/l;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    if-eqz v0, :cond_4

    :goto_4
    iput v1, p0, Lcom/zhangdan/preferential/ar;->w:I

    iget v0, p0, Lcom/zhangdan/preferential/ar;->n:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->o:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->p:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->q:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->t:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->u:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->v:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->w:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zhangdan/preferential/ar;->r:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method

.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/preferential/ar;->r:I

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2

    if-gtz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/zhangdan/preferential/ar;->n:I

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/zhangdan/preferential/ar;->n:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->o:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/zhangdan/preferential/ar;->n:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->o:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->p:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/zhangdan/preferential/ar;->n:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->o:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->p:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->q:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/zhangdan/preferential/ar;->n:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->o:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->p:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->q:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->t:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/zhangdan/preferential/ar;->n:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->o:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->p:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->q:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->t:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->u:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_6

    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/zhangdan/preferential/ar;->n:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->o:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->p:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->q:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->t:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->u:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->v:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_7

    const/4 v0, 0x7

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/zhangdan/preferential/ar;->n:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->o:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->p:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->q:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->t:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->u:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->v:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ar;->w:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_8

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_8
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/ar;->getItemViewType(I)I

    move-result v2

    if-nez p2, :cond_2

    packed-switch v2, :pswitch_data_0

    new-instance v1, Lcom/zhangdan/preferential/widget/CardSectionView;

    iget-object v3, p0, Lcom/zhangdan/preferential/ar;->l:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v1, v3}, Lcom/zhangdan/preferential/widget/CardSectionView;-><init>(Landroid/content/Context;)V

    :goto_0
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    packed-switch v2, :pswitch_data_1

    move v3, v0

    :goto_1
    move-object v0, v1

    check-cast v0, Lcom/zhangdan/preferential/widget/DetailSectionView;

    const/4 v4, 0x7

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/zhangdan/preferential/ar;->m:Lcom/zhangdan/preferential/data/model/l;

    iget-object v4, p0, Lcom/zhangdan/preferential/ar;->l:Lcom/zhangdan/preferential/ShopDetailActivity;

    iget-object v4, v4, Lcom/zhangdan/preferential/ShopDetailActivity;->c:Lcom/a/a/a/f/b;

    iget-object v5, p0, Lcom/zhangdan/preferential/ar;->l:Lcom/zhangdan/preferential/ShopDetailActivity;

    iget-object v5, v5, Lcom/zhangdan/preferential/ShopDetailActivity;->d:Lcom/a/a/a/a;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/zhangdan/preferential/widget/DetailSectionView;->a(Lcom/zhangdan/preferential/data/model/l;ILcom/a/a/a/f/b;Lcom/a/a/a/a;)V

    :cond_0
    :goto_2
    return-object v1

    :pswitch_0
    iget-object v1, p0, Lcom/zhangdan/preferential/ar;->l:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/ShopDetailActivity;->l(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0300c8

    invoke-virtual {v1, v3, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/zhangdan/preferential/widget/AddressSectionView;

    iget-object v3, p0, Lcom/zhangdan/preferential/ar;->l:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v1, v3}, Lcom/zhangdan/preferential/widget/AddressSectionView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/zhangdan/preferential/widget/TelSectionView;

    iget-object v3, p0, Lcom/zhangdan/preferential/ar;->l:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v1, v3}, Lcom/zhangdan/preferential/widget/TelSectionView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/zhangdan/preferential/widget/TicketSectionView;

    iget-object v3, p0, Lcom/zhangdan/preferential/ar;->l:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v1, v3}, Lcom/zhangdan/preferential/widget/TicketSectionView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/zhangdan/preferential/widget/CardSectionView;

    iget-object v3, p0, Lcom/zhangdan/preferential/ar;->l:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v1, v3}, Lcom/zhangdan/preferential/widget/CardSectionView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/zhangdan/preferential/widget/GrouponSectionView;

    iget-object v3, p0, Lcom/zhangdan/preferential/ar;->l:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v1, v3}, Lcom/zhangdan/preferential/widget/GrouponSectionView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_6
    new-instance v1, Lcom/zhangdan/preferential/widget/PromSectionView;

    iget-object v3, p0, Lcom/zhangdan/preferential/ar;->l:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v1, v3}, Lcom/zhangdan/preferential/widget/PromSectionView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_7
    new-instance v1, Lcom/zhangdan/preferential/widget/SinaSectionView;

    iget-object v3, p0, Lcom/zhangdan/preferential/ar;->l:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v1, v3}, Lcom/zhangdan/preferential/widget/SinaSectionView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_8
    new-instance v1, Lcom/zhangdan/preferential/widget/DianpingSectionView;

    iget-object v3, p0, Lcom/zhangdan/preferential/ar;->l:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v1, v3}, Lcom/zhangdan/preferential/widget/DianpingSectionView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_9
    move v3, v0

    goto :goto_1

    :pswitch_a
    add-int/lit8 v0, p1, -0x1

    iget v3, p0, Lcom/zhangdan/preferential/ar;->n:I

    sub-int/2addr v0, v3

    move v3, v0

    goto :goto_1

    :pswitch_b
    add-int/lit8 v0, p1, -0x1

    iget v3, p0, Lcom/zhangdan/preferential/ar;->n:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/zhangdan/preferential/ar;->o:I

    sub-int/2addr v0, v3

    move v3, v0

    goto :goto_1

    :pswitch_c
    add-int/lit8 v0, p1, -0x1

    iget v3, p0, Lcom/zhangdan/preferential/ar;->n:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/zhangdan/preferential/ar;->o:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/zhangdan/preferential/ar;->p:I

    sub-int/2addr v0, v3

    move v3, v0

    goto/16 :goto_1

    :pswitch_d
    add-int/lit8 v0, p1, -0x1

    iget v3, p0, Lcom/zhangdan/preferential/ar;->n:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/zhangdan/preferential/ar;->o:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/zhangdan/preferential/ar;->p:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/zhangdan/preferential/ar;->q:I

    sub-int/2addr v0, v3

    move v3, v0

    goto/16 :goto_1

    :pswitch_e
    add-int/lit8 v0, p1, -0x1

    iget v3, p0, Lcom/zhangdan/preferential/ar;->n:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/zhangdan/preferential/ar;->o:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/zhangdan/preferential/ar;->p:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/zhangdan/preferential/ar;->q:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/zhangdan/preferential/ar;->t:I

    sub-int/2addr v0, v3

    move v3, v0

    goto/16 :goto_1

    :cond_1
    move-object v2, v0

    check-cast v2, Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/widget/SinaSectionView;->e()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zhangdan/preferential/ar;->m:Lcom/zhangdan/preferential/data/model/l;

    iget-object v4, p0, Lcom/zhangdan/preferential/ar;->l:Lcom/zhangdan/preferential/ShopDetailActivity;

    iget-object v4, v4, Lcom/zhangdan/preferential/ShopDetailActivity;->c:Lcom/a/a/a/f/b;

    iget-object v5, p0, Lcom/zhangdan/preferential/ar;->l:Lcom/zhangdan/preferential/ShopDetailActivity;

    iget-object v5, v5, Lcom/zhangdan/preferential/ShopDetailActivity;->d:Lcom/a/a/a/a;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/zhangdan/preferential/widget/DetailSectionView;->a(Lcom/zhangdan/preferential/data/model/l;ILcom/a/a/a/f/b;Lcom/a/a/a/a;)V

    goto/16 :goto_2

    :cond_2
    move-object v1, p2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/preferential/ar;->s:I

    return v0
.end method
