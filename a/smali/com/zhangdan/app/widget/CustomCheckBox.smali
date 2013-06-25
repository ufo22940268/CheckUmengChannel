.class public Lcom/zhangdan/app/widget/CustomCheckBox;
.super Landroid/view/View;
.source "CustomCheckBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/widget/CustomCheckBox$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field private mCheckedDrawable:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mOnCheckedChangeListener:Lcom/zhangdan/app/widget/CustomCheckBox$OnCheckedChangeListener;

.field private mUnCheckedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v2, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mChecked:Z

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mOnCheckedChangeListener:Lcom/zhangdan/app/widget/CustomCheckBox$OnCheckedChangeListener;

    .line 36
    sget-object v1, Lcom/zhangdan/app/R$styleable;->CustomCheckBox:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    .local v0, arr:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mUnCheckedDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mChecked:Z

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    iget-object v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mWidth:I

    .line 43
    iget-object v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mHeight:I

    .line 44
    iget-object v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mWidth:I

    iget v3, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 45
    iget-object v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mUnCheckedDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mWidth:I

    iget v3, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    invoke-virtual {p0, p0}, Lcom/zhangdan/app/widget/CustomCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/CustomCheckBox;->setCheckedState(Z)V

    .line 82
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mUnCheckedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-boolean v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mChecked:Z

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mUnCheckedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 53
    iget v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mWidth:I

    iget v1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/widget/CustomCheckBox;->setMeasuredDimension(II)V

    .line 54
    return-void
.end method

.method public setCheckedState(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mChecked:Z

    .line 69
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/CustomCheckBox;->invalidate()V

    .line 70
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mOnCheckedChangeListener:Lcom/zhangdan/app/widget/CustomCheckBox$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mOnCheckedChangeListener:Lcom/zhangdan/app/widget/CustomCheckBox$OnCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/zhangdan/app/widget/CustomCheckBox$OnCheckedChangeListener;->onCheckedChanged(Lcom/zhangdan/app/widget/CustomCheckBox;Z)V

    .line 73
    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/zhangdan/app/widget/CustomCheckBox$OnCheckedChangeListener;)V
    .locals 0
    .parameter "onCheckedChangeListener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/zhangdan/app/widget/CustomCheckBox;->mOnCheckedChangeListener:Lcom/zhangdan/app/widget/CustomCheckBox$OnCheckedChangeListener;

    .line 77
    return-void
.end method
