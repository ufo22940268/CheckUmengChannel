.class public final Lcom/igexin/a/a/b/c;
.super Lcom/igexin/a/a/b/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/igexin/a/a/b/l;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/b/c;->c:Lcom/igexin/a/a/b/b;

    const-string v1, "comment"

    invoke-virtual {v0, v1, p1}, Lcom/igexin/a/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "#comment"

    return-object v0
.end method

.method final a(Ljava/lang/StringBuilder;ILcom/igexin/a/a/b/f;)V
    .locals 3

    invoke-virtual {p3}, Lcom/igexin/a/a/b/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/igexin/a/a/b/c;->c(Ljava/lang/StringBuilder;ILcom/igexin/a/a/b/f;)V

    :cond_0
    const-string v0, "<!--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/a/b/c;->c:Lcom/igexin/a/a/b/b;

    const-string v2, "comment"

    invoke-virtual {v1, v2}, Lcom/igexin/a/a/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method final b(Ljava/lang/StringBuilder;ILcom/igexin/a/a/b/f;)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/igexin/a/a/b/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
