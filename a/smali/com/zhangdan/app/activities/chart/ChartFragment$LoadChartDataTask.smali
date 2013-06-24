.class Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "ChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/chart/ChartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadChartDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private categoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Category;",
            ">;"
        }
    .end annotation
.end field

.field private chartSumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private chartYearList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;",
            ">;"
        }
    .end annotation
.end field

.field private nameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/chart/ChartFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 17
    .parameter "params"

    .prologue
    .line 108
    const/4 v14, 0x0

    aget-object v13, p1, v14

    .line 109
    .local v13, userId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #calls: Lcom/zhangdan/app/activities/chart/ChartFragment;->getApplication()Lcom/zhangdan/app/ZhangdanApplication;
    invoke-static {v14}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$000(Lcom/zhangdan/app/activities/chart/ChartFragment;)Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v6

    .line 110
    .local v6, context:Landroid/content/Context;
    if-nez v6, :cond_0

    .line 111
    const/4 v14, 0x0

    .line 137
    :goto_0
    return-object v14

    .line 112
    :cond_0
    invoke-static {v6, v13}, Lcom/zhangdan/app/data/db/util/ChartDbUtil;->getAllChartInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 113
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ChartInfo;>;"
    invoke-static {v9}, Lcom/zhangdan/app/activities/chart/util/ChartJsonParser;->parseTotalChartInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 114
    .local v4, chartSumList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;>;"
    invoke-static {v9}, Lcom/zhangdan/app/activities/chart/util/ChartJsonParser;->parseYearChartInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 116
    .local v5, chartYearList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;>;"
    const-string v15, "Chart"

    if-nez v4, :cond_3

    const-string v14, "chartSumList = null"

    :goto_1
    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v15, "Chart"

    if-nez v5, :cond_4

    const-string v14, "chartYearList = null"

    :goto_2
    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v11, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_5

    .line 122
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;

    .line 123
    .local v12, sumInfo:Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;
    invoke-virtual {v12}, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;->getCardHolderList()Ljava/util/List;

    move-result-object v2

    .line 124
    .local v2, cardHolderList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;

    .line 125
    .local v1, cardHolder:Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;
    invoke-virtual {v1}, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, name:Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 127
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 116
    .end local v1           #cardHolder:Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;
    .end local v2           #cardHolderList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #sumInfo:Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 117
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 131
    .restart local v11       #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-static {v6}, Lcom/zhangdan/app/data/db/util/ConsumeCategoryDbUtil;->getCategory(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 133
    .local v3, categoryList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Category;>;"
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->chartSumList:Ljava/util/List;

    .line 134
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->chartYearList:Ljava/util/List;

    .line 135
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->nameList:Ljava/util/ArrayList;

    .line 136
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->categoryList:Ljava/util/List;

    .line 137
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/ChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->chartSumList:Ljava/util/List;

    #setter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mChartSumList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$102(Lcom/zhangdan/app/activities/chart/ChartFragment;Ljava/util/List;)Ljava/util/List;

    .line 146
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->chartYearList:Ljava/util/List;

    #setter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mChartYearList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$202(Lcom/zhangdan/app/activities/chart/ChartFragment;Ljava/util/List;)Ljava/util/List;

    .line 147
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->nameList:Ljava/util/ArrayList;

    #setter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mNameList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$302(Lcom/zhangdan/app/activities/chart/ChartFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 148
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->categoryList:Ljava/util/List;

    #setter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mCategoryList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$402(Lcom/zhangdan/app/activities/chart/ChartFragment;Ljava/util/List;)Ljava/util/List;

    .line 149
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mChartSumList:Ljava/util/List;
    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$100(Lcom/zhangdan/app/activities/chart/ChartFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mChartYearList:Ljava/util/List;
    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$200(Lcom/zhangdan/app/activities/chart/ChartFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mNameList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$300(Lcom/zhangdan/app/activities/chart/ChartFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$500(Lcom/zhangdan/app/activities/chart/ChartFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;

    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    invoke-direct {v1, v2}, Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;-><init>(Lcom/zhangdan/app/activities/chart/ChartFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 153
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$500(Lcom/zhangdan/app/activities/chart/ChartFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$600(Lcom/zhangdan/app/activities/chart/ChartFragment;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_0
.end method
