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
.method public a(Ljava/lang/String;ILsdk/c/a/b/c;)Lsdk/c/a/b/f;
    .locals 12

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v9, v5

    move-object v10, v4

    move-object v11, v4

    invoke-virtual/range {v0 .. v11}, Lsdk/c/a/b/d;->a(Ljava/lang/String;ILsdk/c/a/b/c;Ljava/lang/Object;ZIJBLjava/lang/Object;Lsdk/c/a/e/a/d;)Lsdk/c/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ILsdk/c/a/b/c;Ljava/lang/Object;Z)Lsdk/c/a/b/f;
    .locals 12

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v11}, Lsdk/c/a/b/d;->a(Ljava/lang/String;ILsdk/c/a/b/c;Ljava/lang/Object;ZIJBLjava/lang/Object;Lsdk/c/a/e/a/d;)Lsdk/c/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ILsdk/c/a/b/c;Ljava/lang/Object;ZIJBLjava/lang/Object;Lsdk/c/a/e/a/d;)Lsdk/c/a/b/f;
    .locals 14

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v13}, Lsdk/c/a/b/d;->a(Ljava/lang/String;ILsdk/c/a/b/c;Ljava/lang/Object;ZIJBLjava/lang/Object;Lsdk/c/a/e/a/d;ILsdk/c/a/e/a/g;)Lsdk/c/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ILsdk/c/a/b/c;Ljava/lang/Object;ZIJBLjava/lang/Object;Lsdk/c/a/e/a/d;ILsdk/c/a/e/a/g;)Lsdk/c/a/b/f;
    .locals 12

    iget-object v2, p0, Lsdk/c/a/b/d;->g:Lsdk/c/a/e/a/b;

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    iget-object v2, p0, Lsdk/c/a/b/d;->g:Lsdk/c/a/e/a/b;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3, p3}, Lsdk/c/a/e/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lsdk/c/a/e/d;

    move-result-object v3

    check-cast v3, Lsdk/c/a/b/f;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lsdk/c/a/b/f;->p()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p13, :cond_1

    move/from16 v0, p12

    move-object/from16 v1, p13

    invoke-virtual {v3, v0, v1}, Lsdk/c/a/b/f;->a(ILsdk/c/a/e/a/g;)V

    :cond_1
    move-object v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v2 .. v11}, Lsdk/c/a/b/d;->a(Lsdk/c/a/b/f;Ljava/lang/Object;ZIJBLjava/lang/Object;Lsdk/c/a/e/a/d;)Z

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ILsdk/c/a/b/c;Ljava/lang/Object;ZILsdk/c/a/e/a/g;)Lsdk/c/a/b/f;
    .locals 14

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v0 .. v13}, Lsdk/c/a/b/d;->a(Ljava/lang/String;ILsdk/c/a/b/c;Ljava/lang/Object;ZIJBLjava/lang/Object;Lsdk/c/a/e/a/d;ILsdk/c/a/e/a/g;)Lsdk/c/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lsdk/c/a/e/a/b;)V
    .locals 0

    iput-object p1, p0, Lsdk/c/a/b/d;->g:Lsdk/c/a/e/a/b;

    return-void
.end method

.method public a([B)V
    .locals 1

    iput-object p1, p0, Lsdk/c/a/b/d;->B:[B

    invoke-static {p1}, Lsdk/b/a/a/e/g;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lsdk/c/a/b/d;->C:[B

    return-void
.end method

.method a(Lsdk/c/a/b/f;Ljava/lang/Object;ZIJBLjava/lang/Object;Lsdk/c/a/e/a/d;)Z
    .locals 1

    iput-object p2, p1, Lsdk/c/a/b/f;->c:Ljava/lang/Object;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p5, p6, v0}, Lsdk/c/a/b/f;->a(JLjava/util/concurrent/TimeUnit;)I

    iput p4, p1, Lsdk/c/a/b/f;->K:I

    invoke-virtual {p1, p7}, Lsdk/c/a/b/f;->a(I)V

    iput-object p8, p1, Lsdk/c/a/b/f;->P:Ljava/lang/Object;

    invoke-virtual {p1, p9}, Lsdk/c/a/b/f;->a(Lsdk/c/a/e/a/d;)V

    invoke-virtual {p0, p1, p3}, Lsdk/c/a/b/d;->a(Lsdk/c/a/e/d;Z)Z

    move-result v0

    return v0
.end method

.method public a()[B
    .locals 1

    iget-object v0, p0, Lsdk/c/a/b/d;->B:[B

    return-object v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lsdk/c/a/b/d;->C:[B

    return-object v0
.end method

.method public final d()V
    .locals 0

    invoke-virtual {p0}, Lsdk/c/a/b/d;->j()V

    return-void
.end method
