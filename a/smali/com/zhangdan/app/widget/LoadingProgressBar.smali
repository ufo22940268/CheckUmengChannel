.class public Lcom/zhangdan/app/widget/LoadingProgressBar;
.super Landroid/widget/ImageView;
.source "LoadingProgressBar.java"


# instance fields
.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mCurrProgress:I

.field private mHeight:I

.field private mMaxProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    sget-object v6, Lcom/zhangdan/app/R$styleable;->LoadingProgressBar:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, arr:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 38
    const/4 v6, 0x3

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mMaxProgress:I

    .line 39
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mCurrProgress:I

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    iget-object v6, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mWidth:I

    .line 43
    iget-object v6, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iput v6, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mHeight:I

    .line 45
    iget-object v6, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mWidth:I

    iget v8, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    iget-object v6, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mWidth:I

    iget v8, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    iget-object v6, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mWidth:I

    iget v8, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 52
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    .local v4, sdkVersion:I
    const/16 v6, 0xb

    if-lt v4, v6, :cond_0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 56
    .local v5, viewCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_1
    const-string v6, "setLayerType"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/graphics/Paint;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 57
    .local v3, m:Ljava/lang/reflect/Method;
    const-string v6, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 58
    .local v2, layerTypeSofterware:I
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, v6, v7

    invoke-virtual {v3, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .end local v2           #layerTypeSofterware:I
    .end local v3           #m:Ljava/lang/reflect/Method;
    .end local v4           #sdkVersion:I
    .end local v5           #viewCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local v4       #sdkVersion:I
    .restart local v5       #viewCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 60
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 63
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #sdkVersion:I
    .end local v5           #viewCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 64
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    iget-object v1, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 79
    iget v1, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mCurrProgress:I

    int-to-float v1, v1

    const/4 v2, 0x0

    add-float/2addr v1, v2

    iget v2, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mMaxProgress:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 80
    .local v0, right:I
    iget v1, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mHeight:I

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 81
    iget-object v1, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 83
    iget-object v1, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 84
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 71
    iget v0, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mWidth:I

    iget v1, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/widget/LoadingProgressBar;->setMeasuredDimension(II)V

    .line 72
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 0
    .parameter "maxProgress"

    .prologue
    .line 102
    iput p1, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mMaxProgress:I

    .line 103
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/LoadingProgressBar;->invalidate()V

    .line 104
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progresss"

    .prologue
    .line 92
    iput p1, p0, Lcom/zhangdan/app/widget/LoadingProgressBar;->mCurrProgress:I

    .line 93
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/LoadingProgressBar;->invalidate()V

    .line 94
    return-void
.end method
