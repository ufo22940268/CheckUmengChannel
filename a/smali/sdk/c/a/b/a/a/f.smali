.class public final Lsdk/c/a/b/a/a/f;
.super Lsdk/c/a/b/f;


# instance fields
.field a:Lsdk/c/a/b/a/a/d;

.field b:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lsdk/c/a/b/c;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lsdk/c/a/b/f;-><init>(Ljava/lang/String;Lsdk/c/a/b/c;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsdk/c/a/b/a/a/f;->D:Z

    return-void
.end method


# virtual methods
.method public final a_()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lsdk/c/a/b/a/a/f;->a:Lsdk/c/a/b/a/a/d;

    invoke-super {p0}, Lsdk/c/a/b/f;->a_()V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, -0x7fe

    return v0
.end method

.method public final c()V
    .locals 3

    invoke-super {p0}, Lsdk/c/a/b/f;->c()V

    iget-object v0, p0, Lsdk/c/a/b/a/a/f;->a:Lsdk/c/a/b/a/a/d;

    iget-object v0, v0, Lsdk/c/a/b/a/a/d;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lsdk/c/a/b/a/a/f;->a:Lsdk/c/a/b/a/a/d;

    invoke-virtual {v0}, Lsdk/c/a/b/a/a/d;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    iget-object v1, p0, Lsdk/c/a/b/a/a/f;->a:Lsdk/c/a/b/a/a/d;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsdk/c/a/b/d;->a(Lsdk/c/a/e/d;Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NioSocketTask is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lsdk/c/a/b/a/a/f;->a:Lsdk/c/a/b/a/a/d;

    iget-boolean v0, v0, Lsdk/c/a/b/a/a/d;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsdk/c/a/b/a/a/f;->a:Lsdk/c/a/b/a/a/d;

    invoke-virtual {v0}, Lsdk/c/a/b/a/a/d;->h()V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 2

    invoke-super {p0}, Lsdk/c/a/b/f;->e()V

    iget-object v0, p0, Lsdk/c/a/b/a/a/f;->s:Ljava/lang/String;

    iget-object v1, p0, Lsdk/c/a/b/a/a/f;->t:Lsdk/c/a/b/c;

    invoke-static {v0, v1}, Lsdk/c/a/b/a/a/d;->a(Ljava/lang/String;Lsdk/c/a/b/c;)Lsdk/c/a/b/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lsdk/c/a/b/a/a/f;->a:Lsdk/c/a/b/a/a/d;

    return-void
.end method

.method protected final f()V
    .locals 0

    return-void
.end method
