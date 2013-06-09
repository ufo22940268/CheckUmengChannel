.class final Lcom/zhangdan/preferential/w;
.super Lcom/zhangdan/preferential/v;


# instance fields
.field final synthetic b:Lcom/zhangdan/preferential/RecommendDetailActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/preferential/w;->b:Lcom/zhangdan/preferential/RecommendDetailActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/v;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/w;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/w;->b:Lcom/zhangdan/preferential/RecommendDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->a(Lcom/zhangdan/preferential/RecommendDetailActivity;I)V

    return-void
.end method

.method protected final a(Lcom/zhangdan/preferential/data/model/j;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/w;->b:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->e()V

    iget-object v0, p0, Lcom/zhangdan/preferential/w;->b:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->a(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/data/model/j;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/zhangdan/preferential/v;->a(Lcom/zhangdan/preferential/data/model/j;)V

    return-void
.end method

.method protected final b(Lcom/zhangdan/preferential/data/model/j;)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/preferential/w;->b:Lcom/zhangdan/preferential/RecommendDetailActivity;

    iget-object v1, p0, Lcom/zhangdan/preferential/w;->b:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->f(Lcom/zhangdan/preferential/RecommendDetailActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/j;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/zhangdan/preferential/RecommendDetailActivity;->a(Lcom/zhangdan/preferential/RecommendDetailActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/w;->b:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->g(Lcom/zhangdan/preferential/RecommendDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/w;->b:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->a(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/data/model/i;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/w;->b:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->e(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/y;

    move-result-object v0

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/j;->p:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/y;->a(Lcom/zhangdan/preferential/y;Ljava/util/List;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/w;->b:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->d()V

    return-void
.end method
