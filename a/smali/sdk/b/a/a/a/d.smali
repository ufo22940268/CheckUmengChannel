.class final Lsdk/b/a/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field a:J

.field b:J

.field final synthetic c:Lsdk/b/a/a/a/b;


# direct methods
.method constructor <init>(Lsdk/b/a/a/a/b;)V
    .locals 2

    iput-object p1, p0, Lsdk/b/a/a/a/d;->c:Lsdk/b/a/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lsdk/b/a/a/a/d;->a:J

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lsdk/b/a/a/a/d;->b:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 4

    iget-wide v0, p0, Lsdk/b/a/a/a/d;->a:J

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lsdk/b/a/a/a/d;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
