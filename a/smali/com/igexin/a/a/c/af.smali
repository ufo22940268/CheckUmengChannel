.class abstract Lcom/igexin/a/a/c/af;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/igexin/a/a/c/ao;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/igexin/a/a/c/ag;)V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/a/c/af;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b()Z
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/c/af;->a:Lcom/igexin/a/a/c/ao;

    sget-object v1, Lcom/igexin/a/a/c/ao;->a:Lcom/igexin/a/a/c/ao;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Lcom/igexin/a/a/c/aj;
    .locals 0

    check-cast p0, Lcom/igexin/a/a/c/aj;

    return-object p0
.end method

.method d()Z
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/c/af;->a:Lcom/igexin/a/a/c/ao;

    sget-object v1, Lcom/igexin/a/a/c/ao;->b:Lcom/igexin/a/a/c/ao;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Lcom/igexin/a/a/c/am;
    .locals 0

    check-cast p0, Lcom/igexin/a/a/c/am;

    return-object p0
.end method

.method f()Z
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/c/af;->a:Lcom/igexin/a/a/c/ao;

    sget-object v1, Lcom/igexin/a/a/c/ao;->c:Lcom/igexin/a/a/c/ao;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()Lcom/igexin/a/a/c/al;
    .locals 0

    check-cast p0, Lcom/igexin/a/a/c/al;

    return-object p0
.end method

.method h()Z
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/c/af;->a:Lcom/igexin/a/a/c/ao;

    sget-object v1, Lcom/igexin/a/a/c/ao;->d:Lcom/igexin/a/a/c/ao;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()Lcom/igexin/a/a/c/ai;
    .locals 0

    check-cast p0, Lcom/igexin/a/a/c/ai;

    return-object p0
.end method

.method j()Z
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/c/af;->a:Lcom/igexin/a/a/c/ao;

    sget-object v1, Lcom/igexin/a/a/c/ao;->e:Lcom/igexin/a/a/c/ao;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()Lcom/igexin/a/a/c/ah;
    .locals 0

    check-cast p0, Lcom/igexin/a/a/c/ah;

    return-object p0
.end method

.method l()Z
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/c/af;->a:Lcom/igexin/a/a/c/ao;

    sget-object v1, Lcom/igexin/a/a/c/ao;->f:Lcom/igexin/a/a/c/ao;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
