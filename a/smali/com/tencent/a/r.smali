.class final Lcom/tencent/a/r;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/tencent/a/f;


# direct methods
.method constructor <init>(Lcom/tencent/a/f;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/r;->c:Lcom/tencent/a/f;

    iput-object p2, p0, Lcom/tencent/a/r;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/a/r;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/a/r;->a:Landroid/content/Context;

    const-string v1, "http://wspeed.qq.com/w.cgi"

    const-string v2, "GET"

    iget-object v3, p0, Lcom/tencent/a/r;->b:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/a/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/a/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
