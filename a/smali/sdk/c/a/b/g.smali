.class public final Lsdk/c/a/b/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lsdk/c/a/b/g;->a:[C

    return-void
.end method

.method public static final a(I[BI)I
    .locals 2

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x4

    return v0
.end method

.method public static final a(J[BI)I
    .locals 6

    const/16 v5, 0x8

    const-wide/16 v3, 0xff

    const/16 v0, 0x38

    shr-long v0, p0, v0

    and-long/2addr v0, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x28

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x20

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x18

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x10

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x6

    shr-long v1, p0, v5

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x7

    and-long v1, v3, p0

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return v5
.end method

.method public static final a([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static final a([BI[BII)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p4
.end method

.method public static final a([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v1, p0, v4

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p0, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget-object v1, p0, v5

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, p0, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    aget-object v1, p0, v6

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-object v2, p0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    aget-object v1, p0, v3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    aget-object v1, p0, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, p0, v3

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    aget-object v1, p0, v7

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    aget-object v1, p0, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const/4 v1, 0x5

    aget-object v1, p0, v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final a(I)[B
    .locals 6

    const/4 v1, 0x0

    move v2, v1

    move v3, v1

    :cond_0
    and-int/lit8 v0, p0, 0x7f

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    ushr-int/lit8 p0, p0, 0x7

    add-int/lit8 v3, v3, 0x1

    if-lez p0, :cond_2

    ushr-int/lit8 v0, v0, 0x8

    const/high16 v2, -0x8000

    or-int/2addr v0, v2

    move v2, v0

    :goto_0
    if-gtz p0, :cond_0

    new-array v4, v3, [B

    const/16 v0, 0x18

    :goto_1
    if-ge v1, v3, :cond_1

    ushr-int v5, v2, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v0, v0, -0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v4

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public static a([B)[B
    .locals 4

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static final a([CI)[B
    .locals 12

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v11, 0x4

    const/16 v10, 0x3d

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-array v6, v11, [C

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    array-length v0, p0

    shr-int/lit8 v0, v0, 0x1

    invoke-direct {v7, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :cond_2
    array-length v0, p0

    if-ge p1, v0, :cond_10

    move v0, v1

    move v2, p1

    :goto_1
    array-length v5, p0

    if-lt v2, v5, :cond_4

    if-lez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad BASE 64 In->"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_4
    add-int/lit8 p1, v2, 0x1

    aget-char v5, p0, v2

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_5

    if-ne v5, v10, :cond_7

    :cond_5
    add-int/lit8 v2, v0, 0x1

    aput-char v5, v6, v0

    move v0, v2

    :cond_6
    if-lt v0, v11, :cond_11

    move v0, v1

    move v2, v1

    :goto_2
    if-ge v2, v11, :cond_a

    aget-char v5, v6, v2

    if-eq v5, v10, :cond_8

    if-eqz v0, :cond_8

    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad BASE 64 In->"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v2, 0xd

    if-eq v5, v2, :cond_6

    const/16 v2, 0xa

    if-eq v5, v2, :cond_6

    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad BASE 64 In->"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-nez v0, :cond_9

    aget-char v5, v6, v2

    if-ne v5, v10, :cond_9

    move v0, v3

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    const/4 v0, 0x3

    aget-char v0, v6, v0

    if-ne v0, v10, :cond_e

    array-length v0, p0

    if-ge p1, v0, :cond_b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad BASE 64 In->"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    aget-char v0, v6, v4

    if-ne v0, v10, :cond_d

    move v0, v3

    :goto_3
    move v2, v1

    move v5, v1

    :goto_4
    if-ge v5, v11, :cond_f

    aget-char v8, v6, v5

    if-eq v8, v10, :cond_c

    const-string v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    aget-char v9, v6, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    rsub-int/lit8 v9, v5, 0x3

    mul-int/lit8 v9, v9, 0x6

    shl-int/2addr v8, v9

    or-int/2addr v2, v8

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    move v0, v4

    goto :goto_3

    :cond_e
    const/4 v0, 0x3

    goto :goto_3

    :cond_f
    move v5, v1

    :goto_5
    if-ge v5, v0, :cond_2

    rsub-int/lit8 v8, v5, 0x2

    mul-int/lit8 v8, v8, 0x8

    ushr-int v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_10
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    goto/16 :goto_0

    :cond_11
    move v2, p1

    goto/16 :goto_1
.end method

.method public static final a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/16 v7, 0x2f

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    move v0, v3

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const-string v1, ""

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v3, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lt v0, v8, :cond_5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_5

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_5

    invoke-virtual {v4, v3, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    :cond_2
    if-eqz v1, :cond_5

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_c

    if-le v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url format error - port"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url format error - protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v8

    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-virtual {v4, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_a

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x5

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    :cond_7
    :goto_2
    move-object v0, v2

    :goto_3
    return-object v0

    :cond_8
    if-nez v1, :cond_6

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url format error - path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    aput-object v0, v2, v9

    move-object v0, v2

    goto :goto_3

    :cond_a
    const/4 v1, 0x4

    aput-object v0, v2, v1

    goto :goto_2

    :cond_b
    const-string v0, "/"

    aput-object v0, v2, v9

    goto :goto_2

    :cond_c
    move v0, v1

    goto :goto_1
.end method

.method public static final b(I[BI)I
    .locals 2

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method

.method public static final b([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static b([B)[B
    .locals 6

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->read()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static final c(I[BI)I
    .locals 1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    const/4 v0, 0x1

    return v0
.end method

.method public static final c([BI)J
    .locals 7

    const-wide/16 v5, 0xff

    aget-byte v0, p0, p1

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static c([B)[B
    .locals 5

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v0, Lsdk/c/a/b/a;

    invoke-direct {v0, v2}, Lsdk/c/a/b/a;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1, v0}, Lsdk/c/a/b/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lsdk/c/a/b/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected I/O error"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :goto_3
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_3
.end method
