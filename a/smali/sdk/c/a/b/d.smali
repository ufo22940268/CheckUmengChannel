.class public Lsdk/c/a/b/d;
.super Lsdk/c/a/e/e;


# static fields
.field static a:Lsdk/c/a/b/d;

.field public static f:Z


# instance fields
.field private B:[B

.field private C:[B

.field public volatile b:J

.field public volatile c:J

.field public volatile d:J

.field public volatile e:J

.field g:Lsdk/c/a/e/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsdk/c/a/e/e;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;ILsdk/c/a/b/c;Ljava/lang/Object;)Lsdk/c/a/b/f;
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lsdk/c/a/b/d;->a(Ljava/lang/String;ILsdk/c/a/b/c;Ljava/lang/Object;ZILsdk/c/a/e/a/g;)Lsdk/c/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;ILsdk/c/a/b/c;Ljava/lang/Object;ZILsdk/c/a/e/a/g;)Lsdk/c/a/b/f;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lsdk/c/a/b/d;->g:Lsdk/c/a/e/a/b;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsdk/c/a/b/d;->g:Lsdk/c/a/e/a/b;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-interface {v0, p1, p3}, Lsdk/c/a/e/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lsdk/c/a/e/d;

    move-result-object v0

    check-cast v0, Lsdk/c/a/b/f;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lsdk/c/a/b/f;->n()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p7, :cond_2

    if-gez p6, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "second must > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p6, v0, Lsdk/c/a/e/d;->L:I

    iput-object p7, v0, Lsdk/c/a/e/d;->Q:Lsdk/c/a/e/a/g;

    :cond_2
    iput-object p4, v0, Lsdk/c/a/b/f;->u:Ljava/lang/Object;

    const-wide/16 v2, -0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lsdk/c/a/b/f;->a(JLjava/util/concurrent/TimeUnit;)I

    const/4 v2, -0x1

    iput v2, v0, Lsdk/c/a/b/f;->K:I

    invoke-virtual {v0}, Lsdk/c/a/b/f;->p()V

    iput-object v1, v0, Lsdk/c/a/b/f;->P:Ljava/lang/Object;

    invoke-virtual {v0}, Lsdk/c/a/b/f;->t()V

    invoke-virtual {p0, v0, p5}, Lsdk/c/a/b/d;->a(Lsdk/c/a/e/d;Z)Z

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static c()Lsdk/c/a/b/d;
    .locals 1

    sget-object v0, Lsdk/c/a/b/d;->a:Lsdk/c/a/b/d;

    if-nez v0, :cond_0

    new-instance v0, Lsdk/c/a/b/d;

    invoke-direct {v0}, Lsdk/c/a/b/d;-><init>()V

    sput-object v0, Lsdk/c/a/b/d;->a:Lsdk/c/a/b/d;

    :cond_0
    sget-object v0, Lsdk/c/a/b/d;->a:Lsdk/c/a/b/d;

    return-object v0
.end method

.method public static e()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lsdk/c/a/b/d;->a:Lsdk/c/a/b/d;

    return-void
.end method

.method public static f()V
    .locals 3

    const-wide/16 v1, 0x0

    sget-object v0, Lsdk/c/a/b/d;->a:Lsdk/c/a/b/d;

    iput-wide v1, v0, Lsdk/c/a/b/d;->b:J

    sget-object v0, Lsdk/c/a/b/d;->a:Lsdk/c/a/b/d;

    iput-wide v1, v0, Lsdk/c/a/b/d;->d:J

    sget-object v0, Lsdk/c/a/b/d;->a:Lsdk/c/a/b/d;

    iput-wide v1, v0, Lsdk/c/a/b/d;->c:J

    sget-object v0, Lsdk/c/a/b/d;->a:Lsdk/c/a/b/d;

    iput-wide v1, v0, Lsdk/c/a/b/d;->e:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lsdk/c/a/b/f;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lsdk/c/a/b/d;->a(Ljava/lang/String;ILsdk/c/a/b/c;Ljava/lang/Object;)Lsdk/c/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lsdk/c/a/b/c;Ljava/lang/Object;)Lsdk/c/a/b/f;
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2, p3}, Lsdk/c/a/b/d;->a(Ljava/lang/String;ILsdk/c/a/b/c;Ljava/lang/Object;)Lsdk/c/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lsdk/c/a/b/c;Ljava/lang/Object;ZLsdk/c/a/e/a/g;)Lsdk/c/a/b/f;
    .locals 8

    const/4 v2, 0x3

    const/16 v6, 0xf

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lsdk/c/a/b/d;->a(Ljava/lang/String;ILsdk/c/a/b/c;Ljava/lang/Object;ZILsdk/c/a/e/a/g;)Lsdk/c/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lsdk/c/a/e/a/b;)V
    .locals 0

    iput-object p1, p0, Lsdk/c/a/b/d;->g:Lsdk/c/a/e/a/b;

    return-void
.end method

.method public final a([B)V
    .locals 1

    iput-object p1, p0, Lsdk/c/a/b/d;->B:[B

    invoke-static {p1}, Lsdk/b/a/a/e/g;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lsdk/c/a/b/d;->C:[B

    return-void
.end method

.method public final a()[B
    .locals 1

    iget-object v0, p0, Lsdk/c/a/b/d;->B:[B

    return-object v0
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lsdk/c/a/b/d;->C:[B

    return-object v0
.end method

.method public final d()V
    .locals 0

    invoke-virtual {p0}, Lsdk/c/a/b/d;->h()V

    return-void
.end method
