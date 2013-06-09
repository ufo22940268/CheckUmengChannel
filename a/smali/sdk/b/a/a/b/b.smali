.class public final Lsdk/b/a/a/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lsdk/b/a/a/b/o;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsdk/b/a/a/b/a;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lsdk/b/a/a/b/b;->e:Z

    const-string v0, ""

    iput-object v0, p0, Lsdk/b/a/a/b/b;->f:Ljava/lang/String;

    iput-boolean v3, p0, Lsdk/b/a/a/b/b;->j:Z

    iput-boolean v2, p0, Lsdk/b/a/a/b/b;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lsdk/b/a/a/b/b;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lsdk/b/a/a/b/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/b/a/a/b/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lsdk/b/a/a/b/a;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/b/a/a/b/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lsdk/b/a/a/b/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/b/a/a/b/b;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lsdk/b/a/a/b/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/b/a/a/b/b;->g:Ljava/lang/String;

    const-string v0, "true"

    invoke-virtual {p1}, Lsdk/b/a/a/b/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lsdk/b/a/a/b/b;->j:Z

    invoke-virtual {p1}, Lsdk/b/a/a/b/a;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/b/a/a/b/b;->f:Ljava/lang/String;

    const-string v0, "true"

    invoke-virtual {p1}, Lsdk/b/a/a/b/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lsdk/b/a/a/b/b;->e:Z

    iput v2, p0, Lsdk/b/a/a/b/b;->l:I

    invoke-virtual {p1}, Lsdk/b/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lsdk/b/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lsdk/b/a/a/b/b;->l:I

    :cond_0
    invoke-virtual {p1}, Lsdk/b/a/a/b/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/b/a/a/b/b;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lsdk/b/a/a/b/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/b/a/a/b/b;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lsdk/b/a/a/b/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/b/a/a/b/b;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lsdk/b/a/a/b/o;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/b;->d:Lsdk/b/a/a/b/o;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lsdk/b/a/a/b/b;->e:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lsdk/b/a/a/b/b;->j:Z

    return v0
.end method

.method public final e()Lsdk/b/a/a/b/o;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/b;->d:Lsdk/b/a/a/b/o;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lsdk/b/a/a/b/b;->l:I

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lsdk/b/a/a/b/b;->k:Z

    return v0
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsdk/b/a/a/b/b;->k:Z

    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/b;->m:Ljava/lang/String;

    return-object v0
.end method
