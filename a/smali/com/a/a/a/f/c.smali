.class public final Lcom/a/a/a/f/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/f/c;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/a/a/a/f/a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/a/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/a/a/a/f/a;->c()I

    move-result v1

    iput v1, p0, Lcom/a/a/a/f/c;->h:I

    invoke-virtual {v0}, Lcom/a/a/a/f/a;->b()I

    move-result v1

    iput v1, p0, Lcom/a/a/a/f/c;->i:I

    invoke-virtual {v0}, Lcom/a/a/a/f/a;->f()Z

    move-result v1

    iput-boolean v1, p0, Lcom/a/a/a/f/c;->j:Z

    invoke-virtual {v0}, Lcom/a/a/a/f/a;->d()I

    move-result v1

    iput v1, p0, Lcom/a/a/a/f/c;->e:I

    invoke-virtual {v0}, Lcom/a/a/a/f/a;->e()I

    move-result v1

    iput v1, p0, Lcom/a/a/a/f/c;->d:I

    invoke-virtual {v0}, Lcom/a/a/a/f/a;->j()I

    move-result v1

    iput v1, p0, Lcom/a/a/a/f/c;->g:I

    invoke-virtual {v0}, Lcom/a/a/a/f/a;->i()I

    move-result v1

    iput v1, p0, Lcom/a/a/a/f/c;->f:I

    invoke-virtual {v0}, Lcom/a/a/a/f/a;->g()Z

    move-result v1

    iput-boolean v1, p0, Lcom/a/a/a/f/c;->k:Z

    iget v1, p0, Lcom/a/a/a/f/c;->i:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/a/a/a/f/a;->c()I

    move-result v1

    iput v1, p0, Lcom/a/a/a/f/c;->i:I

    :cond_0
    invoke-virtual {v0}, Lcom/a/a/a/f/a;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/a/f/c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/a/a/a/f/a;->k()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/f/c;->l:Landroid/view/animation/Animation;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/f/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f/a;

    invoke-virtual {v0}, Lcom/a/a/a/f/a;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/a/a/a/f/a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "_url_error"

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/f/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/a/a/a/f/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/f/c;->l:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/f/c;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/a/a/a/f/c;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/a/a/a/e/a/j;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/f/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/a/a/a/e/a/k;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/f/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f/a;

    invoke-virtual {v0, p1}, Lcom/a/a/a/f/a;->a(Lcom/a/a/a/e/a/k;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/f/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/f/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/f/c;->d:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/f/c;->e:I

    return v0
.end method

.method public final e()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/f/c;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final f()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/f/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/f/c;->h:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/f/c;->i:I

    return v0
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/f/c;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/a/a/a/f/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/a/f/c;->j:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/a/f/c;->k:Z

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/f/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/f/c;->f:I

    return v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/f/c;->g:I

    return v0
.end method

.method public final o()Lcom/a/a/a/e/a/k;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/f/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f/a;

    invoke-virtual {v0}, Lcom/a/a/a/f/a;->l()Lcom/a/a/a/e/a/k;

    move-result-object v0

    return-object v0
.end method
