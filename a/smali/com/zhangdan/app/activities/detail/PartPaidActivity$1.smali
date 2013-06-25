.class Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;
.super Ljava/lang/Object;
.source "PartPaidActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/detail/PartPaidActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

.field final synthetic val$data:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/PartPaidActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->removeDialog(I)V

    .line 155
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;->val$data:Landroid/os/Bundle;

    const-string v1, "position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 156
    .local v8, position:I
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mPayedListAdapter:Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->access$000(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mPayedListAdapter:Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->access$000(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhangdan/app/data/model/http/Repayment;

    .line 158
    .local v5, data:Lcom/zhangdan/app/data/model/http/Repayment;
    if-nez v5, :cond_1

    .line 169
    .end local v5           #data:Lcom/zhangdan/app/data/model/http/Repayment;
    :cond_0
    :goto_0
    return-void

    .line 160
    .restart local v5       #data:Lcom/zhangdan/app/data/model/http/Repayment;
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v9

    .line 161
    .local v9, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-eqz v9, :cond_0

    .line 162
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mHasPaidBefore:D
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->access$100(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)D

    move-result-wide v1

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/http/Repayment;->getReturnAmount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    sub-double/2addr v1, v3

    #setter for: Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mHasPaidBefore:D
    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->access$102(Lcom/zhangdan/app/activities/detail/PartPaidActivity;D)D

    .line 163
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbType:I
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->access$200(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)I

    move-result v1

    invoke-virtual {v9}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbType:I
    invoke-static {v3}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->access$200(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mBillId:J
    invoke-static {v3}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->access$300(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)J

    move-result-wide v3

    :goto_1
    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mHasPaidBefore:D
    invoke-static {v6}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->access$100(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/zhangdan/app/activities/repay/RepayStateUtil;->deleteReturnRecord(Landroid/content/Context;ILjava/lang/String;JLcom/zhangdan/app/data/model/http/Repayment;D)V

    .line 164
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mPayedListAdapter:Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->access$000(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->removeData(Lcom/zhangdan/app/data/model/http/Repayment;)V

    .line 165
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mPayedListAdapter:Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->access$000(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->notifyDataSetChanged()V

    .line 166
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    #calls: Lcom/zhangdan/app/activities/detail/PartPaidActivity;->calcUnpaidAmount()V
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->access$500(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbId:J
    invoke-static {v3}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->access$400(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)J

    move-result-wide v3

    goto :goto_1
.end method
