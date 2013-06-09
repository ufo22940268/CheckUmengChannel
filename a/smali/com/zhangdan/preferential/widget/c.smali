.class final Lcom/zhangdan/preferential/widget/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/widget/HorizontalScrollBar;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/widget/HorizontalScrollBar;II)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/widget/c;->a:Lcom/zhangdan/preferential/widget/HorizontalScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/zhangdan/preferential/widget/c;->b:I

    iput p3, p0, Lcom/zhangdan/preferential/widget/c;->c:I

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/c;->a:Lcom/zhangdan/preferential/widget/HorizontalScrollBar;

    iget v1, p0, Lcom/zhangdan/preferential/widget/c;->c:I

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->a(Lcom/zhangdan/preferential/widget/HorizontalScrollBar;I)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0601cc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lcom/zhangdan/preferential/widget/c;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/c;->a:Lcom/zhangdan/preferential/widget/HorizontalScrollBar;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/e;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/c;->a:Lcom/zhangdan/preferential/widget/HorizontalScrollBar;

    iget v1, p0, Lcom/zhangdan/preferential/widget/c;->c:I

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->a(Lcom/zhangdan/preferential/widget/HorizontalScrollBar;I)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0601cd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/c;->a:Lcom/zhangdan/preferential/widget/HorizontalScrollBar;

    iget v1, p0, Lcom/zhangdan/preferential/widget/c;->b:I

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->a(Lcom/zhangdan/preferential/widget/HorizontalScrollBar;I)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0601cc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
