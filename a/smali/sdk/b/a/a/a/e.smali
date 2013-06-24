.class public Lsdk/b/a/a/a/e;
.super Lsdk/b/a/a/a/a;


# instance fields
.field public c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lcom/igexin/sdk/SdkMainService;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lsdk/b/a/a/a/a;-><init>(Lcom/igexin/sdk/SdkMainService;)V

    iput v0, p0, Lsdk/b/a/a/a/e;->d:I

    iput-boolean v0, p0, Lsdk/b/a/a/a/e;->c:Z

    return-void
.end method

.method private e()V
    .locals 4

    new-instance v0, Lsdk/b/a/a/e/a/a;

    iget-object v1, p0, Lsdk/b/a/a/a/e;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-direct {v0, v1}, Lsdk/b/a/a/e/a/a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lsdk/b/a/a/a/e;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v1, v1, Lcom/igexin/sdk/SdkMainService;->i:Lsdk/b/a/a/c/h;

    invoke-virtual {v0, v1}, Lsdk/b/a/a/e/a/a;->a(Lsdk/b/a/a/c/f;)V

    iget-object v1, p0, Lsdk/b/a/a/a/e;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v1, v1, Lcom/igexin/sdk/SdkMainService;->j:Lsdk/b/a/a/c/o;

    invoke-virtual {v0, v1}, Lsdk/b/a/a/e/a/a;->a(Lsdk/b/a/a/c/f;)V

    iget-object v1, p0, Lsdk/b/a/a/a/e;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v1, v1, Lcom/igexin/sdk/SdkMainService;->l:Lsdk/b/a/a/c/a;

    invoke-virtual {v0, v1}, Lsdk/b/a/a/e/a/a;->a(Lsdk/b/a/a/c/f;)V

    iget-object v1, p0, Lsdk/b/a/a/a/e;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v1, v1, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lsdk/c/a/b/d;->a(Lsdk/c/a/e/d;ZZ)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/a/e;->b:Lcom/igexin/sdk/SdkMainService;

    iget-boolean v0, v0, Lcom/igexin/sdk/SdkMainService;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsdk/b/a/a/a/e;->c:Z

    invoke-virtual {p0}, Lsdk/b/a/a/a/e;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lsdk/b/a/a/a/e;->e()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Lsdk/c/a/e/e;)Z
    .locals 3

    const/4 v0, 0x1

    instance-of v1, p1, Lsdk/b/a/a/e/a/b;

    if-eqz v1, :cond_0

    check-cast p1, Lsdk/b/a/a/e/a/b;

    iget v1, p1, Lsdk/b/a/a/e/a/b;->a:I

    const v2, -0xef7d4

    if-ne v1, v2, :cond_0

    iput-boolean v0, p0, Lsdk/b/a/a/a/e;->c:Z

    invoke-virtual {p0}, Lsdk/b/a/a/a/e;->c()V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public a(Lsdk/c/a/e/d;Lsdk/c/a/e/e;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lsdk/b/a/a/e/a/a;

    if-eqz v1, :cond_1

    iget v1, p0, Lsdk/b/a/a/a/e;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsdk/b/a/a/a/e;->d:I

    iget v1, p0, Lsdk/b/a/a/a/e;->d:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    iput-boolean v0, p0, Lsdk/b/a/a/a/e;->c:Z

    invoke-virtual {p0}, Lsdk/b/a/a/a/e;->c()V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lsdk/b/a/a/a/e;->e()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Lsdk/b/a/a/c/h;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lsdk/b/a/a/e/g;->a([B)[B

    move-result-object v0

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsdk/c/a/b/d;->a([B)V

    sget-wide v0, Lsdk/b/a/a/c/h;->r:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lsdk/b/a/a/c/h;->a(J)Z

    :cond_0
    sget-boolean v0, Lsdk/b/a/a/c/h;->y:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lsdk/b/a/a/c/h;->x:Z

    if-nez v0, :cond_1

    sput-boolean v4, Lsdk/b/a/a/c/h;->x:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lsdk/b/a/a/a/e;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->g()I

    move-result v0

    if-ne v0, v4, :cond_3

    const/4 v0, 0x0

    sput v0, Lsdk/b/a/a/a/b;->e:I

    goto :goto_0

    :cond_3
    if-nez v0, :cond_1

    iget-object v0, p0, Lsdk/b/a/a/a/e;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    new-instance v1, Lsdk/b/a/a/e/c;

    invoke-direct {v1}, Lsdk/b/a/a/e/c;-><init>()V

    invoke-virtual {v0, v1}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lsdk/b/a/a/a/e;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    invoke-virtual {v0}, Lsdk/c/a/b/d;->d()V

    goto :goto_0
.end method
