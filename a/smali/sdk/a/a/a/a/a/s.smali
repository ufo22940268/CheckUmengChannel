.class public Lsdk/a/a/a/a/a/s;
.super Lsdk/c/b/a/b/b;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsdk/c/b/a/b/b;-><init>()V

    const-string v0, "UFT-8"

    iput-object v0, p0, Lsdk/a/a/a/a/a/s;->e:Ljava/lang/String;

    const/16 v0, 0x14

    iput v0, p0, Lsdk/a/a/a/a/a/s;->j:I

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 5

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lsdk/c/a/b/g;->a([BI)I

    move-result v0

    iput v0, p0, Lsdk/a/a/a/a/a/s;->a:I

    const/4 v0, 0x2

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xc0

    iput v1, p0, Lsdk/a/a/a/a/a/s;->d:I

    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lsdk/a/a/a/a/a/s;->a(B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/a/a/a/a/a/s;->e:Ljava/lang/String;

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lsdk/a/a/a/a/a/s;->e:Ljava/lang/String;

    invoke-direct {v3, p1, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, p0, Lsdk/a/a/a/a/a/s;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    add-int/lit8 v0, v0, 0x4

    move v1, v2

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_0

    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0x7f

    or-int/2addr v1, v3

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    shl-int/lit8 v1, v1, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-lez v1, :cond_1

    iget v0, p0, Lsdk/a/a/a/a/a/s;->d:I

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_2

    new-array v0, v1, [B

    iput-object v0, p0, Lsdk/a/a/a/a/a/s;->c:Ljava/lang/Object;

    array-length v0, p1

    sub-int/2addr v0, v1

    iget-object v3, p0, Lsdk/a/a/a/a/a/s;->c:Ljava/lang/Object;

    invoke-static {p1, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/String;

    array-length v2, p1

    sub-int/2addr v2, v1

    iget-object v3, p0, Lsdk/a/a/a/a/a/s;->e:Ljava/lang/String;

    invoke-direct {v0, p1, v2, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lsdk/a/a/a/a/a/s;->c:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public c()[B
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lsdk/a/a/a/a/a/s;->b:Ljava/lang/String;

    iget-object v3, p0, Lsdk/a/a/a/a/a/s;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v0, p0, Lsdk/a/a/a/a/a/s;->c:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsdk/a/a/a/a/a/s;->c:Ljava/lang/Object;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lsdk/a/a/a/a/a/s;->d:I

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lsdk/a/a/a/a/a/s;->c:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    move-object v3, v0

    :goto_0
    const/16 v5, 0xc

    if-nez v3, :cond_3

    :goto_1
    invoke-static {v2}, Lsdk/c/a/b/g;->a(I)[B

    move-result-object v6

    array-length v0, v4

    add-int/2addr v0, v5

    array-length v5, v6

    add-int/2addr v0, v5

    add-int/2addr v0, v2

    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v1, p0, Lsdk/a/a/a/a/a/s;->a:I

    const/4 v5, 0x0

    invoke-static {v1, v0, v5}, Lsdk/c/a/b/g;->b(I[BI)I

    move-result v1

    iget v5, p0, Lsdk/a/a/a/a/a/s;->d:I

    iget-object v7, p0, Lsdk/a/a/a/a/a/s;->e:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lsdk/a/a/a/a/a/s;->a(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v5, v7

    invoke-static {v5, v0, v1}, Lsdk/c/a/b/g;->c(I[BI)I

    move-result v5

    add-int/2addr v1, v5

    array-length v5, v4

    invoke-static {v5, v0, v1}, Lsdk/c/a/b/g;->c(I[BI)I

    move-result v5

    add-int/2addr v1, v5

    const/4 v5, 0x0

    array-length v7, v4

    invoke-static {v4, v5, v0, v1, v7}, Lsdk/c/a/b/g;->a([BI[BII)I

    move-result v4

    add-int/2addr v1, v4

    const/4 v4, 0x0

    array-length v5, v6

    invoke-static {v6, v4, v0, v1, v5}, Lsdk/c/a/b/g;->a([BI[BII)I

    move-result v4

    add-int/2addr v1, v4

    if-lez v2, :cond_0

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, v1, v2}, Lsdk/c/a/b/g;->a([BI[BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lsdk/a/a/a/a/a/s;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lsdk/a/a/a/a/a/s;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_0

    :cond_3
    array-length v0, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2
.end method