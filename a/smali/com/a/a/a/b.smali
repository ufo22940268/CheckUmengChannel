.class public final Lcom/a/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/a/a/a/a;

.field private b:Lcom/a/a/a/b/a;

.field private c:Lcom/a/a/a/b/a;

.field private d:Lcom/a/a/a/d/c;

.field private e:Lcom/a/a/a/g/a;

.field private f:Lcom/a/a/a/e/b;

.field private g:Ljava/io/File;

.field private h:I

.field private i:I

.field private final j:Ljava/util/Map;

.field private k:J

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    const/16 v4, 0x2710

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/a/a/a;

    invoke-direct {v0}, Lcom/a/a/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/a/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/b;->j:Ljava/util/Map;

    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/a/a/a/b;->k:J

    iput-boolean v3, p0, Lcom/a/a/a/b;->l:Z

    iput v4, p0, Lcom/a/a/a/b;->h:I

    iput v4, p0, Lcom/a/a/a/b;->i:I

    iput-boolean v2, p0, Lcom/a/a/a/b;->m:Z

    iput-boolean v3, p0, Lcom/a/a/a/b;->o:Z

    iput-boolean v2, p0, Lcom/a/a/a/b;->p:Z

    iput-boolean v2, p0, Lcom/a/a/a/b;->q:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/a/a/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/a/a;

    return-object v0
.end method

.method public final a(Lcom/a/a/a/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/a/b;->b:Lcom/a/a/a/b/a;

    return-void
.end method

.method public final a(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/a/b;->g:Ljava/io/File;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/a/b;->n:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/b;->g:Ljava/io/File;

    return-object v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/a/a/a/b;->k:J

    return-wide v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/a/b;->l:Z

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/b;->h:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/b;->i:I

    return v0
.end method

.method public final g()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/b;->j:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/a/b;->m:Z

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Lcom/a/a/a/b/a;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/b;->b:Lcom/a/a/a/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/a/b/d;

    invoke-direct {v0}, Lcom/a/a/a/b/d;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/b;->b:Lcom/a/a/a/b/a;

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/b;->b:Lcom/a/a/a/b/a;

    return-object v0
.end method

.method public final k()Lcom/a/a/a/b/a;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/b;->c:Lcom/a/a/a/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/a/b/d;

    invoke-direct {v0}, Lcom/a/a/a/b/d;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/b;->c:Lcom/a/a/a/b/a;

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/b;->c:Lcom/a/a/a/b/a;

    return-object v0
.end method

.method public final l()Lcom/a/a/a/g/a;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/b;->e:Lcom/a/a/a/g/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/a/g/b;

    invoke-direct {v0, p0}, Lcom/a/a/a/g/b;-><init>(Lcom/a/a/a/b;)V

    iput-object v0, p0, Lcom/a/a/a/b;->e:Lcom/a/a/a/g/a;

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/b;->e:Lcom/a/a/a/g/a;

    return-object v0
.end method

.method public final m()Lcom/a/a/a/d/c;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/b;->d:Lcom/a/a/a/d/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/a/d/a;

    invoke-direct {v0, p0}, Lcom/a/a/a/d/a;-><init>(Lcom/a/a/a/b;)V

    iput-object v0, p0, Lcom/a/a/a/b;->d:Lcom/a/a/a/d/c;

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/b;->d:Lcom/a/a/a/d/c;

    return-object v0
.end method

.method public final n()Lcom/a/a/a/e/b;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/b;->f:Lcom/a/a/a/e/b;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/a/a/a/b;->o:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/a/a/a/e/a;

    invoke-direct {v0, p0}, Lcom/a/a/a/e/a;-><init>(Lcom/a/a/a/b;)V

    iput-object v0, p0, Lcom/a/a/a/b;->f:Lcom/a/a/a/e/b;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/a/a/a/b;->f:Lcom/a/a/a/e/b;

    return-object v0

    :cond_1
    new-instance v0, Lcom/a/a/a/e/c;

    invoke-direct {v0, p0}, Lcom/a/a/a/e/c;-><init>(Lcom/a/a/a/b;)V

    iput-object v0, p0, Lcom/a/a/a/b;->f:Lcom/a/a/a/e/b;

    goto :goto_0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/a/b;->p:Z

    return v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/a/b;->q:Z

    return v0
.end method
