.class final Lcom/zhangdan/preferential/bg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/SpecificRecommendActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/bg;->a:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/zhangdan/preferential/bi;

    iget-object v1, p0, Lcom/zhangdan/preferential/bg;->a:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/preferential/bi;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/bi;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/zhangdan/preferential/bj;

    iget-object v1, p0, Lcom/zhangdan/preferential/bg;->a:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/preferential/bj;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/bj;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
