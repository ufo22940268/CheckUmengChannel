.class public Lcom/zhangdan/app/widget/ShoppingSheetLayout;
.super Landroid/widget/RelativeLayout;
.source "ShoppingSheetLayout.java"


# instance fields
.field private mLineDrawable:Landroid/graphics/drawable/Drawable;

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->mRect:Landroid/graphics/Rect;

    .line 27
    sget-object v1, Lcom/zhangdan/app/R$styleable;->ShoppingSheetRelativeLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    .local v0, typedArr:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->mLineDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 35
    iget-object v0, p0, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->mLineDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->mLineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    iget-object v0, p0, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->mLineDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 38
    iget-object v0, p0, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->mLineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 40
    :cond_0
    return-void
.end method

.method public setLineDrawable(I)V
    .locals 1
    .parameter "lineDrawableResId"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->mLineDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->invalidate()V

    .line 50
    return-void
.end method
