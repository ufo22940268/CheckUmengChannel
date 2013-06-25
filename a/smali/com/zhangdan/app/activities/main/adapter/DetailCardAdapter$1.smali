.class Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$1;
.super Ljava/lang/Object;
.source "DetailCardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$1;->this$0:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 275
    .local v3, position:I
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$1;->this$0:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    #getter for: Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mList:Ljava/util/List;
    invoke-static {v4}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->access$000(Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 276
    .local v1, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 277
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$1;->this$0:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    #getter for: Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->access$100(Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$1;->this$0:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    #getter for: Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->access$100(Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070109

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v0

    .line 281
    .local v0, billState:I
    if-nez v0, :cond_2

    .line 282
    new-instance v2, Lcom/zhangdan/app/activities/repay/NoBillDialog;

    iget-object v4, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$1;->this$0:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    #getter for: Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->access$100(Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/zhangdan/app/activities/repay/NoBillDialog;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V

    .line 283
    .local v2, dialog:Lcom/zhangdan/app/activities/repay/NoBillDialog;
    invoke-virtual {v2}, Lcom/zhangdan/app/activities/repay/NoBillDialog;->show()V

    goto :goto_0

    .line 284
    .end local v2           #dialog:Lcom/zhangdan/app/activities/repay/NoBillDialog;
    :cond_2
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 285
    new-instance v2, Lcom/zhangdan/app/activities/repay/SetPaidDialog;

    iget-object v4, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$1;->this$0:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    #getter for: Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->access$100(Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/zhangdan/app/activities/repay/SetPaidDialog;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V

    .line 286
    .local v2, dialog:Lcom/zhangdan/app/activities/repay/SetPaidDialog;
    invoke-virtual {v2}, Lcom/zhangdan/app/activities/repay/SetPaidDialog;->show()V

    goto :goto_0

    .line 287
    .end local v2           #dialog:Lcom/zhangdan/app/activities/repay/SetPaidDialog;
    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 288
    new-instance v2, Lcom/zhangdan/app/activities/repay/SetUnPaidDialog;

    iget-object v4, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$1;->this$0:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    #getter for: Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->access$100(Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/zhangdan/app/activities/repay/SetUnPaidDialog;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V

    .line 289
    .local v2, dialog:Lcom/zhangdan/app/activities/repay/SetUnPaidDialog;
    invoke-virtual {v2}, Lcom/zhangdan/app/activities/repay/SetUnPaidDialog;->show()V

    goto :goto_0

    .line 290
    .end local v2           #dialog:Lcom/zhangdan/app/activities/repay/SetUnPaidDialog;
    :cond_4
    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    .line 291
    new-instance v2, Lcom/zhangdan/app/activities/repay/NotNeedPayDialog;

    iget-object v4, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$1;->this$0:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    #getter for: Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->access$100(Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/zhangdan/app/activities/repay/NotNeedPayDialog;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V

    .line 292
    .local v2, dialog:Lcom/zhangdan/app/activities/repay/NotNeedPayDialog;
    invoke-virtual {v2}, Lcom/zhangdan/app/activities/repay/NotNeedPayDialog;->show()V

    goto :goto_0

    .line 293
    .end local v2           #dialog:Lcom/zhangdan/app/activities/repay/NotNeedPayDialog;
    :cond_5
    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    .line 294
    new-instance v2, Lcom/zhangdan/app/activities/repay/PayPartDialog;

    iget-object v4, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$1;->this$0:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    #getter for: Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->access$100(Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/zhangdan/app/activities/repay/PayPartDialog;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V

    .line 295
    .local v2, dialog:Lcom/zhangdan/app/activities/repay/PayPartDialog;
    invoke-virtual {v2}, Lcom/zhangdan/app/activities/repay/PayPartDialog;->show()V

    goto :goto_0
.end method
