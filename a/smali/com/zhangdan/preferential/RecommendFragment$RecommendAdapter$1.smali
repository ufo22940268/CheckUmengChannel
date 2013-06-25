.class Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$1;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->bindView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;

.field final synthetic val$prom:Lcom/zhangdan/preferential/data/model/Promotion;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;Lcom/zhangdan/preferential/data/model/Promotion;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$1;->this$1:Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;

    iput-object p2, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$1;->val$prom:Lcom/zhangdan/preferential/data/model/Promotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 406
    const/4 v3, 0x1

    new-array v0, v3, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$1;->val$prom:Lcom/zhangdan/preferential/data/model/Promotion;

    iget-wide v4, v4, Lcom/zhangdan/preferential/data/model/Promotion;->bankId:J

    long-to-int v4, v4

    aput v4, v0, v3

    .line 407
    .local v0, bankIds:[I
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$1;->this$1:Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;

    iget-object v3, v3, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    invoke-virtual {v3}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 409
    .local v1, extra:Landroid/os/Bundle;
    const-string v3, "ids"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 410
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 411
    iget-object v3, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$1;->this$1:Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;

    iget-object v3, v3, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    invoke-virtual {v3, v2}, Lcom/zhangdan/preferential/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 412
    return-void
.end method
