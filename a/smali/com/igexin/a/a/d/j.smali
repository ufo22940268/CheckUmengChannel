.class final Lcom/igexin/a/a/d/j;
.super Lcom/igexin/a/a/d/i;


# direct methods
.method public constructor <init>(Lcom/igexin/a/a/d/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/a/d/i;-><init>()V

    iput-object p1, p0, Lcom/igexin/a/a/d/j;->a:Lcom/igexin/a/a/d/v;

    return-void
.end method


# virtual methods
.method public final a(Lcom/igexin/a/a/b/i;Lcom/igexin/a/a/b/i;)Z
    .locals 3

    invoke-virtual {p2}, Lcom/igexin/a/a/b/i;->m()Lcom/igexin/a/a/d/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/a/d/u;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/i;

    if-eq v0, p2, :cond_0

    iget-object v2, p0, Lcom/igexin/a/a/d/j;->a:Lcom/igexin/a/a/d/v;

    invoke-virtual {v2, p1, v0}, Lcom/igexin/a/a/d/v;->a(Lcom/igexin/a/a/b/i;Lcom/igexin/a/a/b/i;)Z

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

    const-string v0, ":has(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/igexin/a/a/d/j;->a:Lcom/igexin/a/a/d/v;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
