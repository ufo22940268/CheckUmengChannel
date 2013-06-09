.class final Lcom/a/a/a/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/a/a/a/d/a;


# direct methods
.method constructor <init>(Lcom/a/a/a/d/a;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/a/d/b;->c:Lcom/a/a/a/d/a;

    iput-object p2, p0, Lcom/a/a/a/d/b;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/a/a/a/d/b;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    new-instance v0, Lcom/a/a/a/d/a/b;

    invoke-direct {v0}, Lcom/a/a/a/d/a/b;-><init>()V

    iget-object v0, p0, Lcom/a/a/a/d/b;->a:Ljava/lang/String;

    iget-wide v1, p0, Lcom/a/a/a/d/b;->b:J

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-gez v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-void
.end method
