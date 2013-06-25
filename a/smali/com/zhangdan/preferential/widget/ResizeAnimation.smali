.class public Lcom/zhangdan/preferential/widget/ResizeAnimation;
.super Landroid/view/animation/Animation;
.source "ResizeAnimation.java"


# instance fields
.field private mFromHeight:F

.field private mFromWidth:F

.field private mToHeight:F

.field private mToWidth:F

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;FFFF)V
    .locals 2
    .parameter "v"
    .parameter "fromWidth"
    .parameter "fromHeight"
    .parameter "toWidth"
    .parameter "toHeight"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 29
    iput p5, p0, Lcom/zhangdan/preferential/widget/ResizeAnimation;->mToHeight:F

    .line 30
    iput p4, p0, Lcom/zhangdan/preferential/widget/ResizeAnimation;->mToWidth:F

    .line 31
    iput p3, p0, Lcom/zhangdan/preferential/widget/ResizeAnimation;->mFromHeight:F

    .line 32
    iput p2, p0, Lcom/zhangdan/preferential/widget/ResizeAnimation;->mFromWidth:F

    .line 33
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/ResizeAnimation;->mView:Landroid/view/View;

    .line 34
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/preferential/widget/ResizeAnimation;->setDuration(J)V

    .line 35
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 39
    iget v3, p0, Lcom/zhangdan/preferential/widget/ResizeAnimation;->mToHeight:F

    iget v4, p0, Lcom/zhangdan/preferential/widget/ResizeAnimation;->mFromHeight:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/zhangdan/preferential/widget/ResizeAnimation;->mFromHeight:F

    add-float v0, v3, v4

    .line 41
    .local v0, height:F
    iget v3, p0, Lcom/zhangdan/preferential/widget/ResizeAnimation;->mToWidth:F

    iget v4, p0, Lcom/zhangdan/preferential/widget/ResizeAnimation;->mFromWidth:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/zhangdan/preferential/widget/ResizeAnimation;->mFromWidth:F

    add-float v2, v3, v4

    .line 42
    .local v2, width:F
    iget-object v3, p0, Lcom/zhangdan/preferential/widget/ResizeAnimation;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 43
    .local v1, p:Landroid/view/ViewGroup$LayoutParams;
    float-to-int v3, v0

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 44
    float-to-int v3, v2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    iget-object v3, p0, Lcom/zhangdan/preferential/widget/ResizeAnimation;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 46
    return-void
.end method
