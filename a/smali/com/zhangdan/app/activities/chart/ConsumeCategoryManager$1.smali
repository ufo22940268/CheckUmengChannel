.class Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$1;
.super Ljava/lang/Object;
.source "ConsumeCategoryManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$1;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f090195

    if-ne v6, v7, :cond_1

    .line 131
    new-instance v2, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;

    invoke-direct {v2}, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;-><init>()V

    .line 132
    .local v2, dialogFragment:Lcom/zhangdan/app/activities/chart/NameListDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v0, args:Landroid/os/Bundle;
    const-string v6, "names"

    iget-object v7, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$1;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    #getter for: Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mNameList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->access$000(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 134
    invoke-virtual {v2, v0}, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 135
    iget-object v6, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$1;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    #getter for: Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mOnCardNameSelectedListener:Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;
    invoke-static {v6}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->access$100(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->setOnCardNameSelectedListener(Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;)V

    .line 136
    iget-object v6, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$1;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    #getter for: Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v6}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->access$200(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    const-string v7, "NameDialog"

    invoke-virtual {v2, v6, v7}, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 152
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #dialogFragment:Lcom/zhangdan/app/activities/chart/NameListDialogFragment;
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f090198

    if-ne v6, v7, :cond_0

    .line 138
    new-instance v3, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    invoke-direct {v3}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;-><init>()V

    .line 139
    .local v3, fragment:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .restart local v0       #args:Landroid/os/Bundle;
    const v5, 0x7fffffff

    .line 141
    .local v5, minYear:I
    iget-object v6, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$1;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    #getter for: Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mChartSumList:Ljava/util/List;
    invoke-static {v6}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->access$300(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 142
    iget-object v6, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$1;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    #getter for: Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mChartSumList:Ljava/util/List;
    invoke-static {v6}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->access$300(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;

    .line 143
    .local v1, data:Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;
    invoke-virtual {v1}, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;->getYear()I

    move-result v6

    if-ge v6, v5, :cond_2

    .line 144
    invoke-virtual {v1}, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;->getYear()I

    move-result v5

    goto :goto_1

    .line 147
    .end local v1           #data:Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_3
    const-string v6, "first_year"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    invoke-virtual {v3, v0}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 149
    iget-object v6, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$1;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    #getter for: Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mOnDateChooseListener:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;
    invoke-static {v6}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->access$400(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->setOnDateChooseListener(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;)V

    .line 150
    iget-object v6, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$1;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    #getter for: Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v6}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->access$200(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    const-string v7, "DateDialog"

    invoke-virtual {v3, v6, v7}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
