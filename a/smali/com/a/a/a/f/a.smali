.class public final Lcom/a/a/a/f/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Landroid/view/animation/Animation;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/f/a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/a/a/a/f/a;->c:I

    iput p3, p0, Lcom/a/a/a/f/a;->d:I

    iput p4, p0, Lcom/a/a/a/f/a;->f:I

    iput p5, p0, Lcom/a/a/a/f/a;->e:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/f/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/a/a/a/f/a;->h:I

    return-void
.end method

.method public final a(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/a/f/a;->k:Landroid/view/animation/Animation;

    return-void
.end method

.method public final a(Lcom/a/a/a/e/a/k;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/a/a/a/f/a;->m:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/a/f/a;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/a/a/a/f/a;->i:Z

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/f/a;->d:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/a/a/a/f/a;->g:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/a/f/a;->l:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/a/a/a/f/a;->j:Z

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/f/a;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/f/a;->e:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/f/a;->f:I

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/a/f/a;->i:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/a/f/a;->j:Z

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/f/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/f/a;->h:I

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/f/a;->g:I

    return v0
.end method

.method public final k()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/f/a;->k:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public final l()Lcom/a/a/a/e/a/k;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/f/a;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/f/a;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/e/a/k;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
