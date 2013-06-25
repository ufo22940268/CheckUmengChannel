.class Lcom/igexin/sdk/j;
.super Ljava/lang/Object;

# interfaces
.implements Lsdk/b/a/a/e/e/d;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:Lsdk/b/a/a/b/n;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/igexin/sdk/SdkMainService;


# direct methods
.method constructor <init>(Lcom/igexin/sdk/SdkMainService;Ljava/util/concurrent/atomic/AtomicInteger;Lsdk/b/a/a/b/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/j;->f:Lcom/igexin/sdk/SdkMainService;

    iput-object p2, p0, Lcom/igexin/sdk/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/igexin/sdk/j;->b:Lsdk/b/a/a/b/n;

    iput-object p4, p0, Lcom/igexin/sdk/j;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/igexin/sdk/j;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/igexin/sdk/j;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lsdk/b/a/a/e/e/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, Lcom/igexin/sdk/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    sget-object v0, Lsdk/b/a/a/e/e/e;->a:Lsdk/b/a/a/e/e/e;

    if-eq p1, v0, :cond_0

    sget-object v0, Lsdk/b/a/a/e/e/e;->d:Lsdk/b/a/a/e/e/e;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/igexin/sdk/j;->b:Lsdk/b/a/a/b/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/b/a/a/b/n;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/sdk/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/igexin/sdk/j;->f:Lcom/igexin/sdk/SdkMainService;

    iget-object v1, p0, Lcom/igexin/sdk/j;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/sdk/j;->d:Ljava/lang/String;

    const-string v3, "1"

    iget-object v4, p0, Lcom/igexin/sdk/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igexin/sdk/SdkMainService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
