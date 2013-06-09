.class final Lcom/zhangdan/preferential/ah;
.super Lcom/zhangdan/preferential/ag;


# instance fields
.field final synthetic b:Lcom/zhangdan/preferential/ab;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/ab;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/preferential/ah;->b:Lcom/zhangdan/preferential/ab;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/ag;-><init>(Lcom/zhangdan/preferential/ab;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/ab;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/ah;-><init>(Lcom/zhangdan/preferential/ab;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/ah;->b:Lcom/zhangdan/preferential/ab;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/ab;->b(Lcom/zhangdan/preferential/ab;I)V

    return-void
.end method

.method protected final a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ah;->b:Lcom/zhangdan/preferential/ab;

    invoke-static {v0}, Lcom/zhangdan/preferential/ab;->g(Lcom/zhangdan/preferential/ab;)Lcom/zhangdan/preferential/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/al;->a(Ljava/util/List;)V

    return-void
.end method

.method protected final b()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ah;->b:Lcom/zhangdan/preferential/ab;

    invoke-static {v0}, Lcom/zhangdan/preferential/ab;->i(Lcom/zhangdan/preferential/ab;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
