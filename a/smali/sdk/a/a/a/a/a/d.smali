.class public final Lsdk/a/a/a/a/a/d;
.super Lsdk/c/b/a/b/b;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lsdk/c/b/a/b/b;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lsdk/a/a/a/a/a/d;->j:I

    const/16 v0, 0x34

    iput-byte v0, p0, Lsdk/a/a/a/a/a/d;->k:B

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lsdk/a/a/a/a/a/d;->a:Ljava/lang/String;

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    iput-object p2, p0, Lsdk/a/a/a/a/a/d;->b:Ljava/lang/String;

    if-nez p3, :cond_2

    const-string p3, ""

    :cond_2
    iput-object p3, p0, Lsdk/a/a/a/a/a/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 0

    return-void
.end method

.method public final a()[B
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lsdk/a/a/a/a/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lsdk/a/a/a/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lsdk/a/a/a/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    array-length v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x3

    new-array v3, v3, [B

    array-length v4, v0

    invoke-static {v4, v3, v6}, Lsdk/c/a/b/g;->c(I[BI)I

    const/4 v4, 0x1

    array-length v5, v0

    invoke-static {v0, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    array-length v4, v1

    add-int/lit8 v5, v0, 0x1

    invoke-static {v4, v3, v0}, Lsdk/c/a/b/g;->c(I[BI)I

    array-length v0, v1

    invoke-static {v1, v6, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v1

    add-int/2addr v0, v5

    array-length v1, v2

    add-int/lit8 v4, v0, 0x1

    invoke-static {v1, v3, v0}, Lsdk/c/a/b/g;->c(I[BI)I

    array-length v0, v2

    invoke-static {v2, v6, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method
