.class public final Lsdk/b/a/a/b/k;
.super Lsdk/b/a/a/b/d;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:J

.field f:Ljava/lang/String;

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsdk/b/a/a/b/d;-><init>()V

    const-string v0, "@email"

    iput-object v0, p0, Lsdk/b/a/a/b/k;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lsdk/b/a/a/b/k;->e:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/k;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lsdk/b/a/a/b/k;->g:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/k;->b:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lsdk/b/a/a/b/k;->h:Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/k;->c:Ljava/lang/String;

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lsdk/b/a/a/b/k;->i:Z

    return-void
.end method

.method public final d()J
    .locals 4

    iget-wide v0, p0, Lsdk/b/a/a/b/k;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lsdk/b/a/a/b/k;->e:J

    :cond_0
    iget-wide v0, p0, Lsdk/b/a/a/b/k;->e:J

    return-wide v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/k;->d:Ljava/lang/String;

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lsdk/b/a/a/b/k;->j:Z

    return-void
.end method

.method public final e()I
    .locals 2

    const-string v0, "read"

    iget-object v1, p0, Lsdk/b/a/a/b/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/k;->f:Ljava/lang/String;

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/k;->k:Ljava/lang/String;

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lsdk/b/a/a/b/k;->g:Z

    return v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/k;->l:Ljava/lang/String;

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lsdk/b/a/a/b/k;->h:Z

    return v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Lsdk/b/a/a/b/k;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lsdk/b/a/a/b/k;->i:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lsdk/b/a/a/b/k;->j:Z

    return v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/k;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/k;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lsdk/b/a/a/b/k;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsdk/b/a/a/b/k;->k:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsdk/b/a/a/b/k;->k:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsdk/b/a/a/b/k;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsdk/b/a/a/b/k;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsdk/b/a/a/b/k;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lsdk/b/a/a/b/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsdk/b/a/a/b/k;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lsdk/b/a/a/b/k;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lsdk/b/a/a/b/k;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsdk/b/a/a/b/k;->l:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsdk/b/a/a/b/k;->l:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
