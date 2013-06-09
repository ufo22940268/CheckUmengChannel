.class public final Lsdk/a/a/a/a/a/n;
.super Lsdk/c/b/a/b/b;


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsdk/c/b/a/b/b;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lsdk/a/a/a/a/a/n;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lsdk/a/a/a/a/a/n;->i:I

    const/16 v0, 0x17

    iput v0, p0, Lsdk/a/a/a/a/a/n;->j:I

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 4

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsdk/c/a/b/g;->a([BI)I

    move-result v0

    iput v0, p0, Lsdk/a/a/a/a/a/n;->a:I

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xc0

    iput v0, p0, Lsdk/a/a/a/a/a/n;->b:I

    aget-byte v0, p1, v1

    invoke-static {v0}, Lsdk/a/a/a/a/a/n;->a(B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/a/a/a/a/a/n;->h:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lsdk/c/a/b/g;->c([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lsdk/a/a/a/a/a/n;->c:J

    const/16 v0, 0xb

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0xc

    iget-object v3, p0, Lsdk/a/a/a/a/a/n;->h:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lsdk/a/a/a/a/a/n;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    add-int/lit8 v0, v0, 0xc

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lsdk/a/a/a/a/a/n;->h:Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lsdk/a/a/a/a/a/n;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lsdk/c/a/b/g;->c([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lsdk/a/a/a/a/a/n;->f:J

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    :try_start_2
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lsdk/a/a/a/a/a/n;->h:Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lsdk/a/a/a/a/a/n;->g:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    add-int/2addr v0, v1

    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lsdk/a/a/a/a/a/n;->i:I

    :cond_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public final a()[B
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lsdk/a/a/a/a/a/n;->d:Ljava/lang/String;

    iget-object v2, p0, Lsdk/a/a/a/a/a/n;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lsdk/a/a/a/a/a/n;->e:Ljava/lang/String;

    iget-object v3, p0, Lsdk/a/a/a/a/a/n;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lsdk/a/a/a/a/a/n;->g:Ljava/lang/String;

    iget-object v4, p0, Lsdk/a/a/a/a/a/n;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v4, v1

    add-int/lit8 v4, v4, 0x15

    array-length v5, v2

    add-int/2addr v4, v5

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v0, v4, [B

    iget v4, p0, Lsdk/a/a/a/a/a/n;->a:I

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lsdk/c/a/b/g;->b(I[BI)I

    iget v4, p0, Lsdk/a/a/a/a/a/n;->b:I

    iget-object v5, p0, Lsdk/a/a/a/a/a/n;->h:Ljava/lang/String;

    invoke-static {v5}, Lsdk/a/a/a/a/a/n;->a(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v4, v5

    const/4 v5, 0x2

    invoke-static {v4, v0, v5}, Lsdk/c/a/b/g;->c(I[BI)I

    iget-wide v4, p0, Lsdk/a/a/a/a/a/n;->c:J

    const/4 v6, 0x3

    invoke-static {v4, v5, v0, v6}, Lsdk/c/a/b/g;->a(J[BI)I

    array-length v4, v1

    const/16 v5, 0xb

    invoke-static {v4, v0, v5}, Lsdk/c/a/b/g;->c(I[BI)I

    const/4 v4, 0x0

    const/16 v5, 0xc

    array-length v6, v1

    invoke-static {v1, v4, v0, v5, v6}, Lsdk/c/a/b/g;->a([BI[BII)I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    array-length v4, v2

    invoke-static {v4, v0, v1}, Lsdk/c/a/b/g;->c(I[BI)I

    move-result v4

    add-int/2addr v1, v4

    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v0, v1, v5}, Lsdk/c/a/b/g;->a([BI[BII)I

    move-result v2

    add-int/2addr v1, v2

    iget-wide v4, p0, Lsdk/a/a/a/a/a/n;->f:J

    invoke-static {v4, v5, v0, v1}, Lsdk/c/a/b/g;->a(J[BI)I

    move-result v2

    add-int/2addr v1, v2

    array-length v2, v3

    invoke-static {v2, v0, v1}, Lsdk/c/a/b/g;->c(I[BI)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    array-length v4, v3

    invoke-static {v3, v2, v0, v1, v4}, Lsdk/c/a/b/g;->a([BI[BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
