.class public Lsdk/a/a/a/a/a/h;
.super Lsdk/c/b/a/b/b;


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsdk/c/b/a/b/b;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lsdk/a/a/a/a/a/h;->g:Ljava/lang/String;

    const/16 v0, 0x1a

    iput v0, p0, Lsdk/a/a/a/a/a/h;->j:I

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lsdk/c/a/b/g;->a([BI)I

    move-result v0

    iput v0, p0, Lsdk/a/a/a/a/a/h;->a:I

    const/4 v0, 0x2

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xc0

    iput v2, p0, Lsdk/a/a/a/a/a/h;->b:I

    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lsdk/a/a/a/a/a/h;->a(B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/a/a/a/a/a/h;->g:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lsdk/c/a/b/g;->c([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lsdk/a/a/a/a/a/h;->c:J

    const/16 v0, 0xb

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xc

    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lsdk/a/a/a/a/a/h;->g:Ljava/lang/String;

    invoke-direct {v3, p1, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, p0, Lsdk/a/a/a/a/a/h;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    add-int/lit8 v0, v0, 0xc

    move v2, v0

    move v0, v1

    :goto_1
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0x7f

    or-int/2addr v0, v3

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    shl-int/lit8 v0, v0, 0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v2, ""

    iput-object v2, p0, Lsdk/a/a/a/a/a/h;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    if-lez v0, :cond_1

    iget v3, p0, Lsdk/a/a/a/a/a/h;->b:I

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_2

    new-array v3, v0, [B

    iput-object v3, p0, Lsdk/a/a/a/a/a/h;->f:Ljava/lang/Object;

    iget-object v3, p0, Lsdk/a/a/a/a/a/h;->f:Ljava/lang/Object;

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    add-int/2addr v0, v2

    move v2, v0

    move v0, v1

    :goto_3
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0x7f

    or-int/2addr v0, v3

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    shl-int/lit8 v0, v0, 0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lsdk/a/a/a/a/a/h;->g:Ljava/lang/String;

    invoke-direct {v3, p1, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, p0, Lsdk/a/a/a/a/a/h;->f:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-lez v0, :cond_4

    new-array v3, v0, [B

    iput-object v3, p0, Lsdk/a/a/a/a/a/h;->e:Ljava/lang/Object;

    iget-object v3, p0, Lsdk/a/a/a/a/a/h;->e:Ljava/lang/Object;

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    return-void
.end method

.method public final a()Z
    .locals 2

    iget v0, p0, Lsdk/a/a/a/a/a/h;->b:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()[B
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lsdk/a/a/a/a/a/h;->d:Ljava/lang/String;

    iget-object v3, p0, Lsdk/a/a/a/a/a/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v0, ""

    iget-object v3, p0, Lsdk/a/a/a/a/a/h;->f:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lsdk/a/a/a/a/a/h;->b:I

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lsdk/a/a/a/a/a/h;->f:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    move-object v5, v0

    :goto_0
    iget-object v0, p0, Lsdk/a/a/a/a/a/h;->e:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lsdk/a/a/a/a/a/h;->e:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    move-object v4, v0

    :goto_1
    const/16 v7, 0xc

    if-nez v5, :cond_5

    move v3, v2

    :goto_2
    if-nez v4, :cond_6

    :goto_3
    invoke-static {v3}, Lsdk/c/a/b/g;->a(I)[B

    move-result-object v8

    invoke-static {v2}, Lsdk/c/a/b/g;->a(I)[B

    move-result-object v9

    array-length v0, v6

    add-int/2addr v0, v7

    array-length v7, v8

    add-int/2addr v0, v7

    add-int/2addr v0, v3

    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v1, p0, Lsdk/a/a/a/a/a/h;->a:I

    const/4 v7, 0x0

    invoke-static {v1, v0, v7}, Lsdk/c/a/b/g;->b(I[BI)I

    move-result v1

    iget v7, p0, Lsdk/a/a/a/a/a/h;->b:I

    iget-object v10, p0, Lsdk/a/a/a/a/a/h;->g:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lsdk/a/a/a/a/a/h;->a(Ljava/lang/String;)I

    move-result v10

    or-int/2addr v7, v10

    invoke-static {v7, v0, v1}, Lsdk/c/a/b/g;->c(I[BI)I

    move-result v7

    add-int/2addr v1, v7

    iget-wide v10, p0, Lsdk/a/a/a/a/a/h;->c:J

    invoke-static {v10, v11, v0, v1}, Lsdk/c/a/b/g;->a(J[BI)I

    move-result v7

    add-int/2addr v1, v7

    array-length v7, v6

    invoke-static {v7, v0, v1}, Lsdk/c/a/b/g;->c(I[BI)I

    move-result v7

    add-int/2addr v1, v7

    const/4 v7, 0x0

    array-length v10, v6

    invoke-static {v6, v7, v0, v1, v10}, Lsdk/c/a/b/g;->a([BI[BII)I

    move-result v6

    add-int/2addr v1, v6

    const/4 v6, 0x0

    array-length v7, v8

    invoke-static {v8, v6, v0, v1, v7}, Lsdk/c/a/b/g;->a([BI[BII)I

    move-result v6

    add-int/2addr v1, v6

    if-lez v3, :cond_0

    const/4 v6, 0x0

    invoke-static {v5, v6, v0, v1, v3}, Lsdk/c/a/b/g;->a([BI[BII)I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    const/4 v3, 0x0

    array-length v5, v9

    invoke-static {v9, v3, v0, v1, v5}, Lsdk/c/a/b/g;->a([BI[BII)I

    move-result v3

    add-int/2addr v1, v3

    if-lez v2, :cond_1

    const/4 v3, 0x0

    invoke-static {v4, v3, v0, v1, v2}, Lsdk/c/a/b/g;->a([BI[BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    :goto_4
    return-object v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lsdk/a/a/a/a/a/h;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lsdk/a/a/a/a/a/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_3
    move-object v5, v1

    goto :goto_0

    :cond_4
    move-object v4, v1

    goto :goto_1

    :cond_5
    array-length v0, v5

    move v3, v0

    goto :goto_2

    :cond_6
    array-length v0, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_4
.end method