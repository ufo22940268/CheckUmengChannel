.class final Lcom/zhangdan/preferential/x;
.super Lcom/zhangdan/preferential/v;


# instance fields
.field final synthetic b:Lcom/zhangdan/preferential/RecommendDetailActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/preferential/x;->b:Lcom/zhangdan/preferential/RecommendDetailActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/v;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/x;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/x;->b:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->h(Lcom/zhangdan/preferential/RecommendDetailActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->a(Lcom/zhangdan/preferential/RecommendDetailActivity;I)V

    return-void
.end method

.method protected final b(Lcom/zhangdan/preferential/data/model/j;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/x;->b:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->e(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/y;

    move-result-object v0

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/j;->p:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/y;->a(Ljava/util/List;)V

    return-void
.end method
