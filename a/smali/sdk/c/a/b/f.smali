.class public abstract Lsdk/c/a/b/f;
.super Lsdk/c/a/e/d;


# instance fields
.field public s:Ljava/lang/String;

.field public t:Lsdk/c/a/b/c;

.field public u:Ljava/lang/Object;

.field public v:Lsdk/c/a/b/e;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lsdk/c/a/b/c;)V
    .locals 1

    invoke-direct {p0, p1}, Lsdk/c/a/e/d;-><init>(I)V

    if-eqz p2, :cond_0

    invoke-static {p2}, Lsdk/c/a/b/g;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/c/a/b/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/c/a/b/f;->s:Ljava/lang/String;

    :cond_0
    iput-object p3, p0, Lsdk/c/a/b/f;->t:Lsdk/c/a/b/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lsdk/c/a/b/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lsdk/c/a/b/f;-><init>(ILjava/lang/String;Lsdk/c/a/b/c;)V

    return-void
.end method


# virtual methods
.method public a_()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lsdk/c/a/b/f;->t:Lsdk/c/a/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsdk/c/a/b/f;->t:Lsdk/c/a/b/c;

    invoke-virtual {v0}, Lsdk/c/a/b/c;->a()V

    :cond_0
    iput-object v1, p0, Lsdk/c/a/b/f;->t:Lsdk/c/a/b/c;

    iput-object v1, p0, Lsdk/c/a/b/f;->v:Lsdk/c/a/b/e;

    iput-object v1, p0, Lsdk/c/a/b/f;->u:Ljava/lang/Object;

    iput-object v1, p0, Lsdk/c/a/b/f;->s:Ljava/lang/String;

    invoke-super {p0}, Lsdk/c/a/e/d;->a_()V

    return-void
.end method
