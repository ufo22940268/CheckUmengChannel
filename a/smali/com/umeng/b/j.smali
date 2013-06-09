.class public Lcom/umeng/b/j;
.super Lcom/umeng/common/net/u;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/umeng/b/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/b/j;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/common/net/u;-><init>()V

    iput-object p1, p0, Lcom/umeng/b/j;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v1, Lcom/umeng/b/j;->b:Ljava/lang/String;

    invoke-static {}, Lcom/umeng/common/util/DeltaUpdate;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    invoke-static {}, Lcom/umeng/common/a;->b()V

    new-instance v3, Lcom/umeng/b/l;

    iget-object v1, p0, Lcom/umeng/b/j;->a:Landroid/content/Context;

    invoke-static {}, Lcom/umeng/common/util/DeltaUpdate;->a()Z

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/umeng/b/l;-><init>(Landroid/content/Context;Z)V

    move v1, v0

    move-object v0, v2

    :goto_0
    sget-object v4, Lcom/umeng/b/b;->e:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    sget-object v0, Lcom/umeng/b/b;->e:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Lcom/umeng/b/l;->a(Ljava/lang/String;)V

    const-class v0, Lcom/umeng/b/e;

    invoke-virtual {p0, v3, v0}, Lcom/umeng/b/j;->a(Lcom/umeng/common/net/v;Ljava/lang/Class;)Lcom/umeng/common/net/w;

    move-result-object v0

    check-cast v0, Lcom/umeng/b/e;

    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v0

    if-nez v1, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/b/b;->a(ILcom/umeng/b/e;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v0, Lcom/umeng/b/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "response : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/umeng/b/e;->a:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/umeng/common/a;->a()V

    iget-boolean v0, v1, Lcom/umeng/b/e;->a:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcom/umeng/b/b;->a(ILcom/umeng/b/e;)V

    iget-object v0, v1, Lcom/umeng/b/e;->f:Ljava/lang/String;

    sput-object v0, Lcom/umeng/b/b;->d:Ljava/lang/String;

    iget-object v0, v1, Lcom/umeng/b/e;->j:Ljava/lang/String;

    sput-object v0, Lcom/umeng/b/b;->c:Ljava/lang/String;

    sget-boolean v0, Lcom/umeng/b/b;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/b/j;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v3, Lcom/umeng/b/k;

    invoke-direct {v3, p0, v1}, Lcom/umeng/b/k;-><init>(Lcom/umeng/b/j;Lcom/umeng/b/e;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v5, v2}, Lcom/umeng/b/b;->a(ILcom/umeng/b/e;)V

    sget-object v1, Lcom/umeng/b/b;->b:Ljava/lang/String;

    const-string v1, "reques update error"

    invoke-static {v1, v0}, Lcom/umeng/common/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0, v1}, Lcom/umeng/b/b;->a(ILcom/umeng/b/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
