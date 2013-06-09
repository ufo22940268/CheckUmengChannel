.class final Lcom/zhangdan/preferential/ay;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/as;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/as;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/ay;->a:Lcom/zhangdan/preferential/as;

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/as;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/ay;-><init>(Lcom/zhangdan/preferential/as;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    check-cast p1, [Lcom/zhangdan/preferential/data/model/Position;

    aget-object v0, p1, v3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    const-string v2, ""

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/zhangdan/preferential/ay;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v2}, Lcom/zhangdan/preferential/as;->d(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/o;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/o;->a(Lcom/zhangdan/preferential/data/model/Position;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/preferential/ay;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v2}, Lcom/zhangdan/preferential/as;->e(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/zhangdan/preferential/a/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/preferential/ay;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v2}, Lcom/zhangdan/preferential/as;->e(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/f;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/f;->k(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/zhangdan/preferential/ay;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v2}, Lcom/zhangdan/preferential/as;->e(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/f;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/f;->l(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    return-object v1
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/ay;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->f(Lcom/zhangdan/preferential/as;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
