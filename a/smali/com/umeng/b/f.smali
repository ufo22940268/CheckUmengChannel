.class final Lcom/umeng/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/umeng/common/net/s;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/umeng/b/c;

    invoke-direct {v0}, Lcom/umeng/b/c;-><init>()V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/umeng/b/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/umeng/b/b;->c()Lcom/umeng/b/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/umeng/b/b;->c()Lcom/umeng/b/a;

    :cond_2
    invoke-static {v1}, Lcom/umeng/b/b;->a(Z)Z

    sget-object v0, Lcom/umeng/b/b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/umeng/common/a;->a()V

    goto :goto_0
.end method
