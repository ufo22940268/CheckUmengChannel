.class public Lsdk/a/a/a/a/a/g;
.super Lsdk/c/b/a/b/b;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsdk/c/b/a/b/b;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lsdk/a/a/a/a/a/g;->j:I

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    aget-byte v3, p1, v2

    const-string v0, "LoginResult"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lsdk/a/a/a/a/a/g;->a:Z

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lsdk/a/a/a/a/a/g;->b:Z

    iget-boolean v0, p0, Lsdk/a/a/a/a/a/g;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lsdk/a/a/a/a/a/g;->a(B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/a/a/a/a/a/g;->c:Ljava/lang/String;

    invoke-static {p1, v1}, Lsdk/c/a/b/g;->a([BI)I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x3

    iget-object v3, p0, Lsdk/a/a/a/a/a/g;->c:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lsdk/a/a/a/a/a/g;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public c()[B
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lsdk/a/a/a/a/a/g;->a:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x40

    int-to-byte v0, v0

    :goto_0
    iget-boolean v4, p0, Lsdk/a/a/a/a/a/g;->b:Z

    if-eqz v4, :cond_1

    or-int/lit16 v0, v0, 0x80

    int-to-byte v4, v0

    const/4 v2, 0x3

    :try_start_0
    iget-object v0, p0, Lsdk/a/a/a/a/a/g;->d:Ljava/lang/String;

    iget-object v5, p0, Lsdk/a/a/a/a/a/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    array-length v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v2, 0x3

    :goto_1
    iget-object v5, p0, Lsdk/a/a/a/a/a/g;->c:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lsdk/a/a/a/a/a/g;->a(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    move v6, v4

    move v4, v3

    move v3, v6

    :goto_2
    add-int/lit8 v4, v4, 0x8

    new-array v4, v4, [B

    invoke-static {v3, v4, v1}, Lsdk/c/a/b/g;->c(I[BI)I

    move-result v3

    iget-boolean v5, p0, Lsdk/a/a/a/a/a/g;->b:Z

    if-eqz v5, :cond_0

    invoke-static {v2, v4, v3}, Lsdk/c/a/b/g;->b(I[BI)I

    move-result v3

    if-eqz v0, :cond_0

    invoke-static {v0, v1, v4, v3, v2}, Lsdk/c/a/b/g;->a([BI[BII)I

    move-result v0

    add-int/2addr v0, v3

    :cond_0
    return-object v4

    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_3
    move v3, v2

    move v2, v1

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_3

    :cond_1
    move v4, v2

    move v2, v1

    move v6, v0

    move-object v0, v3

    move v3, v6

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0
.end method
