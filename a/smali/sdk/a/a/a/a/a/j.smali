.class public final Lsdk/a/a/a/a/a/j;
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
.method public final a([B)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsdk/c/a/b/g;->a([BI)I

    move-result v0

    iput v0, p0, Lsdk/a/a/a/a/a/j;->a:I

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xc0

    iput v0, p0, Lsdk/a/a/a/a/a/j;->b:I

    iget v0, p0, Lsdk/a/a/a/a/a/j;->b:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lsdk/c/a/b/g;->a([BI)I

    move-result v0

    iput v0, p0, Lsdk/a/a/a/a/a/j;->c:I

    :cond_0
    return-void
.end method

.method public final a()[B
    .locals 5

    const/16 v4, 0x80

    const/4 v1, 0x3

    iget v0, p0, Lsdk/a/a/a/a/a/j;->b:I

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    new-array v0, v0, [B

    iget v2, p0, Lsdk/a/a/a/a/a/j;->a:I

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lsdk/c/a/b/g;->b(I[BI)I

    iget v2, p0, Lsdk/a/a/a/a/a/j;->b:I

    const/4 v3, 0x2

    invoke-static {v2, v0, v3}, Lsdk/c/a/b/g;->c(I[BI)I

    iget v2, p0, Lsdk/a/a/a/a/a/j;->b:I

    if-ne v2, v4, :cond_0

    iget v2, p0, Lsdk/a/a/a/a/a/j;->c:I

    invoke-static {v2, v0, v1}, Lsdk/c/a/b/g;->b(I[BI)I

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method
