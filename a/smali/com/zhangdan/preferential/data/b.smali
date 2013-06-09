.class public final Lcom/zhangdan/preferential/data/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)I
    .locals 2

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    if-lez p0, :cond_0

    neg-int v0, p0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Server date out of range!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(I)Z
    .locals 1

    if-gez p0, :cond_0

    const/4 v0, -0x8

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
