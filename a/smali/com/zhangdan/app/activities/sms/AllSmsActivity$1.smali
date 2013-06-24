.class Lcom/zhangdan/app/activities/sms/AllSmsActivity$1;
.super Ljava/lang/Object;
.source "AllSmsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/sms/AllSmsActivity;->initialView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 157
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 7
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/16 v6, 0x14

    .line 138
    if-nez p2, :cond_2

    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->currentType:I
    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$000(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 141
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->current:I
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$100(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->billId:I
    invoke-static {v4}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$200(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)I

    move-result v4

    invoke-static {v2, v3, v6, v4}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->queryBillDataWithSize(Landroid/content/Context;III)Ljava/util/List;

    move-result-object v1

    .line 144
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mBillDatas:Ljava/util/List;
    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$300(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    .end local v0           #i:I
    :cond_0
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->current:I
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$100(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->billId:I
    invoke-static {v4}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$200(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->currentType:I
    invoke-static {v5}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$000(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)I

    move-result v5

    invoke-static {v2, v3, v6, v4, v5}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->queryBillDataWithSize(Landroid/content/Context;IIII)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 147
    .restart local v0       #i:I
    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mBillDatas:Ljava/util/List;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$300(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    #setter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->current:I
    invoke-static {v2, v3}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$102(Lcom/zhangdan/app/activities/sms/AllSmsActivity;I)I

    .line 148
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mAllSmsAdapter:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;
    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$400(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mBillDatas:Ljava/util/List;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$300(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->setData(Ljava/util/List;)V

    .line 149
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mAllSmsAdapter:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;
    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$400(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->notifyDataSetChanged()V

    .line 151
    .end local v0           #i:I
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    :cond_2
    return-void
.end method
