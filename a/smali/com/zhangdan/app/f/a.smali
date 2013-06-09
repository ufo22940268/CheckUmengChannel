.class public final Lcom/zhangdan/app/f/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/baidu/location/e;

.field private c:Lcom/zhangdan/app/f/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/f/a;->b:Lcom/baidu/location/e;

    iput-object v0, p0, Lcom/zhangdan/app/f/a;->c:Lcom/zhangdan/app/f/b;

    iput-object p1, p0, Lcom/zhangdan/app/f/a;->a:Landroid/content/Context;

    new-instance v0, Lcom/baidu/location/e;

    invoke-direct {v0, p1}, Lcom/baidu/location/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/f/a;->b:Lcom/baidu/location/e;

    new-instance v0, Lcom/baidu/location/k;

    invoke-direct {v0}, Lcom/baidu/location/k;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/location/k;->a()V

    invoke-virtual {v0}, Lcom/baidu/location/k;->b()V

    const-string v1, "all"

    invoke-virtual {v0, v1}, Lcom/baidu/location/k;->b(Ljava/lang/String;)V

    const-string v1, "bd09ll"

    invoke-virtual {v0, v1}, Lcom/baidu/location/k;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/f/a;->b:Lcom/baidu/location/e;

    invoke-virtual {v1, v0}, Lcom/baidu/location/e;->a(Lcom/baidu/location/k;)V

    iget-object v0, p0, Lcom/zhangdan/app/f/a;->b:Lcom/baidu/location/e;

    invoke-virtual {v0, p0}, Lcom/baidu/location/e;->b(Lcom/baidu/location/c;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/f/a;->b:Lcom/baidu/location/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/f/a;->b:Lcom/baidu/location/e;

    invoke-virtual {v0}, Lcom/baidu/location/e;->d()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/baidu/location/a;)V
    .locals 7

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/baidu/location/a;->b()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/baidu/location/a;->a()D

    move-result-wide v3

    iget-object v0, p1, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    iget-object v0, v0, Lcom/baidu/location/b;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "location:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/zhangdan/app/f/a;->c:Lcom/zhangdan/app/f/b;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    const-string v1, "\u5e02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/f/a;->a:Landroid/content/Context;

    const-string v1, "card"

    const-string v2, "curr_city"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/zhangdan/app/data/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/zhangdan/app/f/a;->c:Lcom/zhangdan/app/f/b;

    invoke-interface {v1, v0}, Lcom/zhangdan/app/f/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/zhangdan/app/f/a;->a:Landroid/content/Context;

    const-string v2, "card"

    const-string v3, "curr_city"

    invoke-static {v1, v2, v3, v0}, Lcom/zhangdan/app/data/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Lcom/zhangdan/app/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/f/a;->c:Lcom/zhangdan/app/f/b;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/f/a;->b:Lcom/baidu/location/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/f/a;->b:Lcom/baidu/location/e;

    invoke-virtual {v0}, Lcom/baidu/location/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/f/a;->b:Lcom/baidu/location/e;

    invoke-virtual {v0}, Lcom/baidu/location/e;->b()I

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/f/a;->b:Lcom/baidu/location/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/f/a;->b:Lcom/baidu/location/e;

    invoke-virtual {v0, p0}, Lcom/baidu/location/e;->c(Lcom/baidu/location/c;)V

    iget-object v0, p0, Lcom/zhangdan/app/f/a;->b:Lcom/baidu/location/e;

    invoke-virtual {v0}, Lcom/baidu/location/e;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/f/a;->b:Lcom/baidu/location/e;

    :cond_0
    return-void
.end method
