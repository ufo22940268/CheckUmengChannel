.class public Lcom/zhangdan/app/widget/ShoppingSheetLayout;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->b:Landroid/graphics/Rect;

    sget-object v0, Lcom/zhangdan/app/R$styleable;->u:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
