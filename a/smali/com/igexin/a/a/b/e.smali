.class public final Lcom/igexin/a/a/b/e;
.super Lcom/igexin/a/a/b/i;


# instance fields
.field private f:Lcom/igexin/a/a/b/f;

.field private g:Lcom/igexin/a/a/b/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "#root"

    invoke-static {v0}, Lcom/igexin/a/a/c/f;->a(Ljava/lang/String;)Lcom/igexin/a/a/c/f;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/igexin/a/a/b/i;-><init>(Lcom/igexin/a/a/c/f;Ljava/lang/String;)V

    new-instance v0, Lcom/igexin/a/a/b/f;

    invoke-direct {v0}, Lcom/igexin/a/a/b/f;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/b/e;->f:Lcom/igexin/a/a/b/f;

    sget-object v0, Lcom/igexin/a/a/b/g;->a:Lcom/igexin/a/a/b/g;

    iput-object v0, p0, Lcom/igexin/a/a/b/e;->g:Lcom/igexin/a/a/b/g;

    return-void
.end method

.method private x()Lcom/igexin/a/a/b/e;
    .locals 2

    invoke-super {p0}, Lcom/igexin/a/a/b/i;->e()Lcom/igexin/a/a/b/i;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/e;

    iget-object v1, p0, Lcom/igexin/a/a/b/e;->f:Lcom/igexin/a/a/b/f;

    invoke-virtual {v1}, Lcom/igexin/a/a/b/f;->f()Lcom/igexin/a/a/b/f;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/a/a/b/e;->f:Lcom/igexin/a/a/b/f;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/igexin/a/a/b/g;)Lcom/igexin/a/a/b/e;
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/a/b/e;->g:Lcom/igexin/a/a/b/g;

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "#document"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/igexin/a/a/b/i;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/igexin/a/a/b/f;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/b/e;->f:Lcom/igexin/a/a/b/f;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/a/b/e;->x()Lcom/igexin/a/a/b/e;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/igexin/a/a/b/g;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/b/e;->g:Lcom/igexin/a/a/b/g;

    return-object v0
.end method

.method public final synthetic e()Lcom/igexin/a/a/b/i;
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/a/b/e;->x()Lcom/igexin/a/a/b/e;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/igexin/a/a/b/l;
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/a/b/e;->x()Lcom/igexin/a/a/b/e;

    move-result-object v0

    return-object v0
.end method
