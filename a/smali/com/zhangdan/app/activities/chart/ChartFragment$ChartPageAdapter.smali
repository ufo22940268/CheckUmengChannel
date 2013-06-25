.class Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/chart/ChartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChartPageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/chart/ChartFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 207
    if-nez p2, :cond_1

    .line 208
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeTrendView:Landroid/view/View;
    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$1000(Lcom/zhangdan/app/activities/chart/ChartFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mCateogryView:Landroid/view/View;
    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$1100(Lcom/zhangdan/app/activities/chart/ChartFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .parameter "container"
    .parameter "position"

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, view:Landroid/view/View;
    if-nez p2, :cond_1

    .line 217
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeTrendView:Landroid/view/View;
    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$1000(Lcom/zhangdan/app/activities/chart/ChartFragment;)Landroid/view/View;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeTrendMgr:Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;
    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$1200(Lcom/zhangdan/app/activities/chart/ChartFragment;)Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    new-instance v2, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    invoke-direct {v2, v0, v3}, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;-><init>(Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    #setter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeTrendMgr:Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;
    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$1202(Lcom/zhangdan/app/activities/chart/ChartFragment;Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;)Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;

    .line 220
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeTrendMgr:Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;
    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$1200(Lcom/zhangdan/app/activities/chart/ChartFragment;)Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mChartSumList:Ljava/util/List;
    invoke-static {v2}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$100(Lcom/zhangdan/app/activities/chart/ChartFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mChartYearList:Ljava/util/List;
    invoke-static {v3}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$200(Lcom/zhangdan/app/activities/chart/ChartFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mNameList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$300(Lcom/zhangdan/app/activities/chart/ChartFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mCategoryList:Ljava/util/List;
    invoke-static {v5}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$400(Lcom/zhangdan/app/activities/chart/ChartFragment;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->init(Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 229
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 230
    return-object v0

    .line 222
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mCateogryView:Landroid/view/View;
    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$1100(Lcom/zhangdan/app/activities/chart/ChartFragment;)Landroid/view/View;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeCategoryManager:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;
    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$1300(Lcom/zhangdan/app/activities/chart/ChartFragment;)Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    new-instance v2, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    invoke-direct {v2, v0, v3}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;-><init>(Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    #setter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeCategoryManager:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;
    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$1302(Lcom/zhangdan/app/activities/chart/ChartFragment;Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    .line 226
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeCategoryManager:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;
    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$1300(Lcom/zhangdan/app/activities/chart/ChartFragment;)Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mChartSumList:Ljava/util/List;
    invoke-static {v2}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$100(Lcom/zhangdan/app/activities/chart/ChartFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mChartYearList:Ljava/util/List;
    invoke-static {v3}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$200(Lcom/zhangdan/app/activities/chart/ChartFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mNameList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$300(Lcom/zhangdan/app/activities/chart/ChartFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mCategoryList:Ljava/util/List;
    invoke-static {v5}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$400(Lcom/zhangdan/app/activities/chart/ChartFragment;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->init(Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "obj"

    .prologue
    .line 202
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
