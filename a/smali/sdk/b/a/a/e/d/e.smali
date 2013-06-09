.class public final Lsdk/b/a/a/e/d/e;
.super Lsdk/b/a/a/e/d/f;


# instance fields
.field a:Lcom/igexin/sdk/SdkMainService;


# direct methods
.method public constructor <init>(Lcom/igexin/sdk/SdkMainService;)V
    .locals 3

    invoke-static {}, Lsdk/b/a/a/e/d/a;->a()Lsdk/b/a/a/e/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lsdk/b/a/a/e/d/a;->b()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lsdk/b/a/a/e/d/f;-><init>(JB)V

    iput-object p1, p0, Lsdk/b/a/a/e/d/e;->a:Lcom/igexin/sdk/SdkMainService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsdk/b/a/a/e/d/e;->A:Z

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lsdk/b/a/a/a/b;->d:J

    const-string v0, "GexinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doTaskMethod heartBeatTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lsdk/b/a/a/a/b;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lsdk/b/a/a/c/h;->y:Z

    if-eqz v0, :cond_1

    const-string v0, "heartbeatReq"

    invoke-static {v0}, Lsdk/c/a/c/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/b/a/a/e/d/e;->a:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    sget-object v1, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->b()Lsdk/c/a/b/c;

    move-result-object v2

    new-instance v3, Lsdk/a/a/a/a/a/e;

    invoke-direct {v3}, Lsdk/a/a/a/a/a/e;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lsdk/b/a/a/e/b;

    iget-object v6, p0, Lsdk/b/a/a/e/d/e;->a:Lcom/igexin/sdk/SdkMainService;

    invoke-direct {v5, v6}, Lsdk/b/a/a/e/b;-><init>(Lcom/igexin/sdk/SdkMainService;)V

    invoke-virtual/range {v0 .. v5}, Lsdk/c/a/b/d;->a(Ljava/lang/String;Lsdk/c/a/b/c;Ljava/lang/Object;ZLsdk/c/a/e/a/g;)Lsdk/c/a/b/f;

    iget-object v0, p0, Lsdk/b/a/a/e/d/e;->a:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->n()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lsdk/b/a/a/e/d/e;->g()V

    sget v0, Lsdk/b/a/a/c/h;->q:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lsdk/b/a/a/e/d/e;->a:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    new-instance v1, Lsdk/b/a/a/e/d;

    invoke-direct {v1}, Lsdk/b/a/a/e/d;-><init>()V

    invoke-virtual {v0, v1}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lsdk/b/a/a/e/d/e;->a:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    invoke-virtual {v0}, Lsdk/c/a/b/d;->d()V

    const-string v0, "GexinSdk"

    const-string v1, "doTaskMethod offline ReconnectNotifyType"

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    const v0, -0x7ffffffa

    return v0
.end method

.method public final d()V
    .locals 1

    invoke-super {p0}, Lsdk/b/a/a/e/d/f;->d()V

    iget-boolean v0, p0, Lsdk/b/a/a/e/d/e;->x:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsdk/b/a/a/e/d/e;->g()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--\u5fc3\u8df3 \u5ef6\u65f6:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsdk/b/a/a/e/d/a;->a()Lsdk/b/a/a/e/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lsdk/b/a/a/e/d/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    invoke-static {}, Lsdk/b/a/a/e/d/a;->a()Lsdk/b/a/a/e/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lsdk/b/a/a/e/d/a;->b()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lsdk/b/a/a/e/d/e;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method
