.class public Lcom/zhangdan/app/widget/AvatarView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->g:Landroid/graphics/Rect;

    sget-object v0, Lcom/zhangdan/app/R$styleable;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/widget/AvatarView;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zhangdan/app/widget/AvatarView;->c:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/zhangdan/app/widget/AvatarView;->d:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->b:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->a:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/zhangdan/app/widget/AvatarView;->e:I

    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/zhangdan/app/widget/AvatarView;->f:I

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->a:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/zhangdan/app/widget/AvatarView;->e:I

    iget v3, p0, Lcom/zhangdan/app/widget/AvatarView;->f:I

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->b:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/zhangdan/app/widget/AvatarView;->e:I

    iget v3, p0, Lcom/zhangdan/app/widget/AvatarView;->f:I

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->g:Landroid/graphics/Rect;

    iget v2, p0, Lcom/zhangdan/app/widget/AvatarView;->e:I

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/zhangdan/app/widget/AvatarView;->f:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zhangdan/app/widget/AvatarView;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/zhangdan/app/widget/AvatarView;->e:I

    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/zhangdan/app/widget/AvatarView;->f:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->c:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->d:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zhangdan/app/widget/AvatarView;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/AvatarView;->invalidate()V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->d:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->d:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->c:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->d:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget v0, p0, Lcom/zhangdan/app/widget/AvatarView;->e:I

    iget v1, p0, Lcom/zhangdan/app/widget/AvatarView;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/widget/AvatarView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zhangdan/app/widget/AvatarView;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->c:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->d:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zhangdan/app/widget/AvatarView;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/AvatarView;->invalidate()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/zhangdan/app/widget/AvatarView;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/AvatarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/AvatarView;->invalidate()V

    return-void
.end method
