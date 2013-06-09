.class final Lcom/igexin/sdk/coordinator/e;
.super Lcom/igexin/sdk/aidl/i;


# instance fields
.field final synthetic a:Lcom/igexin/sdk/coordinator/SdkMsgService;


# direct methods
.method constructor <init>(Lcom/igexin/sdk/coordinator/SdkMsgService;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/coordinator/e;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    invoke-direct {p0}, Lcom/igexin/sdk/aidl/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;)I
    .locals 3

    invoke-static {}, Lsdk/b/a/a/c/a;->a()Lsdk/b/a/a/c/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lsdk/b/a/a/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/sdk/coordinator/e;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    sget-object v1, Lcom/igexin/sdk/coordinator/d;->d:Lcom/igexin/sdk/coordinator/d;

    invoke-static {v0, v1}, Lcom/igexin/sdk/coordinator/SdkMsgService;->a(Ljava/lang/String;Lcom/igexin/sdk/coordinator/d;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/igexin/sdk/a;->a(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSilentTime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    return v0
.end method

.method public final a(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lsdk/b/a/a/c/a;->a()Lsdk/b/a/a/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsdk/b/a/a/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/sdk/coordinator/e;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    sget-object v1, Lcom/igexin/sdk/coordinator/d;->a:Lcom/igexin/sdk/coordinator/d;

    invoke-static {v0, v1}, Lcom/igexin/sdk/coordinator/SdkMsgService;->a(Ljava/lang/String;Lcom/igexin/sdk/coordinator/d;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/igexin/sdk/coordinator/e;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    iget-object v2, p0, Lcom/igexin/sdk/coordinator/e;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    invoke-virtual {v2}, Lcom/igexin/sdk/coordinator/SdkMsgService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/igexin/sdk/coordinator/SdkMsgService;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "startService = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    return v1
.end method

.method public final b(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lsdk/b/a/a/c/a;->a()Lsdk/b/a/a/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsdk/b/a/a/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/sdk/coordinator/e;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    sget-object v1, Lcom/igexin/sdk/coordinator/d;->b:Lcom/igexin/sdk/coordinator/d;

    invoke-static {v0, v1}, Lcom/igexin/sdk/coordinator/SdkMsgService;->a(Ljava/lang/String;Lcom/igexin/sdk/coordinator/d;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/igexin/sdk/coordinator/SdkMsgService;->b()Lcom/igexin/sdk/coordinator/SdkMsgService;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/igexin/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "stopService = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    return v1
.end method

.method public final c(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lsdk/b/a/a/c/a;->a()Lsdk/b/a/a/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsdk/b/a/a/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/sdk/coordinator/e;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    sget-object v1, Lcom/igexin/sdk/coordinator/d;->c:Lcom/igexin/sdk/coordinator/d;

    invoke-static {v0, v1}, Lcom/igexin/sdk/coordinator/SdkMsgService;->a(Ljava/lang/String;Lcom/igexin/sdk/coordinator/d;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/igexin/sdk/e;

    iget-object v2, p0, Lcom/igexin/sdk/coordinator/e;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    invoke-virtual {v2}, Lcom/igexin/sdk/coordinator/SdkMsgService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/igexin/sdk/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/igexin/sdk/e;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isStarted = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    return v0
.end method
