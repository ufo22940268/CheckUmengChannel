.class public Lsdk/a/a/a/a/a/j;
.super Lsdk/c/b/a/b/b;


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsdk/c/b/a/b/b;-><init>()V

    const/16 v0, 0xe

    iput v0, p0, Lsdk/a/a/a/a/a/j;->j:I

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsdk/c/a/b/g;->a([BI)I

    move-result v0

    iput v0, p0, Lsdk/a/a/a/a/a/j;->a:I

    const/4 v0, 0x2

    const/4 v1, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xc0

    iput v0, p0, Lsdk/a/a/a/a/a/j;->b:I

    iget v0, p0, Lsdk/a/a/a/a/a/j;->b:I

    const/16 v2, 0x80

    if-ne v0, v2, :cond_0

    invoke-static {p1, v1}, Lsdk/c/a/b/g;->a([BI)I

    move-result v0

    iput v0, p0, Lsdk/a/a/a/a/a/j;->c:I

    :cond_0
    return-void
.end method

.method public c()[B
    .locals 4

    const/16 v3, 0x80

    iget v0, p0, Lsdk/a/a/a/a/a/j;->b:I

    if-ne v0, v3, :cond_1

    const/4 v0, 0x3

    :goto_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    iget v2, p0, Lsdk/a/a/a/a/a/j;->a:I

    invoke-static {v2, v0, v1}, Lsdk/c/a/b/g;->b(I[BI)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lsdk/a/a/a/a/a/j;->b:I

    invoke-static {v2, v0, v1}, Lsdk/c/a/b/g;->c(I[BI)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lsdk/a/a/a/a/a/j;->b:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lsdk/a/a/a/a/a/j;->c:I

    invoke-static {v2, v0, v1}, Lsdk/c/a/b/g;->b(I[BI)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method
