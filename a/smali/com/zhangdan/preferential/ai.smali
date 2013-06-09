.class final Lcom/zhangdan/preferential/ai;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/ab;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/ai;->a:Lcom/zhangdan/preferential/ab;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/ab;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/ai;-><init>(Lcom/zhangdan/preferential/ab;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/preferential/ai;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v0}, Lcom/zhangdan/preferential/ab;->n(Lcom/zhangdan/preferential/ab;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/ai;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v0}, Lcom/zhangdan/preferential/ab;->n(Lcom/zhangdan/preferential/ab;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/ai;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v0}, Lcom/zhangdan/preferential/ab;->f(Lcom/zhangdan/preferential/ab;)Lcom/zhangdan/preferential/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/a/f;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/zhangdan/preferential/data/model/g;->b()Lcom/zhangdan/preferential/data/model/g;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {}, Lcom/zhangdan/preferential/data/model/g;->a()Lcom/zhangdan/preferential/data/model/g;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/ai;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v0}, Lcom/zhangdan/preferential/ab;->o(Lcom/zhangdan/preferential/ab;)Lcom/zhangdan/preferential/ak;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/ak;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ai;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v0, p1}, Lcom/zhangdan/preferential/ab;->a(Lcom/zhangdan/preferential/ab;Ljava/util/List;)V

    :cond_0
    return-void
.end method
