.class public final Lsdk/c/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method private static a([III)V
    .locals 2

    aget v0, p0, p1

    aget v1, p0, p2

    aput v1, p0, p1

    aput v0, p0, p2

    return-void
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lsdk/c/a/a/a;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B[B)[B
    .locals 7

    const/16 v6, 0x100

    const/4 v1, 0x0

    array-length v3, p1

    if-lez v3, :cond_2

    if-gt v3, v6, :cond_2

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xe

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x3

    if-gt v0, v4, :cond_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key is fail!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    array-length v0, p0

    if-gtz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data is fail!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-array v3, v6, [I

    move v0, v1

    :goto_2
    array-length v2, v3

    if-ge v0, v2, :cond_5

    aput v0, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    move v2, v1

    :goto_3
    array-length v4, v3

    if-ge v0, v4, :cond_6

    aget v4, v3, v0

    add-int/2addr v2, v4

    array-length v4, p1

    rem-int v4, v0, v4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    rem-int/lit16 v2, v2, 0x100

    invoke-static {v3, v0, v2}, Lsdk/c/a/a/a;->a([III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    array-length v0, p0

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    :goto_4
    array-length v5, v4

    if-ge v1, v5, :cond_7

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x100

    aget v5, v3, v0

    add-int/2addr v2, v5

    rem-int/lit16 v2, v2, 0x100

    invoke-static {v3, v0, v2}, Lsdk/c/a/a/a;->a([III)V

    aget v5, v3, v0

    aget v6, v3, v2

    add-int/2addr v5, v6

    rem-int/lit16 v5, v5, 0x100

    aget v5, v3, v5

    aget-byte v6, p0, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-object v4
.end method

.method public static b([BLjava/lang/String;)[B
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lsdk/c/a/a/a;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method