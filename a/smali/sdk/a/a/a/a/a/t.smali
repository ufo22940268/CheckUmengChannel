.class public Lsdk/a/a/a/a/a/t;
.super Lsdk/c/b/a/b/b;


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsdk/c/b/a/b/b;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lsdk/a/a/a/a/a/t;->j:I

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsdk/c/a/b/g;->c([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lsdk/a/a/a/a/a/t;->a:J

    return-void
.end method

.method public c()[B
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [B

    iget-wide v1, p0, Lsdk/a/a/a/a/a/t;->a:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lsdk/c/a/b/g;->a(J[BI)I

    return-object v0
.end method