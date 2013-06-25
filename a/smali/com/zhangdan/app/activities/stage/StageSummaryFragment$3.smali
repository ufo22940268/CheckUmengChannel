.class Lcom/zhangdan/app/activities/stage/StageSummaryFragment$3;
.super Ljava/lang/Object;
.source "StageSummaryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/stage/StageSummaryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/stage/StageSummaryFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/stage/StageSummaryFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/zhangdan/app/activities/stage/StageSummaryFragment$3;->this$0:Lcom/zhangdan/app/activities/stage/StageSummaryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090039

    if-ne v1, v2, :cond_0

    .line 278
    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/StageSummaryFragment$3;->this$0:Lcom/zhangdan/app/activities/stage/StageSummaryFragment;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/stage/StageSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 279
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 280
    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->showMenu()V

    .line 283
    :cond_0
    return-void
.end method
