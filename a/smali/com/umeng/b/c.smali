.class final Lcom/umeng/b/c;
.super Landroid/os/AsyncTask;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static varargs a()Lcom/umeng/b/e;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lcom/umeng/b/l;

    invoke-static {}, Lcom/umeng/b/b;->e()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/umeng/b/l;-><init>(Landroid/content/Context;Z)V

    move v2, v0

    :goto_0
    sget-object v0, Lcom/umeng/b/b;->e:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    sget-object v0, Lcom/umeng/b/b;->e:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Lcom/umeng/b/l;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/umeng/common/net/u;

    invoke-direct {v0}, Lcom/umeng/common/net/u;-><init>()V

    const-class v4, Lcom/umeng/b/e;

    invoke-virtual {v0, v3, v4}, Lcom/umeng/common/net/u;->a(Lcom/umeng/common/net/v;Ljava/lang/Class;)Lcom/umeng/common/net/w;

    move-result-object v0

    check-cast v0, Lcom/umeng/b/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/umeng/b/b;->a(ILcom/umeng/b/e;)V

    sget-object v2, Lcom/umeng/b/b;->b:Ljava/lang/String;

    const-string v2, "reques update error"

    invoke-static {v2, v0}, Lcom/umeng/common/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/umeng/b/c;->a()Lcom/umeng/b/e;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    check-cast p1, Lcom/umeng/b/e;

    if-nez p1, :cond_0

    const/4 v0, 0x3

    invoke-static {v0, v2}, Lcom/umeng/b/b;->a(ILcom/umeng/b/e;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/umeng/b/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "response : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/umeng/b/e;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/umeng/common/a;->a()V

    iget-boolean v0, p1, Lcom/umeng/b/e;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/umeng/b/b;->a(ILcom/umeng/b/e;)V

    iget-object v0, p1, Lcom/umeng/b/e;->f:Ljava/lang/String;

    sput-object v0, Lcom/umeng/b/b;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/umeng/b/e;->j:Ljava/lang/String;

    sput-object v0, Lcom/umeng/b/b;->c:Ljava/lang/String;

    invoke-static {}, Lcom/umeng/b/b;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/umeng/b/b;->b(Landroid/content/Context;Lcom/umeng/b/e;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0, v2}, Lcom/umeng/b/b;->a(ILcom/umeng/b/e;)V

    goto :goto_0
.end method
