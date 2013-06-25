.class Lcom/zhangdan/app/widget/LockView$Cell;
.super Ljava/lang/Object;
.source "LockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/widget/LockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Cell"
.end annotation


# instance fields
.field private activeRect:Landroid/graphics/Rect;

.field private centerX:I

.field private centerY:I

.field private index:I

.field private isSelected:Z

.field private rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/zhangdan/app/widget/LockView;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/widget/LockView;I)V
    .locals 1
    .parameter
    .parameter "index"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/zhangdan/app/widget/LockView$Cell;->this$0:Lcom/zhangdan/app/widget/LockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput p2, p0, Lcom/zhangdan/app/widget/LockView$Cell;->index:I

    .line 228
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/widget/LockView$Cell;->rect:Landroid/graphics/Rect;

    .line 229
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/widget/LockView$Cell;->activeRect:Landroid/graphics/Rect;

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/widget/LockView$Cell;->isSelected:Z

    .line 231
    return-void
.end method


# virtual methods
.method public contains(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView$Cell;->activeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/zhangdan/app/widget/LockView$Cell;->isSelected:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView$Cell;->this$0:Lcom/zhangdan/app/widget/LockView;

    #getter for: Lcom/zhangdan/app/widget/LockView;->mSelDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/zhangdan/app/widget/LockView;->access$000(Lcom/zhangdan/app/widget/LockView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/widget/LockView$Cell;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 255
    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView$Cell;->this$0:Lcom/zhangdan/app/widget/LockView;

    #getter for: Lcom/zhangdan/app/widget/LockView;->mSelDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/zhangdan/app/widget/LockView;->access$000(Lcom/zhangdan/app/widget/LockView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 260
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView$Cell;->this$0:Lcom/zhangdan/app/widget/LockView;

    #getter for: Lcom/zhangdan/app/widget/LockView;->mUnSelDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/zhangdan/app/widget/LockView;->access$100(Lcom/zhangdan/app/widget/LockView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/widget/LockView$Cell;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 258
    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView$Cell;->this$0:Lcom/zhangdan/app/widget/LockView;

    #getter for: Lcom/zhangdan/app/widget/LockView;->mUnSelDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/zhangdan/app/widget/LockView;->access$100(Lcom/zhangdan/app/widget/LockView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getCenterX()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/zhangdan/app/widget/LockView$Cell;->centerX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/zhangdan/app/widget/LockView$Cell;->centerY:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/zhangdan/app/widget/LockView$Cell;->index:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/zhangdan/app/widget/LockView$Cell;->isSelected:Z

    return v0
.end method

.method public setRect(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView$Cell;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 235
    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView$Cell;->activeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 236
    add-int v0, p1, p3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/zhangdan/app/widget/LockView$Cell;->centerX:I

    .line 237
    add-int v0, p2, p4

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/zhangdan/app/widget/LockView$Cell;->centerY:I

    .line 238
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "isSelected"

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/zhangdan/app/widget/LockView$Cell;->isSelected:Z

    .line 250
    return-void
.end method
