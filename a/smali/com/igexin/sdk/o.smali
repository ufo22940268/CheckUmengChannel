.class final Lcom/igexin/sdk/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lsdk/b/a/a/b/k;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/igexin/sdk/SdkMainService;


# direct methods
.method constructor <init>(Lcom/igexin/sdk/SdkMainService;Lsdk/b/a/a/b/k;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/o;->d:Lcom/igexin/sdk/SdkMainService;

    iput-object p2, p0, Lcom/igexin/sdk/o;->a:Lsdk/b/a/a/b/k;

    iput-object p3, p0, Lcom/igexin/sdk/o;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/igexin/sdk/o;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    new-instance v0, Lsdk/b/a/a/b/j;

    invoke-direct {v0}, Lsdk/b/a/a/b/j;-><init>()V

    iget-object v1, p0, Lcom/igexin/sdk/o;->a:Lsdk/b/a/a/b/k;

    invoke-virtual {v1}, Lsdk/b/a/a/b/k;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lsdk/b/a/a/b/j;->a(I)V

    iget-object v1, p0, Lcom/igexin/sdk/o;->a:Lsdk/b/a/a/b/k;

    invoke-virtual {v1}, Lsdk/b/a/a/b/k;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsdk/b/a/a/b/j;->a(J)V

    iget-object v1, p0, Lcom/igexin/sdk/o;->a:Lsdk/b/a/a/b/k;

    invoke-virtual {v1}, Lsdk/b/a/a/b/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/b/a/a/b/j;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsdk/b/a/a/b/j;->c()V

    iget-object v1, p0, Lcom/igexin/sdk/o;->a:Lsdk/b/a/a/b/k;

    invoke-virtual {v1}, Lsdk/b/a/a/b/k;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/b/a/a/b/j;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/sdk/o;->a:Lsdk/b/a/a/b/k;

    invoke-virtual {v1}, Lsdk/b/a/a/b/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/b/a/a/b/j;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/sdk/o;->a:Lsdk/b/a/a/b/k;

    invoke-virtual {v1}, Lsdk/b/a/a/b/k;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/b/a/a/b/j;->a(Ljava/lang/String;)V

    new-instance v1, Lsdk/b/a/a/e/b/b/a;

    iget-object v2, p0, Lcom/igexin/sdk/o;->a:Lsdk/b/a/a/b/k;

    invoke-virtual {v2}, Lsdk/b/a/a/b/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lsdk/b/a/a/e/b/b/a;-><init>(Ljava/lang/String;Lsdk/b/a/a/b/j;)V

    new-instance v0, Lsdk/b/a/a/e/b/d;

    invoke-direct {v0, v1}, Lsdk/b/a/a/e/b/d;-><init>(Lsdk/b/a/a/e/b/c;)V

    iget-object v2, p0, Lcom/igexin/sdk/o;->d:Lcom/igexin/sdk/SdkMainService;

    iget-object v2, v2, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lsdk/c/a/b/d;->a(Lsdk/c/a/e/d;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lsdk/b/a/a/e/b/b/a;->g:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lsdk/b/a/a/c/l;->a()Lsdk/b/a/a/c/l;

    move-result-object v0

    iget-object v2, v1, Lsdk/b/a/a/e/b/b/a;->b:Ljava/util/List;

    iget-object v3, v1, Lsdk/b/a/a/e/b/b/a;->a:Lsdk/b/a/a/b/j;

    iget-object v1, v1, Lsdk/b/a/a/e/b/b/a;->a:Lsdk/b/a/a/b/j;

    invoke-virtual {v1}, Lsdk/b/a/a/b/j;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lsdk/b/a/a/c/l;->a(Ljava/util/List;Lsdk/b/a/a/b/j;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/igexin/sdk/o;->d:Lcom/igexin/sdk/SdkMainService;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/igexin/sdk/o;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/igexin/sdk/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/igexin/sdk/SdkMainService;->a(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/sdk/o;->a:Lsdk/b/a/a/b/k;

    invoke-virtual {v0}, Lsdk/b/a/a/b/k;->e()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    iget-object v0, p0, Lcom/igexin/sdk/o;->d:Lcom/igexin/sdk/SdkMainService;

    iget-object v1, p0, Lcom/igexin/sdk/o;->a:Lsdk/b/a/a/b/k;

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/SdkMainService;->a(Lsdk/b/a/a/b/k;)V

    :cond_0
    return-void
.end method
