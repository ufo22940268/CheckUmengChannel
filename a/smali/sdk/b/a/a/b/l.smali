.class public final Lsdk/b/a/a/b/l;
.super Lsdk/b/a/a/b/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lsdk/b/a/a/b/d;-><init>()V

    iput-boolean v1, p0, Lsdk/b/a/a/b/l;->c:Z

    iput-boolean v1, p0, Lsdk/b/a/a/b/l;->d:Z

    iput-boolean v1, p0, Lsdk/b/a/a/b/l;->e:Z

    iput-object v0, p0, Lsdk/b/a/a/b/l;->f:Ljava/lang/String;

    iput-object v0, p0, Lsdk/b/a/a/b/l;->g:Ljava/lang/String;

    iput-object v0, p0, Lsdk/b/a/a/b/l;->h:Ljava/lang/String;

    iput-object v0, p0, Lsdk/b/a/a/b/l;->i:Ljava/lang/String;

    iput-object v0, p0, Lsdk/b/a/a/b/l;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/l;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lsdk/b/a/a/b/l;->c:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/l;->b:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lsdk/b/a/a/b/l;->d:Z

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/l;->f:Ljava/lang/String;

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lsdk/b/a/a/b/l;->e:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lsdk/b/a/a/b/l;->c:Z

    return v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/l;->g:Ljava/lang/String;

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lsdk/b/a/a/b/l;->d:Z

    return v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/l;->h:Ljava/lang/String;

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lsdk/b/a/a/b/l;->e:Z

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/l;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsdk/b/a/a/b/l;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/l;->i:Ljava/lang/String;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/l;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/l;->j:Ljava/lang/String;

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/l;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/l;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/l;->j:Ljava/lang/String;

    return-object v0
.end method
