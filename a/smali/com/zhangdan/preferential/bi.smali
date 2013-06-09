.class final Lcom/zhangdan/preferential/bi;
.super Lcom/zhangdan/preferential/bh;


# instance fields
.field final synthetic b:Lcom/zhangdan/preferential/SpecificRecommendActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/preferential/bi;->b:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/bh;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/bi;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/bi;->b:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->a(Lcom/zhangdan/preferential/SpecificRecommendActivity;I)V

    return-void
.end method

.method protected final a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bi;->b:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->a(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lcom/zhangdan/preferential/bk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/bk;->a(Ljava/util/List;)V

    return-void
.end method

.method protected final b()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bi;->b:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->c(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
