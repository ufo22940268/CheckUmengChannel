.class Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;
.super Ljava/lang/Object;
.source "CardDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/detail/CardDetailActivity;
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
    .line 344
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 347
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMorePd:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$000(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMorePd:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$000(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->dismiss()V

    .line 350
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 351
    .local v0, flag:I
    if-nez v0, :cond_2

    .line 352
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const-string v2, "yuan_detail_history_bill"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #calls: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->jump2HistoryBillPage()V
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$100(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    .line 372
    :cond_1
    :goto_0
    return-void

    .line 354
    :cond_2
    if-ne v0, v4, :cond_6

    .line 355
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const-string v2, "yuan_detail_merge_bill"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCanMergeUserBankList:Ljava/util/List;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$200(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCanMergeUserBankList:Ljava/util/List;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$200(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 357
    :cond_3
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const v3, 0x7f07014c

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_4
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCanMergeUserBankList:Ljava/util/List;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$200(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 361
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 363
    :cond_5
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 366
    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 367
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 368
    :cond_7
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const-string v2, "yuan_detail_delete_bill"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0
.end method
