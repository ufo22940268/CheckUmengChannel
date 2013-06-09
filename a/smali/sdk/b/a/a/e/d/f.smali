.class public abstract Lsdk/b/a/a/e/d/f;
.super Lsdk/c/a/e/d;


# instance fields
.field b:J


# direct methods
.method private constructor <init>(J)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lsdk/c/a/e/d;-><init>(I)V

    cmp-long v0, v2, v2

    if-gtz v0, :cond_0

    :goto_0
    iput-wide p1, p0, Lsdk/b/a/a/e/d/f;->b:J

    iget-wide v0, p0, Lsdk/b/a/a/e/d/f;->b:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lsdk/b/a/a/e/d/f;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    add-long/2addr p1, v0

    goto :goto_0
.end method

.method public constructor <init>(JB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsdk/b/a/a/e/d/f;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final c()V
    .locals 0

    invoke-super {p0}, Lsdk/c/a/e/d;->c()V

    invoke-virtual {p0}, Lsdk/b/a/a/e/d/f;->a()V

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method protected final f()V
    .locals 0

    return-void
.end method
