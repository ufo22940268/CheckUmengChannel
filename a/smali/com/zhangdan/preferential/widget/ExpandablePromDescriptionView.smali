.class public Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/preferential/widget/f;


# instance fields
.field private a:Lcom/zhangdan/preferential/widget/PromDescriptionView;

.field private b:Landroid/view/View;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/zhangdan/preferential/data/model/i;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->a:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    invoke-virtual {v0, v2}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->a:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->a()I

    move-result v0

    iget v1, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->c:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->requestLayout()V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->a:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->a(Lcom/zhangdan/preferential/data/model/i;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->a:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->a:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->getHeight()I

    move-result v3

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->a:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->a()I

    move-result v5

    new-instance v0, Lcom/zhangdan/preferential/widget/h;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->a:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    int-to-float v2, v4

    iget-object v6, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/zhangdan/preferential/widget/h;-><init>(Landroid/view/View;FFFF)V

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->b:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->a:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    invoke-virtual {v1, v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->d:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f06017e
        :pswitch_0
    .end packed-switch
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f06017d

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/widget/PromDescriptionView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->a:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->a:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->setVisibility(I)V

    const v0, 0x7f06017e

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->b:Landroid/view/View;

    return-void
.end method
