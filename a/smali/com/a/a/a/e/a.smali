.class public final Lcom/a/a/a/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/a/e/b;


# instance fields
.field private final a:Lcom/a/a/a/b;

.field private b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/a/a/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/e/a;->a:Lcom/a/a/a/b;

    return-void
.end method

.method private a(Lcom/a/a/a/f/c;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/e/a;->a:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->j()Lcom/a/a/a/b/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/f/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/a/a/f/c;->d()I

    invoke-virtual {p1}, Lcom/a/a/a/f/c;->c()I

    invoke-interface {v0, v1}, Lcom/a/a/a/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/a/a/a/f/c;I)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/e/a;->a:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->k()Lcom/a/a/a/b/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/a/a/f/c;->c()I

    invoke-virtual {p1}, Lcom/a/a/a/f/c;->d()I

    invoke-interface {v0, v1}, Lcom/a/a/a/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/e/a;->a:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->a()Lcom/a/a/a/a/a;

    iget-object v0, p0, Lcom/a/a/a/e/a;->a:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->o()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/a/a/a/a/a;->a(Lcom/a/a/a/f/c;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/e/a;->a:Lcom/a/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/a/b;->k()Lcom/a/a/a/b/a;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/a/a/a/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Bitmap;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/a/a/a/f/c;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/e/a;->a:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->j()Lcom/a/a/a/b/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/f/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/a/a/f/c;->n()I

    invoke-virtual {p1}, Lcom/a/a/a/f/c;->m()I

    invoke-interface {v0, v1}, Lcom/a/a/a/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    const-string v0, "ImageLoader"

    const-string v1, "You should never call load if you don\'t set a ImageTag on the view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/a/a/a/f/c;

    invoke-direct {v3, p1}, Lcom/a/a/a/f/c;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v3}, Lcom/a/a/a/f/c;->o()Lcom/a/a/a/e/a/k;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v1

    :goto_2
    if-nez v2, :cond_0

    invoke-direct {p0, v3}, Lcom/a/a/a/e/a;->a(Lcom/a/a/a/f/c;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/a/e/a;->a(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v3}, Lcom/a/a/a/e/a;->a(Lcom/a/a/a/f/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/a/a/a/f/c;->a(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/a/a/a/f/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/a/a/a/e/a/k;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/a/a/a/e/a/k;->e()Z

    move v2, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/a/a/a/f/c;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    :goto_3
    if-eqz v0, :cond_8

    invoke-direct {p0, v3}, Lcom/a/a/a/e/a;->b(Lcom/a/a/a/f/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/e/a;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, v3}, Lcom/a/a/a/e/a;->b(Lcom/a/a/a/f/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/a/a/a/f/c;->a(Landroid/graphics/Bitmap;)V

    :goto_4
    invoke-virtual {v3}, Lcom/a/a/a/f/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/e/a;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_9

    new-instance v0, Lcom/a/a/a/e/a/k;

    iget-object v1, p0, Lcom/a/a/a/e/a;->a:Lcom/a/a/a/b;

    invoke-direct {v0, v3, v1}, Lcom/a/a/a/e/a/k;-><init>(Lcom/a/a/a/f/c;Lcom/a/a/a/b;)V

    :goto_5
    invoke-virtual {v3, v0}, Lcom/a/a/a/f/c;->a(Lcom/a/a/a/e/a/k;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/a/a/a/e/a/k;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;
    :try_end_0
    .catch Lcom/a/a/a/c/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v3}, Lcom/a/a/a/f/c;->h()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/a/a/a/e/a;->a(Lcom/a/a/a/f/c;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/a/a/a/f/c;->b(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Lcom/a/a/a/f/c;->g()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/a/a/a/e/a;->a(Lcom/a/a/a/f/c;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/a/a/a/f/c;->b(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Lcom/a/a/a/f/c;->g()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/a/a/a/e/a;->a(Lcom/a/a/a/f/c;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/a/a/a/f/c;->b(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_9
    :try_start_1
    new-instance v0, Lcom/a/a/a/e/a/k;

    iget-object v1, p0, Lcom/a/a/a/e/a;->a:Lcom/a/a/a/b;

    iget-object v2, p0, Lcom/a/a/a/e/a;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3, v1, v2}, Lcom/a/a/a/e/a/k;-><init>(Lcom/a/a/a/f/c;Lcom/a/a/a/b;Ljava/lang/ref/WeakReference;)V
    :try_end_1
    .catch Lcom/a/a/a/c/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v3}, Lcom/a/a/a/f/c;->h()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/a/a/a/e/a;->a(Lcom/a/a/a/f/c;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/a/a/a/f/c;->b(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1
.end method
