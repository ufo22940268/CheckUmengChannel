.class final Lcom/zhangdan/preferential/f;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/e;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/e;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/f;->a:Lcom/zhangdan/preferential/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/e;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/f;-><init>(Lcom/zhangdan/preferential/e;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/f;->a:Lcom/zhangdan/preferential/e;

    invoke-static {v0}, Lcom/zhangdan/preferential/e;->a(Lcom/zhangdan/preferential/e;)Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->a()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/f;->a:Lcom/zhangdan/preferential/e;

    invoke-static {v1}, Lcom/zhangdan/preferential/e;->b(Lcom/zhangdan/preferential/e;)Lcom/zhangdan/preferential/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zhangdan/preferential/a/f;->a(Lcom/zhangdan/preferential/data/model/Position;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/b;

    iget-object v2, p0, Lcom/zhangdan/preferential/f;->a:Lcom/zhangdan/preferential/e;

    invoke-static {v2, v0}, Lcom/zhangdan/preferential/e;->a(Lcom/zhangdan/preferential/e;Lcom/zhangdan/preferential/data/model/b;)V

    goto :goto_0
.end method
