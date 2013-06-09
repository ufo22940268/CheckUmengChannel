.class final Lcom/zhangdan/preferential/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/as;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/as;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/au;->a:Lcom/zhangdan/preferential/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/zhangdan/preferential/au;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->c(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->a()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/preferential/az;

    iget-object v2, p0, Lcom/zhangdan/preferential/au;->a:Lcom/zhangdan/preferential/as;

    invoke-direct {v1, v2, v4}, Lcom/zhangdan/preferential/az;-><init>(Lcom/zhangdan/preferential/as;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/zhangdan/preferential/be;

    iget-object v3, p0, Lcom/zhangdan/preferential/au;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v3, v0}, Lcom/zhangdan/preferential/as;->a(Lcom/zhangdan/preferential/as;Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/be;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/az;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    return-void
.end method

.method public final b()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/zhangdan/preferential/au;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->c(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->a()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/preferential/ba;

    iget-object v2, p0, Lcom/zhangdan/preferential/au;->a:Lcom/zhangdan/preferential/as;

    invoke-direct {v1, v2, v4}, Lcom/zhangdan/preferential/ba;-><init>(Lcom/zhangdan/preferential/as;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/zhangdan/preferential/be;

    iget-object v3, p0, Lcom/zhangdan/preferential/au;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v3, v0}, Lcom/zhangdan/preferential/as;->b(Lcom/zhangdan/preferential/as;Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/be;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/ba;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    return-void
.end method
