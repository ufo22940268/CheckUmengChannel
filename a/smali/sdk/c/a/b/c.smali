.class public abstract Lsdk/c/a/b/c;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lsdk/c/a/b/c;

.field protected c:Lsdk/c/a/b/c;

.field protected d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsdk/c/a/b/c;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsdk/c/a/b/c;->d:Z

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final a(Lsdk/c/a/b/f;Lsdk/c/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Nothing to encode!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lsdk/c/a/b/c;->b:Lsdk/c/a/b/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsdk/c/a/b/c;->b:Lsdk/c/a/b/c;

    invoke-virtual {v0, p1, p2, p3}, Lsdk/c/a/b/c;->a(Lsdk/c/a/b/f;Lsdk/c/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, p3}, Lsdk/c/a/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 3

    iget-boolean v0, p0, Lsdk/c/a/b/c;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lsdk/c/a/b/c;->b:Lsdk/c/a/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsdk/c/a/b/c;->b:Lsdk/c/a/b/c;

    iget-object v0, v0, Lsdk/c/a/b/c;->b:Lsdk/c/a/b/c;

    iget-object v1, p0, Lsdk/c/a/b/c;->b:Lsdk/c/a/b/c;

    const/4 v2, 0x0

    iput-object v2, v1, Lsdk/c/a/b/c;->b:Lsdk/c/a/b/c;

    iput-object v0, p0, Lsdk/c/a/b/c;->b:Lsdk/c/a/b/c;

    goto :goto_0
.end method

.method protected final a(Lsdk/c/a/b/c;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lsdk/c/a/b/c;->b:Lsdk/c/a/b/c;

    iput-object p0, p1, Lsdk/c/a/b/c;->b:Lsdk/c/a/b/c;

    iput-object p1, p0, Lsdk/c/a/b/c;->c:Lsdk/c/a/b/c;

    iput-object v0, p0, Lsdk/c/a/b/c;->b:Lsdk/c/a/b/c;

    goto :goto_0
.end method

.method public abstract b(Lsdk/c/a/b/f;Lsdk/c/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
.end method
