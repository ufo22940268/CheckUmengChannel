.class final Lcom/zhangdan/app/widget/h;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/widget/LockView;

.field private b:I

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/Rect;

.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/widget/LockView;I)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/app/widget/h;->a:Lcom/zhangdan/app/widget/LockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/zhangdan/app/widget/h;->b:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/widget/h;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/widget/h;->d:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/widget/h;->e:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/widget/h;->b:I

    return v0
.end method

.method public final a(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/widget/h;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/h;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    add-int v0, p1, p3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/zhangdan/app/widget/h;->f:I

    add-int v0, p2, p4

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/zhangdan/app/widget/h;->g:I

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/zhangdan/app/widget/h;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/widget/h;->a:Lcom/zhangdan/app/widget/LockView;

    invoke-static {v0}, Lcom/zhangdan/app/widget/LockView;->a(Lcom/zhangdan/app/widget/LockView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/widget/h;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/h;->a:Lcom/zhangdan/app/widget/LockView;

    invoke-static {v0}, Lcom/zhangdan/app/widget/LockView;->a(Lcom/zhangdan/app/widget/LockView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/widget/h;->a:Lcom/zhangdan/app/widget/LockView;

    invoke-static {v0}, Lcom/zhangdan/app/widget/LockView;->b(Lcom/zhangdan/app/widget/LockView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/widget/h;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/h;->a:Lcom/zhangdan/app/widget/LockView;

    invoke-static {v0}, Lcom/zhangdan/app/widget/LockView;->b(Lcom/zhangdan/app/widget/LockView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zhangdan/app/widget/h;->e:Z

    return-void
.end method

.method public final a(II)Z
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/widget/h;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zhangdan/app/widget/h;->e:Z

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/widget/h;->f:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/widget/h;->g:I

    return v0
.end method
