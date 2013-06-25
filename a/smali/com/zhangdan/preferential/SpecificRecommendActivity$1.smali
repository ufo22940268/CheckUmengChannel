.class Lcom/zhangdan/preferential/SpecificRecommendActivity$1;
.super Ljava/lang/Object;
.source "SpecificRecommendActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/SpecificRecommendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$1;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, refreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;,"Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    new-instance v0, Lcom/zhangdan/preferential/SpecificRecommendActivity$GetInitPageTask;

    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$1;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/preferential/SpecificRecommendActivity$GetInitPageTask;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;Lcom/zhangdan/preferential/SpecificRecommendActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/SpecificRecommendActivity$GetInitPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 185
    return-void
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, refreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;,"Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    new-instance v0, Lcom/zhangdan/preferential/SpecificRecommendActivity$GetNextPageTask;

    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$1;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/preferential/SpecificRecommendActivity$GetNextPageTask;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;Lcom/zhangdan/preferential/SpecificRecommendActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/SpecificRecommendActivity$GetNextPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 190
    return-void
.end method
