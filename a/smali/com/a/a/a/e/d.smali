.class final Lcom/a/a/a/e/d;
.super Lcom/a/a/a/e/a/l;


# instance fields
.field final synthetic a:Lcom/a/a/a/e/c;


# direct methods
.method constructor <init>(Lcom/a/a/a/e/c;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/a/e/d;->a:Lcom/a/a/a/e/c;

    invoke-direct {p0}, Lcom/a/a/a/e/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/a/a/a/f/c;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/a/a/a/e/d;->a:Lcom/a/a/a/e/c;

    invoke-virtual {p1}, Lcom/a/a/a/f/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/a/a/f/c;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/a/a/a/f/c;->d()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/a/e/c;->a(Lcom/a/a/a/e/c;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/a/a/a/f/c;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Lcom/a/a/a/e/a/j;

    invoke-direct {v0, p2, p1}, Lcom/a/a/a/e/a/j;-><init>(Landroid/graphics/Bitmap;Lcom/a/a/a/f/c;)V

    invoke-virtual {v0}, Lcom/a/a/a/e/a/j;->a()V

    iget-object v0, p0, Lcom/a/a/a/e/d;->a:Lcom/a/a/a/e/c;

    invoke-static {v0}, Lcom/a/a/a/e/c;->a(Lcom/a/a/a/e/c;)Lcom/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/b;->j()Lcom/a/a/a/b/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/f/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/a/a/a/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/a/a/a/e/d;->a:Lcom/a/a/a/e/c;

    invoke-virtual {p1}, Lcom/a/a/a/f/c;->e()Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/a/a/a/e/c;->b(Lcom/a/a/a/e/c;)V

    return-void
.end method
