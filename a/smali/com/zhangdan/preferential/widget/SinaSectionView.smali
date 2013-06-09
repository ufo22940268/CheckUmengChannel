.class public Lcom/zhangdan/preferential/widget/SinaSectionView;
.super Lcom/zhangdan/preferential/widget/DetailSectionView;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Lcom/zhangdan/preferential/data/model/l;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/DetailSectionView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->i:I

    const v0, 0x7f0201d9

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->a(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005a

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->a()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f060151

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->c:Landroid/widget/ImageView;

    const v0, 0x7f060152

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->d:Landroid/widget/TextView;

    const v0, 0x7f060150

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->e:Landroid/view/ViewGroup;

    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/widget/SinaSectionView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/preferential/widget/SinaSectionView;Lcom/zhangdan/preferential/widget/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/SinaSectionView;->a(Lcom/zhangdan/preferential/widget/i;)V

    return-void
.end method

.method private a(Lcom/zhangdan/preferential/widget/i;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zhangdan/preferential/widget/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->c:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/zhangdan/preferential/widget/i;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/zhangdan/preferential/data/model/l;ILcom/a/a/a/f/b;Lcom/a/a/a/a;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/zhangdan/preferential/widget/j;

    invoke-direct {v0, p0, v3}, Lcom/zhangdan/preferential/widget/j;-><init>(Lcom/zhangdan/preferential/widget/SinaSectionView;B)V

    new-array v1, v4, [Ljava/util/List;

    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/l;->A:Ljava/util/List;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/widget/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iput-object p1, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->h:Lcom/zhangdan/preferential/data/model/l;

    iput-boolean v4, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->g:Z

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->g:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->h:Lcom/zhangdan/preferential/data/model/l;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.MIX_VIEW_SINA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "sina_id"

    iget-object v2, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->h:Lcom/zhangdan/preferential/data/model/l;

    iget-object v2, v2, Lcom/zhangdan/preferential/data/model/l;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/z;->b(Landroid/app/Activity;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/widget/i;

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->a(Lcom/zhangdan/preferential/widget/i;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    iget v2, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->i:I

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v2

    int-to-float v4, v9

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iput v9, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->i:I

    goto :goto_1
.end method
