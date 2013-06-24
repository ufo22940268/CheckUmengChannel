.class public Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;
.super Ljava/lang/Object;
.source "ConsumeCategoryManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAmountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/zhangdan/app/data/model/http/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mChartSumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChartYearList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConsumptionCategoryAdapter:Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;

.field private mContentView:Landroid/view/View;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mListView:Landroid/widget/ListView;

.field private mMonth:I

.field private mNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCardNameSelectedListener:Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDateChooseListener:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;

.field private mTvDate:Landroid/widget/TextView;

.field private mTvUserName:Landroid/widget/TextView;

.field private mUserName:Ljava/lang/String;

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter "view"
    .parameter "fragment"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mCategoryMap:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mAmountMap:Ljava/util/Map;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mUserName:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mYear:I

    .line 63
    iput v1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mMonth:I

    .line 127
    new-instance v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$1;-><init>(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 155
    new-instance v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$2;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$2;-><init>(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mOnCardNameSelectedListener:Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;

    .line 163
    new-instance v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$3;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$3;-><init>(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mOnDateChooseListener:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;

    .line 66
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mContentView:Landroid/view/View;

    .line 67
    iput-object p2, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mFragment:Landroid/support/v4/app/Fragment;

    .line 68
    const v0, 0x7f090196

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mTvUserName:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f090199

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mTvDate:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f09019a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mListView:Landroid/widget/ListView;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mOnCardNameSelectedListener:Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mChartSumList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mOnDateChooseListener:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mYear:I

    return v0
.end method

.method static synthetic access$602(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mYear:I

    return p1
.end method

.method static synthetic access$700(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mMonth:I

    return v0
.end method

.method static synthetic access$702(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mMonth:I

    return p1
.end method

.method static synthetic access$800(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;Ljava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->displayConsumeCategory(Ljava/lang/String;II)V

    return-void
.end method

.method private calcAmountByCategory(Ljava/util/List;)V
    .locals 24
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, chartYearList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;

    .line 272
    .local v9, chartYearInfo:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    invoke-virtual {v9}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->getMonthBillList()Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 274
    invoke-virtual {v9}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->getMonthBillList()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;

    .line 275
    .local v19, monthBillInfo:Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getCardHolderList()Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 277
    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getCardHolderList()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;

    .line 278
    .local v6, cardHolderInfo:Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;
    invoke-virtual {v6}, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->getCategoryList()Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 280
    invoke-virtual {v6}, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->getCategoryList()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;

    .line 281
    .local v7, category:Lcom/zhangdan/app/activities/chart/model/CategoryInfo;
    invoke-virtual {v7}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->getAmount()D

    move-result-wide v3

    .line 282
    .local v3, amount:D
    invoke-virtual {v7}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->getId()I

    move-result v8

    .line 283
    .local v8, categoryId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mCategoryMap:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhangdan/app/data/model/http/Category;

    .line 284
    .local v5, c:Lcom/zhangdan/app/data/model/http/Category;
    if-eqz v5, :cond_3

    .line 286
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/http/Category;->getParntId()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mAmountMap:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/http/Category;->getCategoryId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    .line 288
    .local v10, d:Ljava/lang/Double;
    if-nez v10, :cond_4

    const-wide/16 v20, 0x0

    :goto_1
    add-double v3, v3, v20

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mAmountMap:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/http/Category;->getCategoryId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 288
    :cond_4
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    goto :goto_1

    .line 291
    .end local v10           #d:Ljava/lang/Double;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mAmountMap:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/http/Category;->getParntId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    .line 292
    .restart local v10       #d:Ljava/lang/Double;
    if-nez v10, :cond_6

    const-wide/16 v20, 0x0

    :goto_2
    add-double v3, v3, v20

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mAmountMap:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/http/Category;->getParntId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 292
    :cond_6
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    goto :goto_2

    .line 300
    .end local v3           #amount:D
    .end local v5           #c:Lcom/zhangdan/app/data/model/http/Category;
    .end local v6           #cardHolderInfo:Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;
    .end local v7           #category:Lcom/zhangdan/app/activities/chart/model/CategoryInfo;
    .end local v8           #categoryId:I
    .end local v9           #chartYearInfo:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    .end local v10           #d:Ljava/lang/Double;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #monthBillInfo:Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
    :cond_7
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v18, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CategoryInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mAmountMap:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 302
    .local v12, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 303
    .local v17, id:Ljava/lang/Integer;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 304
    .local v3, amount:Ljava/lang/Double;
    if-eqz v17, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-lez v20, :cond_8

    .line 306
    new-instance v11, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;

    invoke-direct {v11}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;-><init>()V

    .line 307
    .local v11, data:Lcom/zhangdan/app/activities/chart/model/CategoryInfo;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->setId(I)V

    .line 308
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->setAmount(D)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mCategoryMap:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zhangdan/app/data/model/http/Category;

    .line 310
    .local v7, category:Lcom/zhangdan/app/data/model/http/Category;
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/http/Category;->getCategotyName()Ljava/lang/String;

    move-result-object v20

    :goto_4
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->setName(Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 310
    :cond_9
    const-string v20, ""

    goto :goto_4

    .line 314
    .end local v3           #amount:Ljava/lang/Double;
    .end local v7           #category:Lcom/zhangdan/app/data/model/http/Category;
    .end local v11           #data:Lcom/zhangdan/app/activities/chart/model/CategoryInfo;
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v17           #id:Ljava/lang/Integer;
    :cond_a
    new-instance v20, Lcom/zhangdan/app/activities/chart/util/CategoryAmountComparator;

    invoke-direct/range {v20 .. v20}, Lcom/zhangdan/app/activities/chart/util/CategoryAmountComparator;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mConsumptionCategoryAdapter:Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    .line 316
    new-instance v20, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mFragment:Landroid/support/v4/app/Fragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mConsumptionCategoryAdapter:Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mConsumptionCategoryAdapter:Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    :goto_5
    return-void

    .line 319
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mConsumptionCategoryAdapter:Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->changeDataSource(Ljava/util/List;)V

    goto :goto_5
.end method

.method private displayConsumeCategory(Ljava/lang/String;II)V
    .locals 24
    .parameter "userName"
    .parameter "year"
    .parameter "month"

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mChartSumList:Ljava/util/List;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mChartYearList:Ljava/util/List;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mNameList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mFragment:Landroid/support/v4/app/Fragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mAmountMap:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->clear()V

    .line 190
    if-nez p1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mYear:I

    move/from16 v18, v0

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mMonth:I

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mTvUserName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mNameList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mNameList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mTvDate:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x7f0701a2

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mChartYearList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->calcAmountByCategory(Ljava/util/List;)V

    goto :goto_0

    .line 191
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mFragment:Landroid/support/v4/app/Fragment;

    move-object/from16 v18, v0

    const v20, 0x7f0701a2

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_1

    .line 196
    :cond_3
    if-nez p1, :cond_b

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mTvUserName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mNameList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mNameList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mYear:I

    move/from16 v18, v0

    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mMonth:I

    move/from16 v18, v0

    if-nez v18, :cond_c

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mTvDate:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x7f0701a2

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 209
    :cond_4
    :goto_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v6, chartYearList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mChartYearList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;

    .line 212
    .local v4, chartData:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mYear:I

    move/from16 v18, v0

    if-eqz v18, :cond_6

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->getYear()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mYear:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 214
    :cond_6
    new-instance v5, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;

    invoke-direct {v5}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;-><init>()V

    .line 215
    .local v5, chartYearInfo:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    invoke-virtual {v4}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->getYear()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->setYear(I)V

    .line 216
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v12, monthBillList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;>;"
    const-wide/16 v15, 0x0

    .line 218
    .local v15, yearTotalAmount:D
    const/16 v17, 0x0

    .line 219
    .local v17, yearTotalCount:I
    invoke-virtual {v4}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->getMonthBillList()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_11

    .line 220
    invoke-virtual {v4}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->getMonthBillList()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;

    .line 222
    .local v11, monthBillData:Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mMonth:I

    move/from16 v18, v0

    if-eqz v18, :cond_8

    invoke-virtual {v11}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getMonthDay()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mMonth:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 224
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v3, cardHolderList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;>;"
    invoke-virtual {v11}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getCardHolderList()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_9

    .line 227
    if-nez p1, :cond_e

    .line 228
    invoke-virtual {v11}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getCardHolderList()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    :cond_9
    const/4 v13, 0x0

    .line 238
    .local v13, totalAmount:I
    const/4 v14, 0x0

    .line 239
    .local v14, totalCount:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;

    .line 240
    .local v2, cardHolder:Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;
    int-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->getAmount()D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v13, v0

    .line 241
    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->getCount()I

    move-result v18

    add-int v14, v14, v18

    .line 242
    goto :goto_7

    .line 197
    .end local v2           #cardHolder:Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;
    .end local v3           #cardHolderList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;>;"
    .end local v4           #chartData:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    .end local v5           #chartYearInfo:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    .end local v6           #chartYearList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #monthBillData:Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
    .end local v12           #monthBillList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;>;"
    .end local v13           #totalAmount:I
    .end local v14           #totalCount:I
    .end local v15           #yearTotalAmount:D
    .end local v17           #yearTotalCount:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mFragment:Landroid/support/v4/app/Fragment;

    move-object/from16 v18, v0

    const v20, 0x7f0701a2

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 199
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mTvUserName:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 203
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mYear:I

    move/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mMonth:I

    move/from16 v18, v0

    if-nez v18, :cond_d

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mTvDate:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mFragment:Landroid/support/v4/app/Fragment;

    move-object/from16 v19, v0

    const v20, 0x7f070198

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mYear:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 205
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mYear:I

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mMonth:I

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mTvDate:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mFragment:Landroid/support/v4/app/Fragment;

    move-object/from16 v19, v0

    const v20, 0x7f070199

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mYear:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mMonth:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 230
    .restart local v3       #cardHolderList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;>;"
    .restart local v4       #chartData:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    .restart local v5       #chartYearInfo:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    .restart local v6       #chartYearList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;>;"
    .restart local v11       #monthBillData:Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
    .restart local v12       #monthBillList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;>;"
    .restart local v15       #yearTotalAmount:D
    .restart local v17       #yearTotalCount:I
    :cond_e
    invoke-virtual {v11}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getCardHolderList()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_f
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;

    .line 231
    .restart local v2       #cardHolder:Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;
    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 232
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 243
    .end local v2           #cardHolder:Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;
    .restart local v13       #totalAmount:I
    .restart local v14       #totalCount:I
    :cond_10
    if-eqz v14, :cond_7

    .line 245
    new-instance v7, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;

    invoke-direct {v7}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;-><init>()V

    .line 246
    .local v7, data:Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
    invoke-virtual {v11}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getMonth()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->setMonth(Ljava/lang/String;)V

    .line 247
    int-to-double v0, v13

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->setAmount(D)V

    .line 248
    invoke-virtual {v7, v14}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->setCount(I)V

    .line 249
    invoke-virtual {v7, v3}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->setCardHolderList(Ljava/util/List;)V

    .line 250
    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    int-to-double v0, v13

    move-wide/from16 v18, v0

    add-double v15, v15, v18

    .line 252
    add-int v17, v17, v14

    .line 253
    goto/16 :goto_6

    .line 255
    .end local v3           #cardHolderList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;>;"
    .end local v7           #data:Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #monthBillData:Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
    .end local v13           #totalAmount:I
    .end local v14           #totalCount:I
    :cond_11
    move-wide v0, v15

    invoke-virtual {v5, v0, v1}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->setAmount(D)V

    .line 256
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->setCount(I)V

    .line 257
    invoke-virtual {v5, v12}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->setMonthBillList(Ljava/util/List;)V

    .line 258
    if-lez v17, :cond_5

    .line 259
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 261
    .end local v4           #chartData:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    .end local v5           #chartYearInfo:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    .end local v12           #monthBillList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;>;"
    .end local v15           #yearTotalAmount:D
    .end local v17           #yearTotalCount:I
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->calcAmountByCategory(Ljava/util/List;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mChartSumList:Ljava/util/List;

    .line 96
    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mChartYearList:Ljava/util/List;

    .line 97
    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mNameList:Ljava/util/ArrayList;

    .line 98
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mCategoryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 99
    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mCategoryMap:Ljava/util/Map;

    .line 100
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mAmountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 101
    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mAmountMap:Ljava/util/Map;

    .line 102
    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mFragment:Landroid/support/v4/app/Fragment;

    .line 103
    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mContentView:Landroid/view/View;

    .line 104
    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mTvUserName:Landroid/widget/TextView;

    .line 105
    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mListView:Landroid/widget/ListView;

    .line 106
    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mConsumptionCategoryAdapter:Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;

    .line 107
    return-void
.end method

.method public displayCustomCategoryData(Ljava/lang/String;II)V
    .locals 3
    .parameter "userName"
    .parameter "year"
    .parameter "month"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mUserName:Ljava/lang/String;

    .line 174
    iput p2, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mYear:I

    .line 175
    iput p3, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mMonth:I

    .line 176
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mUserName:Ljava/lang/String;

    iget v1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mYear:I

    iget v2, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mMonth:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->displayConsumeCategory(Ljava/lang/String;II)V

    .line 177
    return-void
.end method

.method public init(Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, chartSumList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;>;"
    .local p2, chartYearList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;>;"
    .local p3, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, categoryList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Category;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mChartSumList:Ljava/util/List;

    .line 75
    iput-object p2, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mChartYearList:Ljava/util/List;

    .line 76
    iput-object p3, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mNameList:Ljava/util/ArrayList;

    .line 77
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mNameList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 80
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mContentView:Landroid/view/View;

    const v3, 0x7f090195

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :goto_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mContentView:Landroid/view/View;

    const v3, 0x7f090198

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/Category;

    .line 86
    .local v0, data:Lcom/zhangdan/app/data/model/http/Category;
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mCategoryMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/Category;->getCategoryId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 82
    .end local v0           #data:Lcom/zhangdan/app/data/model/http/Category;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mContentView:Landroid/view/View;

    const v3, 0x7f090197

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 89
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mUserName:Ljava/lang/String;

    iget v3, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mYear:I

    iget v4, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mMonth:I

    invoke-direct {p0, v2, v3, v4}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->displayConsumeCategory(Ljava/lang/String;II)V

    .line 91
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 111
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;

    .line 112
    .local v2, data:Lcom/zhangdan/app/activities/chart/model/CategoryInfo;
    if-nez v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v4, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 116
    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->getId()I

    move-result v1

    .line 117
    .local v1, categoryId:I
    iget-object v4, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 118
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "category_id"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v4, "username"

    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mUserName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v4, "year"

    iget v5, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mYear:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v4, "month"

    iget v5, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mMonth:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const-class v4, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 124
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
