.class public Lcom/zhangdan/app/widget/CustomCheckBox;
.super Landroid/view/View;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Z

.field private d:I

.field private e:I

.field private f:Lcom/zhangdan/app/widget/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->f:Lcom/zhangdan/app/widget/b;

    sget-object v0, Lcom/zhangdan/app/R$styleable;->c:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->b:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->c:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->d:I

    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->e:I

    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->a:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->d:I

    iget v2, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->e:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->b:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->d:I

    iget v2, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->e:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p0}, Lcom/zhangdan/app/widget/CustomCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/zhangdan/app/widget/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->f:Lcom/zhangdan/app/widget/b;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->c:Z

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/CustomCheckBox;->invalidate()V

    iget-object v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->f:Lcom/zhangdan/app/widget/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->f:Lcom/zhangdan/app/widget/b;

    invoke-interface {v1, p0, v0}, Lcom/zhangdan/app/widget/b;->a(Lcom/zhangdan/app/widget/CustomCheckBox;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->d:I

    iget v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->e:I

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/widget/CustomCheckBox;->setMeasuredDimension(II)V

    return-void
.end method
