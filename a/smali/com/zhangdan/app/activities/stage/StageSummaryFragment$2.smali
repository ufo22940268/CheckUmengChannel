.class Lcom/zhangdan/app/activities/stage/StageSummaryFragment$2;
.super Ljava/lang/Object;
.source "StageSummaryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/stage/StageSummaryFragment;->generateBankStageView(Lcom/zhangdan/app/data/model/BillStageInfo;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/stage/StageSummaryFragment;

.field final synthetic val$data:Lcom/zhangdan/app/data/model/BillStageInfo;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/stage/StageSummaryFragment;Lcom/zhangdan/app/data/model/BillStageInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/zhangdan/app/activities/stage/StageSummaryFragment$2;->this$0:Lcom/zhangdan/app/activities/stage/StageSummaryFragment;

    iput-object p2, p0, Lcom/zhangdan/app/activities/stage/StageSummaryFragment$2;->val$data:Lcom/zhangdan/app/data/model/BillStageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 248
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 249
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zhangdan/app/activities/stage/StageSummaryFragment$2;->this$0:Lcom/zhangdan/app/activities/stage/StageSummaryFragment;

    #calls: Lcom/zhangdan/app/activities/stage/StageSummaryFragment;->getApplication()Lcom/zhangdan/app/ZhangdanApplication;
    invoke-static {v2}, Lcom/zhangdan/app/activities/stage/StageSummaryFragment;->access$000(Lcom/zhangdan/app/activities/stage/StageSummaryFragment;)Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    .line 250
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    const-string v2, "bill_stage"

    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/StageSummaryFragment$2;->val$data:Lcom/zhangdan/app/data/model/BillStageInfo;

    invoke-virtual {v0, v2, v3}, Lcom/zhangdan/app/ZhangdanApplication;->addCacheObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    iget-object v2, p0, Lcom/zhangdan/app/activities/stage/StageSummaryFragment$2;->this$0:Lcom/zhangdan/app/activities/stage/StageSummaryFragment;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/stage/StageSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/zhangdan/app/activities/stage/CardStageActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 252
    iget-object v2, p0, Lcom/zhangdan/app/activities/stage/StageSummaryFragment$2;->this$0:Lcom/zhangdan/app/activities/stage/StageSummaryFragment;

    invoke-virtual {v2, v1}, Lcom/zhangdan/app/activities/stage/StageSummaryFragment;->startActivity(Landroid/content/Intent;)V

    .line 253
    return-void
.end method
