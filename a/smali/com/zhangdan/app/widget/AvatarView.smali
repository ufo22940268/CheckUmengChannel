.class public Lcom/zhangdan/app/widget/AvatarView;
.super Landroid/widget/ImageView;
.source "AvatarView.java"


# instance fields
.field private mAvatarDrawable:Landroid/graphics/drawable/Drawable;

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mMaskDrawable:Landroid/graphics/drawable/Drawable;

.field private mRect:Landroid/graphics/Rect;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mRect:Landroid/graphics/Rect;

    .line 35
    sget-object v2, Lcom/zhangdan/app/R$styleable;->CustomAvatar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, arr:Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    .line 38
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v1, v2

    .line 40
    .local v1, pad:I
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 41
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 44
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mWidth:I

    .line 45
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mHeight:I

    .line 50
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/zhangdan/app/widget/AvatarView;->mWidth:I

    iget v4, p0, Lcom/zhangdan/app/widget/AvatarView;->mHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 55
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/zhangdan/app/widget/AvatarView;->mWidth:I

    iget v4, p0, Lcom/zhangdan/app/widget/AvatarView;->mHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 56
    :cond_2
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/zhangdan/app/widget/AvatarView;->mWidth:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/zhangdan/app/widget/AvatarView;->mHeight:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 57
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/zhangdan/app/widget/AvatarView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 58
    return-void

    .line 46
    :cond_3
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mWidth:I

    .line 48
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mHeight:I

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 71
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 72
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    .line 76
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 82
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 83
    iget-object v2, p0, Lcom/zhangdan/app/widget/AvatarView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_3
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 64
    iget v0, p0, Lcom/zhangdan/app/widget/AvatarView;->mWidth:I

    iget v1, p0, Lcom/zhangdan/app/widget/AvatarView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/widget/AvatarView;->setMeasuredDimension(II)V

    .line 65
    return-void
.end method

.method public setAvatar(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/AvatarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/AvatarView;->invalidate()V

    .line 92
    return-void
.end method

.method public setAvatar(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "avatar"

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zhangdan/app/widget/AvatarView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 111
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/AvatarView;->invalidate()V

    .line 112
    return-void

    .line 108
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setAvatar(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "avatar"

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/widget/AvatarView;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zhangdan/app/widget/AvatarView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 101
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/AvatarView;->invalidate()V

    .line 102
    return-void

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/zhangdan/app/widget/AvatarView;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bm"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/widget/AvatarView;->setAvatar(Landroid/graphics/Bitmap;)V

    .line 117
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/widget/AvatarView;->setAvatar(Landroid/graphics/drawable/Drawable;)V

    .line 122
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/widget/AvatarView;->setAvatar(I)V

    .line 127
    return-void
.end method
