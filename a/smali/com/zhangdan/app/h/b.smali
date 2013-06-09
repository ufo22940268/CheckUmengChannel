.class public final Lcom/zhangdan/app/h/b;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private final a:Z

.field private b:I

.field private c:[B

.field private final d:I

.field private e:I

.field private final f:Z

.field private final g:[B

.field private h:Z

.field private final i:I

.field private final j:[B


# virtual methods
.method public final close()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/zhangdan/app/h/b;->b:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/zhangdan/app/h/b;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/h/b;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/zhangdan/app/h/b;->g:[B

    iget-object v2, p0, Lcom/zhangdan/app/h/b;->c:[B

    iget v3, p0, Lcom/zhangdan/app/h/b;->b:I

    iget v4, p0, Lcom/zhangdan/app/h/b;->i:I

    invoke-static {v1, v2, v3, v4}, Lcom/zhangdan/app/h/a;->a([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/h/b;->b:I

    :cond_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    iput-object v5, p0, Lcom/zhangdan/app/h/b;->c:[B

    iput-object v5, p0, Lcom/zhangdan/app/h/b;->out:Ljava/io/OutputStream;

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final write(I)V
    .locals 6

    const/4 v2, -0x5

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/zhangdan/app/h/b;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/zhangdan/app/h/b;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/h/b;->c:[B

    iget v1, p0, Lcom/zhangdan/app/h/b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zhangdan/app/h/b;->b:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lcom/zhangdan/app/h/b;->b:I

    iget v1, p0, Lcom/zhangdan/app/h/b;->d:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/h/b;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/zhangdan/app/h/b;->g:[B

    iget-object v2, p0, Lcom/zhangdan/app/h/b;->c:[B

    iget v3, p0, Lcom/zhangdan/app/h/b;->d:I

    iget v4, p0, Lcom/zhangdan/app/h/b;->i:I

    invoke-static {v1, v2, v3, v4}, Lcom/zhangdan/app/h/a;->a([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lcom/zhangdan/app/h/b;->e:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/zhangdan/app/h/b;->e:I

    iget-boolean v0, p0, Lcom/zhangdan/app/h/b;->f:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/zhangdan/app/h/b;->e:I

    const/16 v1, 0x4c

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/h/b;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iput v5, p0, Lcom/zhangdan/app/h/b;->e:I

    :cond_2
    iput v5, p0, Lcom/zhangdan/app/h/b;->b:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/h/b;->j:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-le v0, v2, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/h/b;->c:[B

    iget v1, p0, Lcom/zhangdan/app/h/b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zhangdan/app/h/b;->b:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lcom/zhangdan/app/h/b;->b:I

    iget v1, p0, Lcom/zhangdan/app/h/b;->d:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/h/b;->c:[B

    iget-object v1, p0, Lcom/zhangdan/app/h/b;->g:[B

    iget v2, p0, Lcom/zhangdan/app/h/b;->i:I

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/h/a;->a([B[BI)I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/app/h/b;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/zhangdan/app/h/b;->g:[B

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v5, p0, Lcom/zhangdan/app/h/b;->b:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/zhangdan/app/h/b;->j:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid character in Base64 data."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final write([BII)V
    .locals 2

    iget-boolean v0, p0, Lcom/zhangdan/app/h/b;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/h/b;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
