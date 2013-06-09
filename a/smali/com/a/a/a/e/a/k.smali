.class public final Lcom/a/a/a/e/a/k;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field private final a:Lcom/a/a/a/f/c;

.field private final b:Lcom/a/a/a/b;

.field private final c:Ljava/lang/ref/WeakReference;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/a/a/a/f/c;Lcom/a/a/a/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/a/e/a/k;-><init>(Lcom/a/a/a/f/c;Lcom/a/a/a/b;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public constructor <init>(Lcom/a/a/a/f/c;Lcom/a/a/a/b;Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/e/a/k;->a:Lcom/a/a/a/f/c;

    iput-object p2, p0, Lcom/a/a/a/e/a/k;->b:Lcom/a/a/a/b;

    iput-object p3, p0, Lcom/a/a/a/e/a/k;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resource"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/a/a/a/e/a/k;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/a/a/a/e/a/k;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/a/a/a/e/a/k;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/a/a/a/e/a/k;->b:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->k()Lcom/a/a/a/b/a;

    move-result-object v0

    iget v2, p0, Lcom/a/a/a/e/a/k;->g:I

    iget v2, p0, Lcom/a/a/a/e/a/k;->h:I

    invoke-interface {v0, v1}, Lcom/a/a/a/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/e/a/k;->b:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/e/a/k;->b:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->a()Lcom/a/a/a/a/a;

    iget v0, p0, Lcom/a/a/a/e/a/k;->g:I

    iget v0, p0, Lcom/a/a/a/e/a/k;->h:I

    iget v0, p0, Lcom/a/a/a/e/a/k;->i:I

    invoke-static {p1, v0}, Lcom/a/a/a/a/a;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/a/a/a/e/a/k;->b:Lcom/a/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/a/b;->k()Lcom/a/a/a/b/a;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/a/a/a/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/e/a/k;->b:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->a()Lcom/a/a/a/a/a;

    iget v0, p0, Lcom/a/a/a/e/a/k;->g:I

    iget v2, p0, Lcom/a/a/a/e/a/k;->h:I

    iget v3, p0, Lcom/a/a/a/e/a/k;->i:I

    iget-object v4, p0, Lcom/a/a/a/e/a/k;->b:Lcom/a/a/a/b;

    invoke-virtual {v4}, Lcom/a/a/a/b;->o()Z

    move-result v4

    invoke-static {p1, v0, v2, v3, v4}, Lcom/a/a/a/a/a;->a(Landroid/content/Context;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Lcom/a/a/a/f/c;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/a/e/a/k;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/a/a/a/e/a/k;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/a/a/a/f/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private varargs h()Landroid/graphics/Bitmap;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/a/e/a/k;->a:Lcom/a/a/a/f/c;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/e/a/k;->a:Lcom/a/a/a/f/c;

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/a/a/a/e/a/k;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->c()I

    move-result v2

    iput v2, p0, Lcom/a/a/a/e/a/k;->g:I

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->d()I

    move-result v2

    iput v2, p0, Lcom/a/a/a/e/a/k;->h:I

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->h()I

    move-result v2

    iput v2, p0, Lcom/a/a/a/e/a/k;->i:I

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/a/a/e/a/k;->f:Z

    iget-object v0, p0, Lcom/a/a/a/e/a/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/e/a/k;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/e/a/k;->d:Ljava/lang/String;

    const-string v2, "_url_error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/e/a/k;->a:Lcom/a/a/a/f/c;

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/a/e/a/k;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/a/a/a/e/a/k;->a:Lcom/a/a/a/f/c;

    invoke-direct {p0, v0}, Lcom/a/a/a/e/a/k;->a(Lcom/a/a/a/f/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/a/a/a/e/a/k;->a:Lcom/a/a/a/f/c;

    invoke-virtual {v2}, Lcom/a/a/a/f/c;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/a/a/a/e/a/k;->b:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->m()Lcom/a/a/a/d/c;

    move-result-object v0

    iget-object v3, p0, Lcom/a/a/a/e/a/k;->d:Ljava/lang/String;

    iget v4, p0, Lcom/a/a/a/e/a/k;->g:I

    iget v5, p0, Lcom/a/a/a/e/a/k;->h:I

    invoke-interface {v0, v3, v4, v5}, Lcom/a/a/a/d/c;->a(Ljava/lang/String;II)Ljava/io/File;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/a/a/a/e/a/k;->b:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->m()Lcom/a/a/a/d/c;

    move-result-object v0

    iget-object v3, p0, Lcom/a/a/a/e/a/k;->d:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/a/a/a/d/c;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2}, Lcom/a/a/a/f/c;->k()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/a/a/a/e/a/k;->e:Z

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/a/a/a/e/a/k;->f:Z

    if-eqz v2, :cond_6

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    :try_start_0
    iget-object v2, p0, Lcom/a/a/a/e/a/k;->b:Lcom/a/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/a/b;->l()Lcom/a/a/a/g/a;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/a/e/a/k;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/a/a/a/g/a;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Lcom/a/a/a/c/a; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    iget-object v2, p0, Lcom/a/a/a/e/a/k;->a:Lcom/a/a/a/f/c;

    invoke-direct {p0, v2}, Lcom/a/a/a/e/a/k;->a(Lcom/a/a/a/f/c;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/a/a/a/e/a/k;->a:Lcom/a/a/a/f/c;

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/a/e/a/k;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/a/a/a/e/a/k;->b:Lcom/a/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/a/b;->p()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/a/a/a/e/a/k;->b:Lcom/a/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/a/b;->a()Lcom/a/a/a/a/a;

    iget v1, p0, Lcom/a/a/a/e/a/k;->g:I

    iget v2, p0, Lcom/a/a/a/e/a/k;->h:I

    invoke-static {v0, v1, v2}, Lcom/a/a/a/a/a;->a(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_a

    move-object v0, v1

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/a/a/a/e/a/k;->b:Lcom/a/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/a/b;->a()Lcom/a/a/a/a/a;

    iget v1, p0, Lcom/a/a/a/e/a/k;->g:I

    iget v2, p0, Lcom/a/a/a/e/a/k;->h:I

    iget-object v3, p0, Lcom/a/a/a/e/a/k;->b:Lcom/a/a/a/b;

    invoke-virtual {v3}, Lcom/a/a/a/b;->o()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/a/a/a;->a(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_a
    iget-boolean v2, p0, Lcom/a/a/a/e/a/k;->e:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/a/a/a/e/a/k;->b:Lcom/a/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/a/b;->m()Lcom/a/a/a/d/c;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/a/a/a/e/a/k;->g:I

    iget v4, p0, Lcom/a/a/a/e/a/k;->h:I

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/a/a/a/d/c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;II)V

    :cond_b
    iget-object v0, p0, Lcom/a/a/a/e/a/k;->b:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->j()Lcom/a/a/a/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/a/e/a/k;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/a/a/a/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/e/a/k;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/a/a/a/e/a/k;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/a/a/a/e/a/k;->a:Lcom/a/a/a/f/c;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/a/a/a/e/a/k;->a(Lcom/a/a/a/f/c;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->o()Lcom/a/a/a/e/a/k;

    move-result-object v0

    if-eq v0, p0, :cond_3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/a/e/a/k;->a:Lcom/a/a/a/f/c;

    iget-object v1, p0, Lcom/a/a/a/e/a/k;->c:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/a/a/a/e/a/k;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/a/a/a/e/a/k;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->e()Landroid/widget/ImageView;

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/e/a/k;->a:Lcom/a/a/a/f/c;

    invoke-virtual {v0, p1}, Lcom/a/a/a/f/c;->a(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/e/a/k;->d:Ljava/lang/String;

    return-object v0
.end method
