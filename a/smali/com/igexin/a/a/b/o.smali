.class public final Lcom/igexin/a/a/b/o;
.super Lcom/igexin/a/a/b/l;


# instance fields
.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/a/b/l;-><init>()V

    iput-object p2, p0, Lcom/igexin/a/a/b/o;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/igexin/a/a/b/o;->f:Ljava/lang/String;

    return-void
.end method

.method static b(Ljava/lang/StringBuilder;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/igexin/a/a/b/o;->c:Lcom/igexin/a/a/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/a/a/b/b;

    invoke-direct {v0}, Lcom/igexin/a/a/b/b;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/b/o;->c:Lcom/igexin/a/a/b/b;

    iget-object v0, p0, Lcom/igexin/a/a/b/o;->c:Lcom/igexin/a/a/b/b;

    const-string v1, "text"

    iget-object v2, p0, Lcom/igexin/a/a/b/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/igexin/a/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "#text"

    return-object v0
.end method

.method final a(Ljava/lang/StringBuilder;ILcom/igexin/a/a/b/f;)V
    .locals 2

    invoke-virtual {p0}, Lcom/igexin/a/a/b/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/igexin/a/a/b/j;->a(Ljava/lang/String;Lcom/igexin/a/a/b/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/igexin/a/a/b/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igexin/a/a/b/o;->r()Lcom/igexin/a/a/b/l;

    move-result-object v0

    instance-of v0, v0, Lcom/igexin/a/a/b/i;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igexin/a/a/b/o;->r()Lcom/igexin/a/a/b/l;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/i;

    invoke-virtual {v0}, Lcom/igexin/a/a/b/i;->p()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/igexin/a/a/a/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_0
    invoke-virtual {p3}, Lcom/igexin/a/a/b/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/igexin/a/a/b/l;->e:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/b/o;->a:Lcom/igexin/a/a/b/l;

    instance-of v0, v0, Lcom/igexin/a/a/b/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/b/o;->a:Lcom/igexin/a/a/b/l;

    check-cast v0, Lcom/igexin/a/a/b/i;

    invoke-virtual {v0}, Lcom/igexin/a/a/b/i;->h()Lcom/igexin/a/a/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/a/c/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/igexin/a/a/b/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2, p3}, Lcom/igexin/a/a/b/o;->c(Ljava/lang/StringBuilder;ILcom/igexin/a/a/b/f;)V

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/a/a/b/l;
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/a/b/o;->d()V

    invoke-super {p0, p1, p2}, Lcom/igexin/a/a/b/l;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/a/a/b/l;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/lang/StringBuilder;ILcom/igexin/a/a/b/f;)V
    .locals 0

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/b/o;->c:Lcom/igexin/a/a/b/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/b/o;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/b/o;->c:Lcom/igexin/a/a/b/b;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/a/b/o;->d()V

    invoke-super {p0, p1}, Lcom/igexin/a/a/b/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/a/b/o;->d()V

    invoke-super {p0, p1}, Lcom/igexin/a/a/b/l;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/a/b/o;->d()V

    invoke-super {p0, p1}, Lcom/igexin/a/a/b/l;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Lcom/igexin/a/a/b/b;
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/a/b/o;->d()V

    invoke-super {p0}, Lcom/igexin/a/a/b/l;->s()Lcom/igexin/a/a/b/b;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/igexin/a/a/b/o;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
