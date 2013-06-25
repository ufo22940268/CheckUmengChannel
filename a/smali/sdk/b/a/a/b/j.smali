.class public Lsdk/b/a/a/b/j;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:B

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lsdk/b/a/a/b/j;->a:I

    iput-byte v2, p0, Lsdk/b/a/a/b/j;->f:B

    const/4 v0, 0x1

    iput v0, p0, Lsdk/b/a/a/b/j;->h:I

    iput v1, p0, Lsdk/b/a/a/b/j;->i:I

    const-string v0, ""

    iput-object v0, p0, Lsdk/b/a/a/b/j;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/b/a/a/b/j;->k:Ljava/lang/String;

    iput v2, p0, Lsdk/b/a/a/b/j;->m:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lsdk/b/a/a/b/j;->h:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lsdk/b/a/a/b/j;->h:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lsdk/b/a/a/b/j;->b:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsdk/b/a/a/b/j;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/j;->k:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lsdk/b/a/a/b/j;->l:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/j;->k:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    iput p1, p0, Lsdk/b/a/a/b/j;->d:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsdk/b/a/a/b/j;->a(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lsdk/b/a/a/b/j;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsdk/b/a/a/b/j;->a(Z)V

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lsdk/b/a/a/b/j;->a:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lsdk/b/a/a/b/j;->n:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lsdk/b/a/a/b/j;->e:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsdk/b/a/a/b/j;->a(Z)V

    return-void
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lsdk/b/a/a/b/j;->b:J

    return-wide v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lsdk/b/a/a/b/j;->m:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lsdk/b/a/a/b/j;->g:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsdk/b/a/a/b/j;->a(Z)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/j;->j:Ljava/lang/String;

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lsdk/b/a/a/b/j;->d:I

    return v0
.end method

.method public g()B
    .locals 1

    iget-byte v0, p0, Lsdk/b/a/a/b/j;->f:B

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/j;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/j;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lsdk/b/a/a/b/j;->n:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lsdk/b/a/a/b/j;->m:I

    return v0
.end method
