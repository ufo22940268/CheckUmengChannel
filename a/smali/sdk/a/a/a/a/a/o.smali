.class public final Lsdk/a/a/a/a/a/o;
.super Lsdk/c/b/a/b/b;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsdk/c/b/a/b/b;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lsdk/a/a/a/a/a/o;->c:Ljava/lang/String;

    const/16 v0, 0x18

    iput v0, p0, Lsdk/a/a/a/a/a/o;->j:I

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 6

    const/16 v1, 0xc

    const/4 v3, 0x2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsdk/c/a/b/g;->a([BI)I

    move-result v2

    iput v2, p0, Lsdk/a/a/a/a/a/o;->a:I

    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xc0

    iput v2, p0, Lsdk/a/a/a/a/a/o;->b:I

    aget-byte v2, p1, v3

    invoke-static {v2}, Lsdk/a/a/a/a/a/o;->a(B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsdk/a/a/a/a/a/o;->c:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2}, Lsdk/c/a/b/g;->c([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lsdk/a/a/a/a/a/o;->d:J

    const/16 v2, 0xb

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/16 v4, 0xc

    iget-object v5, p0, Lsdk/a/a/a/a/a/o;->c:Ljava/lang/String;

    invoke-direct {v3, p1, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, p0, Lsdk/a/a/a/a/a/o;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x7f

    or-int/2addr v0, v2

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    shl-int/lit8 v0, v0, 0x7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lsdk/a/a/a/a/a/o;->c:Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lsdk/a/a/a/a/a/o;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-static {p1, v1}, Lsdk/c/a/b/g;->c([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lsdk/a/a/a/a/a/o;->f:J

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public final a()[B
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lsdk/a/a/a/a/a/o;->e:Ljava/lang/String;

    iget-object v3, p0, Lsdk/a/a/a/a/a/o;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v2, p0, Lsdk/a/a/a/a/a/o;->g:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsdk/a/a/a/a/a/o;->g:Ljava/lang/String;

    iget-object v4, p0, Lsdk/a/a/a/a/a/o;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    :goto_0
    array-length v4, v3

    add-int/lit8 v4, v4, 0x15

    if-eqz v2, :cond_0

    array-length v1, v2

    :cond_0
    add-int/2addr v1, v4

    new-array v0, v1, [B

    iget v1, p0, Lsdk/a/a/a/a/a/o;->a:I

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Lsdk/c/a/b/g;->b(I[BI)I

    iget v1, p0, Lsdk/a/a/a/a/a/o;->b:I

    iget-object v4, p0, Lsdk/a/a/a/a/a/o;->c:Ljava/lang/String;

    invoke-static {v4}, Lsdk/a/a/a/a/a/o;->a(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v1, v4

    const/4 v4, 0x2

    invoke-static {v1, v0, v4}, Lsdk/c/a/b/g;->c(I[BI)I

    iget-wide v4, p0, Lsdk/a/a/a/a/a/o;->d:J

    const/4 v1, 0x3

    invoke-static {v4, v5, v0, v1}, Lsdk/c/a/b/g;->a(J[BI)I

    array-length v1, v3

    const/16 v4, 0xb

    invoke-static {v1, v0, v4}, Lsdk/c/a/b/g;->c(I[BI)I

    const/4 v1, 0x0

    const/16 v4, 0xc

    array-length v5, v3

    invoke-static {v3, v1, v0, v4, v5}, Lsdk/c/a/b/g;->a([BI[BII)I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    array-length v3, v2

    invoke-static {v3, v0, v1}, Lsdk/c/a/b/g;->c(I[BI)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v0, v1, v4}, Lsdk/c/a/b/g;->a([BI[BII)I

    move-result v2

    add-int/2addr v1, v2

    iget-wide v2, p0, Lsdk/a/a/a/a/a/o;->f:J

    invoke-static {v2, v3, v0, v1}, Lsdk/c/a/b/g;->a(J[BI)I

    :goto_1
    return-object v0

    :cond_1
    const-string v2, ""

    iget-object v4, p0, Lsdk/a/a/a/a/a/o;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
