.class Lcom/zhangdan/preferential/RecommendFragment$1;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Lcom/zhangdan/preferential/utils/PositionProvider$PositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/RecommendFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/RecommendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendFragment$1;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionUpdated()V
    .locals 3

    .prologue
    .line 140
    new-instance v0, Lcom/zhangdan/preferential/RecommendFragment$GetInitPageTask;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendFragment$1;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/preferential/RecommendFragment$GetInitPageTask;-><init>(Lcom/zhangdan/preferential/RecommendFragment;Lcom/zhangdan/preferential/RecommendFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/RecommendFragment$GetInitPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 141
    return-void
.end method
