.class public final Lcom/a/a/a/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/a/e/b;


# instance fields
.field private a:Lcom/a/a/a/b;

.field private b:Lcom/a/a/a/e/a/l;

.field private c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/a/a/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/e/c;->a:Lcom/a/a/a/b;

    new-instance v0, Lcom/a/a/a/e/d;

    invoke-direct {v0, p0}, Lcom/a/a/a/e/d;-><init>(Lcom/a/a/a/e/c;)V

    iput-object v0, p0, Lcom/a/a/a/e/c;->b:Lcom/a/a/a/e/a/l;

    return-void
.end method

.method static synthetic a(Lcom/a/a/a/e/c;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/e/c;->a:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->m()Lcom/a/a/a/d/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/a/a/a/d/c;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/e/c;->a:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->a()Lcom/a/a/a/a/a;

    iget-object v0, p0, Lcom/a/a/a/e/c;->a:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->o()Z

    move-result v0

    invoke-static {v1, p2, p3, v0}, Lcom/a/a/a/a/a;->a(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/e/c;->a:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->l()Lcom/a/a/a/g/a;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lcom/a/a/a/g/a;->a(Ljava/lang/String;Ljava/io/File;)V

    iget-object v0, p0, Lcom/a/a/a/e/c;->a:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->a()Lcom/a/a/a/a/a;

    iget-object v0, p0, Lcom/a/a/a/e/c;->a:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->o()Z

    move-result v0

    invoke-static {v1, p2, p3, v0}, Lcom/a/a/a/a/a;->a(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a/a/e/c;)Lcom/a/a/a/b;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/e/c;->a:Lcom/a/a/a/b;

    return-object v0
.end method

.method private a(Lcom/a/a/a/f/c;I)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/e/c;->a:Lcom/a/a/a/b;

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

    invoke-virtual {p1, v0}, Lcom/a/a/a/f/c;->a(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/e/c;->a:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->a()Lcom/a/a/a/a/a;

    iget-object v0, p0, Lcom/a/a/a/e/c;->a:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->o()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/a/a/a/a/a;->a(Lcom/a/a/a/f/c;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/e/c;->a:Lcom/a/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/a/b;->k()Lcom/a/a/a/b/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/a/a/a/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Lcom/a/a/a/f/c;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/a/a/a/e/c;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/e/c;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/e/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;)V
    .locals 3

    new-instance v0, Lcom/a/a/a/f/c;

    invoke-direct {v0, p1}, Lcom/a/a/a/f/c;-><init>(Landroid/widget/ImageView;)V

    :try_start_0
    iget-object v1, p0, Lcom/a/a/a/e/c;->a:Lcom/a/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/a/b;->j()Lcom/a/a/a/b/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->c()I

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->d()I

    invoke-interface {v1, v2}, Lcom/a/a/a/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/a/a/a/f/c;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/a/a/a/f/c;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/a/a/a/e/c;->a:Lcom/a/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/a/b;->j()Lcom/a/a/a/b/a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->n()I

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->m()I

    invoke-interface {v2, v1}, Lcom/a/a/a/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/a/a/a/f/c;->a(Landroid/graphics/Bitmap;)V

    :goto_1
    invoke-virtual {v0}, Lcom/a/a/a/f/c;->j()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/a/a/a/e/c;->b:Lcom/a/a/a/e/a/l;

    invoke-virtual {v1, v0}, Lcom/a/a/a/e/a/l;->b(Lcom/a/a/a/f/c;)V
    :try_end_0
    .catch Lcom/a/a/a/c/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->h()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/e/c;->a(Lcom/a/a/a/f/c;I)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/a/a/a/f/c;->g()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/e/c;->a(Lcom/a/a/a/f/c;I)V
    :try_end_1
    .catch Lcom/a/a/a/c/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->h()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/e/c;->a(Lcom/a/a/a/f/c;I)V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/a/a/a/f/c;->g()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/e/c;->a(Lcom/a/a/a/f/c;I)V
    :try_end_2
    .catch Lcom/a/a/a/c/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
