.class abstract Lcom/igexin/a/a/c/n;
.super Lcom/igexin/a/a/c/g;


# instance fields
.field protected b:Ljava/lang/String;

.field c:Z

.field d:Lcom/igexin/a/a/b/b;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igexin/a/a/c/g;-><init>(B)V

    iput-boolean v0, p0, Lcom/igexin/a/a/c/n;->c:Z

    new-instance v0, Lcom/igexin/a/a/b/b;

    invoke-direct {v0}, Lcom/igexin/a/a/b/b;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/c/n;->d:Lcom/igexin/a/a/b/b;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/igexin/a/a/c/n;
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/a/c/n;->b:Ljava/lang/String;

    return-object p0
.end method

.method final a(C)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igexin/a/a/c/n;->b(Ljava/lang/String;)V

    return-void
.end method

.method final b(C)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igexin/a/a/c/n;->c(Ljava/lang/String;)V

    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/c/n;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/igexin/a/a/c/n;->b:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/c/n;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method final c(C)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igexin/a/a/c/n;->d(Ljava/lang/String;)V

    return-void
.end method

.method final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/c/n;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/igexin/a/a/c/n;->e:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/c/n;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method final d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/c/n;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/igexin/a/a/c/n;->f:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/c/n;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method final g()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/igexin/a/a/c/n;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/c/n;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/igexin/a/a/c/n;->f:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/igexin/a/a/b/a;

    iget-object v1, p0, Lcom/igexin/a/a/c/n;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/a/a/c/n;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/igexin/a/a/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/a/a/c/n;->d:Lcom/igexin/a/a/b/b;

    invoke-virtual {v1, v0}, Lcom/igexin/a/a/b/b;->a(Lcom/igexin/a/a/b/a;)V

    :cond_1
    iput-object v3, p0, Lcom/igexin/a/a/c/n;->e:Ljava/lang/String;

    iput-object v3, p0, Lcom/igexin/a/a/c/n;->f:Ljava/lang/String;

    return-void
.end method

.method final h()V
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/c/n;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igexin/a/a/c/n;->g()V

    :cond_0
    return-void
.end method

.method final i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/c/n;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/igexin/a/a/c/n;->b:Ljava/lang/String;

    return-object v0
.end method
