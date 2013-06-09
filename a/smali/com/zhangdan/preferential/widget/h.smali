.class public final Lcom/zhangdan/preferential/widget/h;
.super Landroid/view/animation/Animation;


# instance fields
.field private a:Landroid/view/View;

.field private b:F

.field private c:F

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Landroid/view/View;FFFF)V
    .locals 2

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p5, p0, Lcom/zhangdan/preferential/widget/h;->b:F

    iput p4, p0, Lcom/zhangdan/preferential/widget/h;->d:F

    iput p3, p0, Lcom/zhangdan/preferential/widget/h;->c:F

    iput p2, p0, Lcom/zhangdan/preferential/widget/h;->e:F

    iput-object p1, p0, Lcom/zhangdan/preferential/widget/h;->a:Landroid/view/View;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/preferential/widget/h;->setDuration(J)V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget v0, p0, Lcom/zhangdan/preferential/widget/h;->b:F

    iget v1, p0, Lcom/zhangdan/preferential/widget/h;->c:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/zhangdan/preferential/widget/h;->c:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/widget/h;->d:F

    iget v2, p0, Lcom/zhangdan/preferential/widget/h;->e:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/zhangdan/preferential/widget/h;->e:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/zhangdan/preferential/widget/h;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    float-to-int v0, v1

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
