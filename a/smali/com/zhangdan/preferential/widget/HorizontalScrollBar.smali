.class public Lcom/zhangdan/preferential/widget/HorizontalScrollBar;
.super Landroid/widget/HorizontalScrollView;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:I

.field private d:Lcom/zhangdan/preferential/widget/d;

.field private e:I

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/widget/HorizontalScrollBar;I)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->invalidate()V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/g;

    iget-object v2, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->d:Lcom/zhangdan/preferential/widget/d;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->d:Lcom/zhangdan/preferential/widget/d;

    invoke-interface {v2, v0}, Lcom/zhangdan/preferential/widget/d;->a(Lcom/zhangdan/preferential/data/model/g;)V

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    iget v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->c:I

    if-eq v9, v0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->c:I

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

    new-instance v1, Lcom/zhangdan/preferential/widget/c;

    iget v2, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->c:I

    invoke-direct {v1, p0, v2, v9}, Lcom/zhangdan/preferential/widget/c;-><init>(Lcom/zhangdan/preferential/widget/HorizontalScrollBar;II)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iput v9, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->c:I

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->setHorizontalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030084

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0601cf

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->f:Landroid/view/ViewGroup;

    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->g:Landroid/view/View;

    const v0, 0x7f0601ce

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->b:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->setFillViewport(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->resolveSize(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->e:I

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method
