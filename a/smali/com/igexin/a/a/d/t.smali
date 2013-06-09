.class final Lcom/igexin/a/a/d/t;
.super Lcom/igexin/a/a/d/r;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/a/d/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/igexin/a/a/d/v;)V
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/d/t;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/igexin/a/a/b/i;Lcom/igexin/a/a/b/i;)Z
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/d/t;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/d/v;

    invoke-virtual {v0, p1, p2}, Lcom/igexin/a/a/d/v;->a(Lcom/igexin/a/a/b/i;Lcom/igexin/a/a/b/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, ":or%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/igexin/a/a/d/t;->a:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
