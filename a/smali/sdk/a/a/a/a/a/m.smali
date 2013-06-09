.class public final Lsdk/a/a/a/a/a/m;
.super Lsdk/c/b/a/b/b;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsdk/c/b/a/b/b;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Lsdk/a/a/a/a/a/m;->j:I

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsdk/c/a/b/g;->a([BI)I

    move-result v0

    iput v0, p0, Lsdk/a/a/a/a/a/m;->a:I

    return-void
.end method

.method public final a()[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    iget v1, p0, Lsdk/a/a/a/a/a/m;->a:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lsdk/c/a/b/g;->b(I[BI)I

    return-object v0
.end method
