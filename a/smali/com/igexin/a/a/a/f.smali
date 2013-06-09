.class public final Lcom/igexin/a/a/a/f;
.super Lcom/igexin/a/a/a/e;

# interfaces
.implements Lcom/igexin/a/a/e;


# instance fields
.field private e:I

.field private f:Z

.field private g:Ljava/util/Collection;

.field private h:Z

.field private i:Z

.field private j:Lcom/igexin/a/a/c/e;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igexin/a/a/a/e;-><init>(B)V

    iput-boolean v0, p0, Lcom/igexin/a/a/a/f;->h:Z

    iput-boolean v0, p0, Lcom/igexin/a/a/a/f;->i:Z

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/igexin/a/a/a/f;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/a/a/f;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/a/f;->g:Ljava/util/Collection;

    sget-object v0, Lcom/igexin/a/a/d;->a:Lcom/igexin/a/a/d;

    iput-object v0, p0, Lcom/igexin/a/a/a/f;->b:Lcom/igexin/a/a/d;

    iget-object v0, p0, Lcom/igexin/a/a/a/f;->c:Ljava/util/Map;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/igexin/a/a/c/e;->a()Lcom/igexin/a/a/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/a/f;->j:Lcom/igexin/a/a/c/e;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/a/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/igexin/a/a/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Ljava/net/URL;
    .locals 1

    invoke-super {p0}, Lcom/igexin/a/a/a/e;->a()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Lcom/igexin/a/a/d;
    .locals 1

    invoke-super {p0}, Lcom/igexin/a/a/a/e;->b()Lcom/igexin/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b(Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/igexin/a/a/a/e;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic c()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/igexin/a/a/a/e;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/igexin/a/a/a/e;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic d()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/igexin/a/a/a/e;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/igexin/a/a/a/f;->e:I

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/a/a/a/f;->f:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/a/a/a/f;->h:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/a/a/a/f;->i:Z

    return v0
.end method

.method public final i()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/a/f;->g:Ljava/util/Collection;

    return-object v0
.end method

.method public final j()Lcom/igexin/a/a/c/e;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/a/f;->j:Lcom/igexin/a/a/c/e;

    return-object v0
.end method

.method public final synthetic k()Lcom/igexin/a/a/e;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "Timeout milliseconds must be 0 (infinite) or greater"

    invoke-static {v0, v1}, Lcom/igexin/a/a/a/i;->a(ZLjava/lang/String;)V

    const v0, 0xea60

    iput v0, p0, Lcom/igexin/a/a/a/f;->e:I

    return-object p0
.end method
