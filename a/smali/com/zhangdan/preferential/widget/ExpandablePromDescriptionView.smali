.class public Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;
.super Landroid/widget/RelativeLayout;
.source "ExpandablePromDescriptionView.java"

# interfaces
.implements Lcom/zhangdan/preferential/widget/PromFillable;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mIsExpaned:Z

.field private mMinDesHeight:I

.field private mMoreView:Landroid/view/View;

.field private mPromDesView:Lcom/zhangdan/preferential/widget/PromDescriptionView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mMinDesHeight:I

    .line 37
    return-void
.end method


# virtual methods
.method public expand(Z)V
    .locals 0
    .parameter "expand"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mIsExpaned:Z

    .line 50
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mPromDesView:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->getWidth()I

    move-result v8

    .line 75
    .local v8, ow:I
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mPromDesView:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->getHeight()I

    move-result v7

    .line 76
    .local v7, oh:I
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mPromDesView:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->getContentHeight()I

    move-result v6

    .line 77
    .local v6, eh:I
    new-instance v0, Lcom/zhangdan/preferential/widget/ResizeAnimation;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mPromDesView:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    int-to-float v2, v8

    iget-object v3, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mMoreView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v7

    int-to-float v3, v3

    int-to-float v4, v8

    int-to-float v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/zhangdan/preferential/widget/ResizeAnimation;-><init>(Landroid/view/View;FFFF)V

    .line 78
    .local v0, anim:Lcom/zhangdan/preferential/widget/ResizeAnimation;
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mMoreView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mPromDesView:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    invoke-virtual {v1, v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mIsExpaned:Z

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x7f090186
        :pswitch_0
    .end packed-switch
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 42
    const v0, 0x7f090185

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/widget/PromDescriptionView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mPromDesView:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    .line 43
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mPromDesView:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->setVisibility(I)V

    .line 45
    const v0, 0x7f090186

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mMoreView:Landroid/view/View;

    .line 46
    return-void
.end method

.method public setupProm(Lcom/zhangdan/preferential/data/model/Promotion;)V
    .locals 3
    .parameter "prom"

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mPromDesView:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    invoke-virtual {v0, v2}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->setVisibility(I)V

    .line 55
    iget-boolean v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mIsExpaned:Z

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mPromDesView:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->getContentHeight()I

    move-result v0

    iget v1, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mMinDesHeight:I

    if-le v0, v1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mMoreView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mMoreView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->requestLayout()V

    .line 67
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mPromDesView:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->setupProm(Lcom/zhangdan/preferential/data/model/Promotion;)V

    .line 68
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ExpandablePromDescriptionView;->mMoreView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
