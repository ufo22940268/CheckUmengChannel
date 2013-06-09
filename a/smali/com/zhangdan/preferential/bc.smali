.class final Lcom/zhangdan/preferential/bc;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/as;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/as;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/bc;->a:Lcom/zhangdan/preferential/as;

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/as;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/bc;-><init>(Lcom/zhangdan/preferential/as;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/preferential/bc;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->n(Lcom/zhangdan/preferential/as;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/bc;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->n(Lcom/zhangdan/preferential/as;)Ljava/util/List;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/preferential/bc;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->e(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/f;

    iget-object v0, p0, Lcom/zhangdan/preferential/bc;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->e(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/bc;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v1}, Lcom/zhangdan/preferential/as;->d(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/o;

    invoke-static {}, Lcom/zhangdan/preferential/a/o;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/a/f;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/f;->m(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {}, Lcom/zhangdan/preferential/data/model/g;->a()Lcom/zhangdan/preferential/data/model/g;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/bc;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0, p1}, Lcom/zhangdan/preferential/as;->a(Lcom/zhangdan/preferential/as;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/bc;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->n(Lcom/zhangdan/preferential/as;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/bc;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->o(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/bc;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v1}, Lcom/zhangdan/preferential/as;->n(Lcom/zhangdan/preferential/as;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/bb;->a(Ljava/util/List;)V

    :cond_1
    return-void
.end method
