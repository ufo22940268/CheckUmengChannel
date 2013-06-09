.class public final Lsdk/a/a/a/a/a/r;
.super Lsdk/c/b/a/b/b;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsdk/c/b/a/b/b;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lsdk/a/a/a/a/a/r;->d:Ljava/lang/String;

    const/4 v0, 0x7

    iput v0, p0, Lsdk/a/a/a/a/a/r;->j:I

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 4

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    invoke-static {v1}, Lsdk/a/a/a/a/a/r;->a(B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsdk/a/a/a/a/a/r;->d:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lsdk/c/a/b/g;->c([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lsdk/a/a/a/a/a/r;->a:J

    const/16 v1, 0x9

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    new-instance v2, Ljava/lang/String;

    const/16 v3, 0xa

    invoke-direct {v2, p1, v3, v1}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, p0, Lsdk/a/a/a/a/a/r;->b:Ljava/lang/String;

    add-int/lit8 v2, v1, 0xa

    move v1, v2

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    aget-byte v3, p1, v1

    and-int/lit8 v3, v3, 0x7f

    or-int/2addr v0, v3

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    shl-int/lit8 v0, v0, 0x7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    if-lez v0, :cond_2

    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lsdk/a/a/a/a/a/r;->d:Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lsdk/a/a/a/a/a/r;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a()[B
    .locals 7

    :try_start_0
    iget-object v0, p0, Lsdk/a/a/a/a/a/r;->b:Ljava/lang/String;

    iget-object v1, p0, Lsdk/a/a/a/a/a/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v0, p0, Lsdk/a/a/a/a/a/r;->c:Ljava/lang/String;

    iget-object v2, p0, Lsdk/a/a/a/a/a/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v0, v2

    invoke-static {v0}, Lsdk/c/a/b/g;->a(I)[B

    move-result-object v3

    array-length v0, v1

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    array-length v4, v2

    add-int/2addr v0, v4

    array-length v4, v3

    add-int/2addr v0, v4

    new-array v0, v0, [B

    iget-object v4, p0, Lsdk/a/a/a/a/a/r;->d:Ljava/lang/String;

    invoke-static {v4}, Lsdk/a/a/a/a/a/r;->a(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lsdk/c/a/b/g;->c(I[BI)I

    iget-wide v4, p0, Lsdk/a/a/a/a/a/r;->a:J

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lsdk/c/a/b/g;->a(J[BI)I

    array-length v4, v1

    const/16 v5, 0x9

    invoke-static {v4, v0, v5}, Lsdk/c/a/b/g;->c(I[BI)I

    const/4 v4, 0x0

    const/16 v5, 0xa

    array-length v6, v1

    invoke-static {v1, v4, v0, v5, v6}, Lsdk/c/a/b/g;->a([BI[BII)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v0, v1, v5}, Lsdk/c/a/b/g;->a([BI[BII)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v0, v1, v4}, Lsdk/c/a/b/g;->a([BI[BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
