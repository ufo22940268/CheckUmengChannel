.class Lcom/igexin/sdk/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lsdk/b/a/a/b/s;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/igexin/sdk/SdkMainService;


# direct methods
.method constructor <init>(Lcom/igexin/sdk/SdkMainService;Lsdk/b/a/a/b/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/m;->d:Lcom/igexin/sdk/SdkMainService;

    iput-object p2, p0, Lcom/igexin/sdk/m;->a:Lsdk/b/a/a/b/s;

    iput-object p3, p0, Lcom/igexin/sdk/m;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/igexin/sdk/m;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lsdk/b/a/a/b/j;

    invoke-direct {v0}, Lsdk/b/a/a/b/j;-><init>()V

    iget-object v1, p0, Lcom/igexin/sdk/m;->a:Lsdk/b/a/a/b/s;

    invoke-virtual {v1}, Lsdk/b/a/a/b/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/b/a/a/b/j;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/sdk/m;->a:Lsdk/b/a/a/b/s;

    invoke-virtual {v1}, Lsdk/b/a/a/b/s;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsdk/b/a/a/b/j;->a(J)V

    iget-object v1, p0, Lcom/igexin/sdk/m;->a:Lsdk/b/a/a/b/s;

    invoke-virtual {v1}, Lsdk/b/a/a/b/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/b/a/a/b/j;->b(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lsdk/b/a/a/b/j;->b(I)V

    iget-object v1, p0, Lcom/igexin/sdk/m;->a:Lsdk/b/a/a/b/s;

    invoke-virtual {v1}, Lsdk/b/a/a/b/s;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lsdk/b/a/a/b/j;->d(I)V

    :try_start_0
    iget-object v1, p0, Lcom/igexin/sdk/m;->d:Lcom/igexin/sdk/SdkMainService;

    iget-object v1, v1, Lcom/igexin/sdk/SdkMainService;->h:Lsdk/b/a/a/c/m;

    invoke-virtual {v1, v0}, Lsdk/b/a/a/c/m;->a(Lsdk/b/a/a/b/j;)I

    move-result v0

    iget-object v1, p0, Lcom/igexin/sdk/m;->d:Lcom/igexin/sdk/SdkMainService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/igexin/sdk/m;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/igexin/sdk/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/igexin/sdk/SdkMainService;->a(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/sdk/m;->a:Lsdk/b/a/a/b/s;

    invoke-virtual {v1}, Lsdk/b/a/a/b/s;->d()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/igexin/sdk/m;->d:Lcom/igexin/sdk/SdkMainService;

    iget-object v2, p0, Lcom/igexin/sdk/m;->a:Lsdk/b/a/a/b/s;

    invoke-virtual {v1, v2, v0}, Lcom/igexin/sdk/SdkMainService;->a(Lsdk/b/a/a/b/s;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method
