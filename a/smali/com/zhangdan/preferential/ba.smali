.class final Lcom/zhangdan/preferential/ba;
.super Lcom/zhangdan/preferential/ax;


# instance fields
.field final synthetic b:Lcom/zhangdan/preferential/as;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/as;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/preferential/ba;->b:Lcom/zhangdan/preferential/as;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/ax;-><init>(Lcom/zhangdan/preferential/as;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/as;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/ba;-><init>(Lcom/zhangdan/preferential/as;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ba;->b:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->a(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/bd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/bd;->b(Ljava/util/List;)V

    return-void
.end method

.method protected final g()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/ba;->b:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->k(Lcom/zhangdan/preferential/as;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/as;->b(Lcom/zhangdan/preferential/as;I)V

    return-void
.end method
