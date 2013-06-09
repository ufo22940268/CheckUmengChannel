.class public final Lsdk/c/b/a/a/c;
.super Lsdk/c/a/b/c;


# instance fields
.field private e:[B

.field private f:Z

.field private g:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lsdk/c/a/b/c;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lsdk/c/b/a/a/c;->e:[B

    iput-boolean v1, p0, Lsdk/c/b/a/a/c;->f:Z

    iput-boolean v1, p0, Lsdk/c/b/a/a/c;->g:Z

    return-void
.end method

.method public static b()Lsdk/c/a/b/c;
    .locals 3

    new-instance v0, Lsdk/c/b/a/a/c;

    const-string v1, "socketProtocol"

    invoke-direct {v0, v1}, Lsdk/c/b/a/a/c;-><init>(Ljava/lang/String;)V

    new-instance v1, Lsdk/c/b/a/a/a;

    const-string v2, "command"

    invoke-direct {v1, v2, v0}, Lsdk/c/b/a/a/a;-><init>(Ljava/lang/String;Lsdk/c/a/b/c;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v5, 0x3

    const/16 v7, 0x30

    const/16 v2, 0x8

    const v6, 0x73ea68fb

    const/4 v1, 0x0

    instance-of v0, p1, Lsdk/c/b/a/b/a;

    if-eqz v0, :cond_6

    check-cast p1, Lsdk/c/b/a/b/a;

    iget-byte v0, p1, Lsdk/c/b/a/b/a;->b:B

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    iget-byte v3, p1, Lsdk/c/b/a/b/a;->c:B

    new-instance v4, Lsdk/c/b/a/b/c;

    invoke-direct {v4}, Lsdk/c/b/a/b/c;-><init>()V

    iput v6, v4, Lsdk/c/b/a/b/c;->b:I

    invoke-virtual {v4, v3}, Lsdk/c/b/a/b/c;->a(B)V

    iput v5, v4, Lsdk/c/b/a/b/c;->c:I

    iget-byte v3, v4, Lsdk/c/b/a/b/c;->h:B

    if-ne v3, v7, :cond_0

    iget v3, v4, Lsdk/c/b/a/b/c;->c:I

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v5

    invoke-virtual {v5}, Lsdk/c/a/b/d;->a()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    iput v3, v4, Lsdk/c/b/a/b/c;->c:I

    :cond_0
    sget v3, Lsdk/c/b/a/b/c;->a:I

    iput v3, v4, Lsdk/c/b/a/b/c;->d:I

    iput v0, v4, Lsdk/c/b/a/b/c;->f:I

    invoke-static {}, Lsdk/c/a/b/d;->f()V

    iget-byte v0, p1, Lsdk/c/b/a/b/a;->b:B

    if-lez v0, :cond_2

    iget v0, p1, Lsdk/c/b/a/b/a;->a:I

    if-lez v0, :cond_2

    iget-byte v0, v4, Lsdk/c/b/a/b/c;->g:B

    and-int/lit16 v0, v0, 0xc0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_1

    iget-object v0, p1, Lsdk/c/b/a/b/a;->d:[B

    invoke-static {v0}, Lsdk/c/a/b/g;->a([B)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lsdk/c/b/a/b/a;->a([B)V

    :cond_1
    iget-byte v0, v4, Lsdk/c/b/a/b/c;->h:B

    and-int/lit8 v0, v0, 0x30

    if-ne v0, v7, :cond_2

    iget-object v0, p1, Lsdk/c/b/a/b/a;->d:[B

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v3

    invoke-virtual {v3}, Lsdk/c/a/b/d;->b()[B

    move-result-object v3

    invoke-static {v0, v3}, Lsdk/c/a/a/a;->a([B[B)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lsdk/c/b/a/b/a;->a([B)V

    :cond_2
    iget v0, v4, Lsdk/c/b/a/b/c;->c:I

    add-int/lit8 v3, v0, 0x5

    iget-byte v0, p1, Lsdk/c/b/a/b/a;->b:B

    if-lez v0, :cond_5

    iget v0, p1, Lsdk/c/b/a/b/a;->a:I

    add-int/lit8 v0, v0, 0x3

    :goto_1
    add-int/2addr v0, v3

    new-array v3, v0, [B

    invoke-static {v6, v3, v1}, Lsdk/c/a/b/g;->a(I[BI)I

    iget v0, v4, Lsdk/c/b/a/b/c;->c:I

    const/4 v5, 0x4

    invoke-static {v0, v3, v5}, Lsdk/c/a/b/g;->c(I[BI)I

    iget v0, v4, Lsdk/c/b/a/b/c;->d:I

    const/4 v5, 0x5

    invoke-static {v0, v3, v5}, Lsdk/c/a/b/g;->c(I[BI)I

    invoke-virtual {v4}, Lsdk/c/b/a/b/c;->a()I

    move-result v0

    const/4 v5, 0x6

    invoke-static {v0, v3, v5}, Lsdk/c/a/b/g;->c(I[BI)I

    iget v0, v4, Lsdk/c/b/a/b/c;->f:I

    const/4 v5, 0x7

    invoke-static {v0, v3, v5}, Lsdk/c/a/b/g;->c(I[BI)I

    iget-byte v0, v4, Lsdk/c/b/a/b/c;->h:B

    and-int/lit8 v0, v0, 0x30

    if-ne v0, v7, :cond_9

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lsdk/c/a/b/d;->a()[B

    move-result-object v0

    array-length v4, v0

    invoke-static {v4, v3, v2}, Lsdk/c/a/b/g;->c(I[BI)I

    const/16 v2, 0x9

    array-length v4, v0

    invoke-static {v0, v1, v3, v2, v4}, Lsdk/c/a/b/g;->a([BI[BII)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    :goto_2
    iget-byte v2, p1, Lsdk/c/b/a/b/a;->b:B

    if-lez v2, :cond_3

    iget v2, p1, Lsdk/c/b/a/b/a;->a:I

    invoke-static {v2, v3, v0}, Lsdk/c/a/b/g;->b(I[BI)I

    move-result v2

    add-int/2addr v0, v2

    iget-byte v2, p1, Lsdk/c/b/a/b/a;->b:B

    invoke-static {v2, v3, v0}, Lsdk/c/a/b/g;->c(I[BI)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p1, Lsdk/c/b/a/b/a;->a:I

    if-lez v2, :cond_3

    iget-object v2, p1, Lsdk/c/b/a/b/a;->d:[B

    iget v4, p1, Lsdk/c/b/a/b/a;->a:I

    invoke-static {v2, v1, v3, v0, v4}, Lsdk/c/a/b/g;->a([BI[BII)I

    :cond_3
    move-object v0, v3

    :goto_3
    return-object v0

    :cond_4
    move v0, v1

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    check-cast p1, [Lsdk/c/b/a/b/a;

    array-length v0, p1

    new-instance v4, Lsdk/c/b/a/b/c;

    invoke-direct {v4}, Lsdk/c/b/a/b/c;-><init>()V

    iput v6, v4, Lsdk/c/b/a/b/c;->b:I

    iput v5, v4, Lsdk/c/b/a/b/c;->c:I

    sget v3, Lsdk/c/b/a/b/c;->a:I

    iput v3, v4, Lsdk/c/b/a/b/c;->d:I

    iput-byte v1, v4, Lsdk/c/b/a/b/c;->i:B

    iput-byte v1, v4, Lsdk/c/b/a/b/c;->h:B

    iput v0, v4, Lsdk/c/b/a/b/c;->f:I

    invoke-static {}, Lsdk/c/a/b/d;->f()V

    move v0, v1

    move v3, v1

    :goto_4
    array-length v5, p1

    if-ge v0, v5, :cond_7

    aget-object v5, p1, v0

    iget v5, v5, Lsdk/c/b/a/b/a;->a:I

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v3, 0x5

    iget v3, v4, Lsdk/c/b/a/b/c;->c:I

    add-int/2addr v0, v3

    new-array v3, v0, [B

    invoke-static {v6, v3, v1}, Lsdk/c/a/b/g;->a(I[BI)I

    iget v0, v4, Lsdk/c/b/a/b/c;->c:I

    const/4 v5, 0x4

    invoke-static {v0, v3, v5}, Lsdk/c/a/b/g;->c(I[BI)I

    iget v0, v4, Lsdk/c/b/a/b/c;->d:I

    const/4 v5, 0x5

    invoke-static {v0, v3, v5}, Lsdk/c/a/b/g;->c(I[BI)I

    invoke-virtual {v4}, Lsdk/c/b/a/b/c;->a()I

    move-result v0

    const/4 v5, 0x6

    invoke-static {v0, v3, v5}, Lsdk/c/a/b/g;->c(I[BI)I

    iget v0, v4, Lsdk/c/b/a/b/c;->f:I

    const/4 v4, 0x7

    invoke-static {v0, v3, v4}, Lsdk/c/a/b/g;->c(I[BI)I

    move v0, v1

    :goto_5
    array-length v4, p1

    if-ge v0, v4, :cond_8

    aget-object v4, p1, v0

    iget v4, v4, Lsdk/c/b/a/b/a;->a:I

    invoke-static {v4, v3, v2}, Lsdk/c/a/b/g;->b(I[BI)I

    move-result v4

    add-int/2addr v2, v4

    aget-object v4, p1, v0

    iget-byte v4, v4, Lsdk/c/b/a/b/a;->b:B

    invoke-static {v4, v3, v2}, Lsdk/c/a/b/g;->c(I[BI)I

    move-result v4

    add-int/2addr v2, v4

    aget-object v4, p1, v0

    iget-object v4, v4, Lsdk/c/b/a/b/a;->d:[B

    aget-object v5, p1, v0

    iget v5, v5, Lsdk/c/b/a/b/a;->a:I

    invoke-static {v4, v1, v3, v2, v5}, Lsdk/c/a/b/g;->a([BI[BII)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    move-object v0, v3

    goto :goto_3

    :cond_9
    move v0, v2

    goto/16 :goto_2
.end method

.method public final synthetic b(Lsdk/c/a/b/f;Lsdk/c/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v1, p3

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lsdk/c/a/b/e;->a()Lsdk/c/a/e/a/a;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lsdk/c/b/a/a/b;

    invoke-direct {v0}, Lsdk/c/b/a/a/b;-><init>()V

    invoke-virtual {p2, v0}, Lsdk/c/a/b/e;->a(Lsdk/c/a/e/a/a;)V

    :cond_1
    invoke-virtual {p2}, Lsdk/c/a/b/e;->a()Lsdk/c/a/e/a/a;

    move-result-object v0

    check-cast v0, Lsdk/c/b/a/a/b;

    instance-of v2, v1, [B

    if-eqz v2, :cond_4

    check-cast v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_1
    iget v2, v0, Lsdk/c/b/a/a/b;->a:I

    if-nez v2, :cond_a

    iget v2, v0, Lsdk/c/b/a/a/b;->d:I

    if-nez v2, :cond_2

    const/16 v2, 0x8

    new-array v2, v2, [B

    iput-object v2, v0, Lsdk/c/b/a/a/b;->f:[B

    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iget-object v3, v0, Lsdk/c/b/a/a/b;->f:[B

    iget v5, v0, Lsdk/c/b/a/a/b;->d:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lsdk/c/b/a/a/b;->d:I

    aput-byte v2, v3, v5

    iget v2, v0, Lsdk/c/b/a/a/b;->d:I

    if-ne v2, v11, :cond_3

    iget-object v2, v0, Lsdk/c/b/a/a/b;->f:[B

    invoke-static {v2, v4}, Lsdk/c/a/b/g;->b([BI)I

    move-result v2

    const v3, 0x73ea68fb

    if-eq v2, v3, :cond_3

    iput v4, v0, Lsdk/c/b/a/a/b;->d:I

    :cond_3
    iget v2, v0, Lsdk/c/b/a/a/b;->d:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_2

    new-instance v3, Lsdk/c/b/a/b/c;

    invoke-direct {v3}, Lsdk/c/b/a/b/c;-><init>()V

    iget-object v2, v0, Lsdk/c/b/a/a/b;->f:[B

    aget-byte v2, v2, v11

    and-int/lit16 v2, v2, 0xff

    iput v2, v3, Lsdk/c/b/a/b/c;->c:I

    iget-object v2, v0, Lsdk/c/b/a/a/b;->f:[B

    const/4 v5, 0x5

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    iput v2, v3, Lsdk/c/b/a/b/c;->d:I

    iget-object v2, v0, Lsdk/c/b/a/a/b;->f:[B

    const/4 v5, 0x6

    aget-byte v2, v2, v5

    invoke-virtual {v3, v2}, Lsdk/c/b/a/b/c;->a(B)V

    iget-byte v2, v3, Lsdk/c/b/a/b/c;->h:B

    const/16 v5, 0x30

    if-ne v2, v5, :cond_5

    iput-boolean v9, p0, Lsdk/c/b/a/a/c;->g:Z

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    new-array v2, v5, [B

    iput-object v2, p0, Lsdk/c/b/a/a/c;->e:[B

    move v2, v4

    :goto_2
    if-ge v2, v5, :cond_6

    iget-object v6, p0, Lsdk/c/b/a/a/c;->e:[B

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    aput-byte v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    check-cast v1, Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_5
    iput-boolean v4, p0, Lsdk/c/b/a/a/c;->g:Z

    :cond_6
    iget-byte v2, v3, Lsdk/c/b/a/b/c;->g:B

    const/16 v5, -0x80

    if-ne v2, v5, :cond_7

    iput-boolean v9, p0, Lsdk/c/b/a/a/c;->f:Z

    :goto_3
    iget-object v2, v0, Lsdk/c/b/a/a/b;->f:[B

    const/4 v5, 0x7

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    iput v2, v3, Lsdk/c/b/a/b/c;->f:I

    iget v2, v3, Lsdk/c/b/a/b/c;->f:I

    iput v2, v0, Lsdk/c/b/a/a/b;->c:I

    iput v4, v0, Lsdk/c/b/a/a/b;->b:I

    iput v4, v0, Lsdk/c/b/a/a/b;->d:I

    iput-object v8, v0, Lsdk/c/b/a/a/b;->f:[B

    iget v2, v3, Lsdk/c/b/a/b/c;->f:I

    if-lez v2, :cond_8

    iput v9, v0, Lsdk/c/b/a/a/b;->a:I

    goto/16 :goto_0

    :cond_7
    iput-boolean v4, p0, Lsdk/c/b/a/a/c;->f:Z

    goto :goto_3

    :cond_8
    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    new-instance v2, Lsdk/a/a/a/a/a/e;

    invoke-direct {v2}, Lsdk/a/a/a/a/a/e;-><init>()V

    invoke-virtual {v0, v2}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lsdk/c/a/b/d;->d()V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    :cond_9
    return-object v8

    :cond_a
    :goto_4
    iget v2, v0, Lsdk/c/b/a/a/b;->a:I

    if-ne v2, v9, :cond_11

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_11

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iget v3, v0, Lsdk/c/b/a/a/b;->d:I

    if-nez v3, :cond_b

    new-array v3, v10, [B

    iput-object v3, v0, Lsdk/c/b/a/a/b;->f:[B

    :cond_b
    iget-object v3, v0, Lsdk/c/b/a/a/b;->f:[B

    iget v5, v0, Lsdk/c/b/a/a/b;->d:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lsdk/c/b/a/a/b;->d:I

    aput-byte v2, v3, v5

    iget v2, v0, Lsdk/c/b/a/a/b;->d:I

    if-lt v2, v10, :cond_a

    iget v2, v0, Lsdk/c/b/a/a/b;->d:I

    if-ne v2, v10, :cond_c

    iget-object v2, v0, Lsdk/c/b/a/a/b;->f:[B

    invoke-static {v2, v4}, Lsdk/c/a/b/g;->a([BI)I

    move-result v2

    iput v2, v0, Lsdk/c/b/a/a/b;->e:I

    iput-object v8, v0, Lsdk/c/b/a/a/b;->f:[B

    iget v2, v0, Lsdk/c/b/a/a/b;->e:I

    add-int/lit8 v2, v2, 0x3

    new-array v2, v2, [B

    iput-object v2, v0, Lsdk/c/b/a/a/b;->f:[B

    iget v2, v0, Lsdk/c/b/a/a/b;->e:I

    iget-object v3, v0, Lsdk/c/b/a/a/b;->f:[B

    invoke-static {v2, v3, v4}, Lsdk/c/a/b/g;->b(I[BI)I

    goto :goto_4

    :cond_c
    iget v2, v0, Lsdk/c/b/a/a/b;->d:I

    iget v3, v0, Lsdk/c/b/a/a/b;->e:I

    add-int/lit8 v3, v3, 0x3

    if-lt v2, v3, :cond_a

    new-instance v5, Lsdk/c/b/a/b/a;

    invoke-direct {v5}, Lsdk/c/b/a/b/a;-><init>()V

    iget v2, v0, Lsdk/c/b/a/a/b;->e:I

    iput v2, v5, Lsdk/c/b/a/b/a;->a:I

    iget-object v2, v0, Lsdk/c/b/a/a/b;->f:[B

    aget-byte v2, v2, v10

    iput-byte v2, v5, Lsdk/c/b/a/b/a;->b:B

    iget v2, v5, Lsdk/c/b/a/b/a;->a:I

    if-lez v2, :cond_e

    iget v2, v5, Lsdk/c/b/a/b/a;->a:I

    new-array v3, v2, [B

    iget-object v2, v0, Lsdk/c/b/a/a/b;->f:[B

    const/4 v6, 0x3

    iget v7, v5, Lsdk/c/b/a/b/a;->a:I

    invoke-static {v2, v6, v3, v4, v7}, Lsdk/c/a/b/g;->a([BI[BII)I

    iget-boolean v2, p0, Lsdk/c/b/a/a/c;->g:Z

    if-eqz v2, :cond_13

    iget-object v2, p0, Lsdk/c/b/a/a/c;->e:[B

    if-nez v2, :cond_10

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lsdk/c/a/b/d;->b()[B

    move-result-object v2

    :goto_5
    invoke-static {v3, v2}, Lsdk/c/a/a/a;->a([B[B)[B

    move-result-object v2

    :goto_6
    iget-boolean v3, p0, Lsdk/c/b/a/a/c;->f:Z

    if-eqz v3, :cond_d

    invoke-static {v2}, Lsdk/c/a/b/g;->b([B)[B

    move-result-object v2

    :cond_d
    invoke-virtual {v5, v2}, Lsdk/c/b/a/b/a;->a([B)V

    :cond_e
    iput v4, v0, Lsdk/c/b/a/a/b;->e:I

    iput v4, v0, Lsdk/c/b/a/a/b;->d:I

    iput-object v8, v0, Lsdk/c/b/a/a/b;->f:[B

    iget-object v2, p0, Lsdk/c/b/a/a/c;->b:Lsdk/c/a/b/c;

    if-eqz v2, :cond_f

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v2

    iget-object v3, p0, Lsdk/c/b/a/a/c;->b:Lsdk/c/a/b/c;

    invoke-virtual {v3, p1, p2, v5}, Lsdk/c/a/b/c;->b(Lsdk/c/a/b/f;Lsdk/c/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    :cond_f
    iget v2, v0, Lsdk/c/b/a/a/b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lsdk/c/b/a/a/b;->b:I

    iget v2, v0, Lsdk/c/b/a/a/b;->b:I

    iget v3, v0, Lsdk/c/b/a/a/b;->c:I

    if-ne v2, v3, :cond_a

    iput v4, v0, Lsdk/c/b/a/a/b;->a:I

    goto/16 :goto_4

    :cond_10
    iget-object v2, p0, Lsdk/c/b/a/a/c;->e:[B

    invoke-static {v2}, Lsdk/b/a/a/e/g;->a([B)[B

    move-result-object v2

    goto :goto_5

    :cond_11
    iget v0, v0, Lsdk/c/b/a/a/b;->b:I

    if-lez v0, :cond_12

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lsdk/c/a/b/d;->d()V

    :cond_12
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_9

    goto/16 :goto_0

    :cond_13
    move-object v2, v3

    goto :goto_6
.end method
