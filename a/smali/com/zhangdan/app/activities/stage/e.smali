.class final Lcom/zhangdan/app/activities/stage/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/stage/StageSummaryActivity;

.field private final synthetic b:Lcom/zhangdan/app/data/model/e;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/stage/StageSummaryActivity;Lcom/zhangdan/app/data/model/e;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/stage/e;->a:Lcom/zhangdan/app/activities/stage/StageSummaryActivity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/stage/e;->b:Lcom/zhangdan/app/data/model/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/e;->a:Lcom/zhangdan/app/activities/stage/StageSummaryActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    const-string v2, "bill_stage"

    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/e;->b:Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v0, v2, v3}, Lcom/zhangdan/app/ZhangdanApplication;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/e;->a:Lcom/zhangdan/app/activities/stage/StageSummaryActivity;

    const-class v2, Lcom/zhangdan/app/activities/stage/CardStageActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/e;->a:Lcom/zhangdan/app/activities/stage/StageSummaryActivity;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
