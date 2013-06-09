.class public final Lsdk/b/a/a/b/r;
.super Lsdk/b/a/a/b/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsdk/b/a/a/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lsdk/b/a/a/b/r;->c:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/r;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/r;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/r;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()J
    .locals 4

    iget-wide v0, p0, Lsdk/b/a/a/b/r;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lsdk/b/a/a/b/r;->c:J

    :cond_0
    iget-wide v0, p0, Lsdk/b/a/a/b/r;->c:J

    return-wide v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/r;->d:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/r;->d:Ljava/lang/String;

    return-object v0
.end method
