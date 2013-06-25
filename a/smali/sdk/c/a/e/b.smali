.class public abstract Lsdk/c/a/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Lsdk/c/a/e/a/g;


# instance fields
.field protected b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsdk/c/a/e/b;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsdk/c/a/e/b;->b:Z

    return-void
.end method

.method public a(JLsdk/c/a/e/d;)Z
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p3, Lsdk/c/a/e/d;->L:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-wide v2, p3, Lsdk/c/a/e/d;->J:J

    sub-long v2, p1, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(JLsdk/c/a/e/d;)J
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p3, Lsdk/c/a/e/d;->L:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-wide v2, p3, Lsdk/c/a/e/d;->J:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lsdk/c/a/e/b;->b:Z

    return v0
.end method
