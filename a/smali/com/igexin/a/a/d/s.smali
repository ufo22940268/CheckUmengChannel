.class final Lcom/igexin/a/a/d/s;
.super Lcom/igexin/a/a/d/r;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igexin/a/a/d/r;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method varargs constructor <init>([Lcom/igexin/a/a/d/v;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/igexin/a/a/d/s;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/igexin/a/a/b/i;Lcom/igexin/a/a/b/i;)Z
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/d/s;->a:Ljava/util/List;

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

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/d/s;->a:Ljava/util/List;

    const-string v1, " "

    invoke-static {v0, v1}, Lcom/igexin/a/a/a/h;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
