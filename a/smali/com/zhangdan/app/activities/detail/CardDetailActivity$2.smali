.class Lcom/zhangdan/app/activities/detail/CardDetailActivity$2;
.super Ljava/lang/Object;
.source "CardDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/detail/CardDetailActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$2;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x2

    .line 426
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$2;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    .line 427
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$2;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    .line 428
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$2;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$300(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/data/model/UserBankInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    .line 429
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$2;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$2;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$300(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/data/model/UserBankInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/repay/RepayStateUtil;->setPaidState(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V

    .line 430
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$2;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #calls: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->refreshUIOnReturnStateChanged()V
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$400(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    .line 431
    return-void
.end method
