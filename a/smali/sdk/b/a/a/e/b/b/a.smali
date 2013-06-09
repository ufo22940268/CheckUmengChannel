.class public final Lsdk/b/a/a/e/b/b/a;
.super Lsdk/b/a/a/e/b/c;


# instance fields
.field public a:Lsdk/b/a/a/b/j;

.field public b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lsdk/b/a/a/b/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lsdk/b/a/a/e/b/c;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    iput-object p2, p0, Lsdk/b/a/a/e/b/b/a;->a:Lsdk/b/a/a/b/j;

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsdk/b/a/a/e/b/b/a;->g:Z

    :try_start_0
    invoke-static {}, Lsdk/b/a/a/e/c/b;->a()Lsdk/b/a/a/e/c/b;

    const/4 v0, 0x0

    iget-object v1, p0, Lsdk/b/a/a/e/b/b/a;->a:Lsdk/b/a/a/b/j;

    invoke-static {p1, v0, v1}, Lsdk/b/a/a/e/c/b;->a([BILsdk/b/a/a/b/j;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsdk/b/a/a/e/b/b/a;->b:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsdk/b/a/a/e/b/b/a;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse mms data failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsdk/b/a/a/e/b/b/a;->b:Ljava/util/List;

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    const v0, 0x10010

    return v0
.end method
