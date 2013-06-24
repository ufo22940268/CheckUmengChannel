.class Lcom/zhangdan/app/activities/stage/StageSummaryActivity$1;
.super Ljava/lang/Object;
.source "StageSummaryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->generateBankStageView(Lcom/zhangdan/app/data/model/BillStageInfo;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/stage/StageSummaryActivity;

.field final synthetic val$data:Lcom/zhangdan/app/data/model/BillStageInfo;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/stage/StageSummaryActivity;Lcom/zhangdan/app/data/model/BillStageInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity$1;->this$0:Lcom/zhangdan/app/activities/stage/StageSummaryActivity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity$1;->val$data:Lcom/zhangdan/app/data/model/BillStageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 207
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity$1;->this$0:Lcom/zhangdan/app/activities/stage/StageSummaryActivity;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 209
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    const-string v2, "bill_stage"

    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity$1;->val$data:Lcom/zhangdan/app/data/model/BillStageInfo;

    invoke-virtual {v0, v2, v3}, Lcom/zhangdan/app/ZhangdanApplication;->addCacheObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    iget-object v2, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity$1;->this$0:Lcom/zhangdan/app/activities/stage/StageSummaryActivity;

    const-class v3, Lcom/zhangdan/app/activities/stage/CardStageActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 211
    iget-object v2, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity$1;->this$0:Lcom/zhangdan/app/activities/stage/StageSummaryActivity;

    invoke-virtual {v2, v1}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method
