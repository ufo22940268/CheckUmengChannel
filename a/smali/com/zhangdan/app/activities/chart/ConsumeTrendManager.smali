.class public Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;
.super Ljava/lang/Object;
.source "ConsumeTrendManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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

.field private mChartYearComparator:Lcom/zhangdan/app/activities/chart/util/ChartYearComparator;

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

.field private mConsumptionTrendAdapter:Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;

.field private mContentView:Landroid/view/View;

.field private mCurrUserName:Ljava/lang/String;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mListView:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;

.field private mMonthBillComparator:Lcom/zhangdan/app/activities/chart/util/MonthBillComparator;

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

.field private mTvChartTotalAmount:Landroid/widget/TextView;

.field private mTvChartTotalCard:Landroid/widget/TextView;

.field private mTvChartTotalSlotCardCount:Landroid/widget/TextView;

.field private mTvUserName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "view"
    .parameter "fragment"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/zhangdan/app/activities/chart/util/ChartYearComparator;

    invoke-direct {v0}, Lcom/zhangdan/app/activities/chart/util/ChartYearComparator;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mChartYearComparator:Lcom/zhangdan/app/activities/chart/util/ChartYearComparator;

    .line 55
    new-instance v0, Lcom/zhangdan/app/activities/chart/util/MonthBillComparator;

    invoke-direct {v0}, Lcom/zhangdan/app/activities/chart/util/MonthBillComparator;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mMonthBillComparator:Lcom/zhangdan/app/activities/chart/util/MonthBillComparator;

    .line 131
    new-instance v0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager$1;-><init>(Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 145
    new-instance v0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager$2;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager$2;-><init>(Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mOnCardNameSelectedListener:Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;

    .line 60
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mContentView:Landroid/view/View;

    .line 61
    iput-object p2, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mFragment:Landroid/support/v4/app/Fragment;

    .line 62
    const v0, 0x7f090196

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mTvUserName:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f09019b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mTvChartTotalCard:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f09019c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mTvChartTotalAmount:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f09019d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mTvChartTotalSlotCardCount:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f09019a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mListView:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;)Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mOnCardNameSelectedListener:Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mCurrUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->displayConsumptionTrendByName(Ljava/lang/String;)V

    return-void
.end method

.method private displayConsumptionTrendByName(Ljava/lang/String;)V
    .locals 23
    .parameter "userName"

    .prologue
    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mChartSumList:Ljava/util/List;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mChartYearList:Ljava/util/List;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mNameList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mFragment:Landroid/support/v4/app/Fragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 163
    if-nez p1, :cond_3

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mTvUserName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mNameList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mNameList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mChartYearList:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->sortChartYearInfoAndDisplay(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mFragment:Landroid/support/v4/app/Fragment;

    move-object/from16 v19, v0

    const v21, 0x7f0701a2

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    .line 167
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mTvUserName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v7, chartYearList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mChartYearList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;

    .line 171
    .local v5, chartData:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    new-instance v6, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;

    invoke-direct {v6}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;-><init>()V

    .line 172
    .local v6, chartYearInfo:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    invoke-virtual {v5}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->getYear()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->setYear(I)V

    .line 173
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v13, monthBillList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;>;"
    const-wide/16 v16, 0x0

    .line 175
    .local v16, yearTotalAmount:D
    const/16 v18, 0x0

    .line 176
    .local v18, yearTotalCount:I
    invoke-virtual {v5}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->getMonthBillList()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_9

    .line 177
    invoke-virtual {v5}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->getMonthBillList()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;

    .line 178
    .local v12, monthBillData:Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v4, cardHolderList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;>;"
    invoke-virtual {v12}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getCardHolderList()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_7

    .line 180
    invoke-virtual {v12}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getCardHolderList()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;

    .line 181
    .local v3, cardHolder:Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;
    invoke-virtual {v3}, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 182
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 186
    .end local v3           #cardHolder:Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_7
    const/4 v14, 0x0

    .line 187
    .local v14, totalAmount:I
    const/4 v15, 0x0

    .line 188
    .local v15, totalCount:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;

    .line 189
    .restart local v3       #cardHolder:Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;
    int-to-double v0, v14

    move-wide/from16 v19, v0

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->getAmount()D

    move-result-wide v21

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v14, v0

    .line 190
    invoke-virtual {v3}, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->getCount()I

    move-result v19

    add-int v15, v15, v19

    .line 191
    goto :goto_5

    .line 192
    .end local v3           #cardHolder:Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;
    :cond_8
    if-eqz v15, :cond_5

    .line 194
    new-instance v8, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;

    invoke-direct {v8}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;-><init>()V

    .line 195
    .local v8, data:Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
    invoke-virtual {v12}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getMonth()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->setMonth(Ljava/lang/String;)V

    .line 196
    int-to-double v0, v14

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v8, v0, v1}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->setAmount(D)V

    .line 197
    invoke-virtual {v8, v15}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->setCount(I)V

    .line 198
    invoke-virtual {v8, v4}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->setCardHolderList(Ljava/util/List;)V

    .line 199
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    int-to-double v0, v14

    move-wide/from16 v19, v0

    add-double v16, v16, v19

    .line 201
    add-int v18, v18, v15

    .line 202
    goto/16 :goto_3

    .line 204
    .end local v4           #cardHolderList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;>;"
    .end local v8           #data:Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #monthBillData:Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
    .end local v14           #totalAmount:I
    .end local v15           #totalCount:I
    :cond_9
    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->setAmount(D)V

    .line 205
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->setCount(I)V

    .line 206
    invoke-virtual {v6, v13}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->setMonthBillList(Ljava/util/List;)V

    .line 207
    if-lez v18, :cond_4

    .line 208
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 210
    .end local v5           #chartData:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    .end local v6           #chartYearInfo:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    .end local v13           #monthBillList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;>;"
    .end local v16           #yearTotalAmount:D
    .end local v18           #yearTotalCount:I
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->sortChartYearInfoAndDisplay(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private sortChartYearInfoAndDisplay(Ljava/util/List;Ljava/lang/String;)V
    .locals 15
    .parameter
    .parameter "userName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, chartYearList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;>;"
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v9, "#0.00"

    invoke-direct {v4, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 221
    .local v4, mFormat:Ljava/text/DecimalFormat;
    const-wide/16 v6, 0x0

    .line 222
    .local v6, totalAmount:D
    const/4 v8, 0x0

    .line 223
    .local v8, totalCount:I
    iget-object v9, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mChartYearComparator:Lcom/zhangdan/app/activities/chart/util/ChartYearComparator;

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 224
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;

    .line 225
    .local v2, data:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->getMonthBillList()Ljava/util/List;

    move-result-object v5

    .line 226
    .local v5, monthList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;>;"
    if-eqz v5, :cond_0

    .line 227
    iget-object v9, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mMonthBillComparator:Lcom/zhangdan/app/activities/chart/util/MonthBillComparator;

    invoke-static {v5, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 229
    :cond_0
    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->getAmount()D

    move-result-wide v9

    add-double/2addr v6, v9

    .line 230
    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->getCount()I

    move-result v9

    add-int/2addr v8, v9

    .line 231
    goto :goto_0

    .line 233
    .end local v2           #data:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    .end local v5           #monthList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;>;"
    :cond_1
    iget-object v9, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mTvChartTotalAmount:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mFragment:Landroid/support/v4/app/Fragment;

    const v11, 0x7f070197

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v9, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mTvChartTotalSlotCardCount:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mFragment:Landroid/support/v4/app/Fragment;

    const v11, 0x7f07019b

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v9, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lcom/zhangdan/app/data/db/util/UserBankDbUtil;->queryCardCountByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 237
    .local v1, cardCount:I
    iget-object v9, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mTvChartTotalCard:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mFragment:Landroid/support/v4/app/Fragment;

    const v11, 0x7f07019c

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v9, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mConsumptionTrendAdapter:Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;

    if-nez v9, :cond_2

    .line 240
    new-instance v9, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;

    iget-object v10, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v10}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-direct {v9, v10, v0}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v9, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mConsumptionTrendAdapter:Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;

    .line 241
    iget-object v9, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mListView:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;

    iget-object v10, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mConsumptionTrendAdapter:Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;

    invoke-virtual {v9, v10}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    :goto_1
    return-void

    .line 243
    :cond_2
    iget-object v9, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mConsumptionTrendAdapter:Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->changeDataSource(Ljava/util/List;)V

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mChartSumList:Ljava/util/List;

    .line 88
    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mChartYearList:Ljava/util/List;

    .line 89
    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mNameList:Ljava/util/ArrayList;

    .line 90
    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mCategoryList:Ljava/util/List;

    .line 91
    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mFragment:Landroid/support/v4/app/Fragment;

    .line 92
    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mContentView:Landroid/view/View;

    .line 93
    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mTvUserName:Landroid/widget/TextView;

    .line 94
    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mTvChartTotalCard:Landroid/widget/TextView;

    .line 95
    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mTvChartTotalAmount:Landroid/widget/TextView;

    .line 96
    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mTvChartTotalSlotCardCount:Landroid/widget/TextView;

    .line 97
    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mListView:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;

    .line 98
    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mConsumptionTrendAdapter:Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;

    .line 99
    return-void
.end method

.method public init(Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 3
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
    .local p1, chartSumList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;>;"
    .local p2, chartYearList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;>;"
    .local p3, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, categoryList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Category;>;"
    const/4 v2, 0x0

    .line 70
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mChartSumList:Ljava/util/List;

    .line 71
    iput-object p2, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mChartYearList:Ljava/util/List;

    .line 72
    iput-object p3, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mNameList:Ljava/util/ArrayList;

    .line 73
    iput-object p4, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mCategoryList:Ljava/util/List;

    .line 75
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mNameList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mContentView:Landroid/view/View;

    const v1, 0x7f090194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :goto_0
    iput-object v2, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mCurrUserName:Ljava/lang/String;

    .line 81
    invoke-direct {p0, v2}, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->displayConsumptionTrendByName(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mListView:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mContentView:Landroid/view/View;

    const v1, 0x7f09019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "rawPosition"
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
    const/4 v6, -0x1

    .line 104
    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mConsumptionTrendAdapter:Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;

    if-nez v5, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mConsumptionTrendAdapter:Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;

    invoke-virtual {v5, p3}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->isSectionHeader(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 108
    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mConsumptionTrendAdapter:Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;

    invoke-virtual {v5, p3}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->getSectionForPosition(I)I

    move-result v4

    .line 109
    .local v4, section:I
    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mConsumptionTrendAdapter:Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;

    invoke-virtual {v5, p3}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->getPositionInSectionForPosition(I)I

    move-result v3

    .line 110
    .local v3, position:I
    if-eq v4, v6, :cond_0

    if-eq v3, v6, :cond_0

    .line 111
    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mConsumptionTrendAdapter:Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;

    invoke-virtual {v5, v4, v3}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;

    .line 112
    .local v2, monthBillInfo:Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mConsumptionTrendAdapter:Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;

    invoke-virtual {v5, v4}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->getSectionItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;

    .line 113
    .local v0, chartYearInfo:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 115
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "user_name"

    iget-object v6, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mCurrUserName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v5, "year"

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->getYear()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const-string v5, "month"

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getMonthDay()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/zhangdan/app/activities/chart/ConsumeCategoryActvity;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 122
    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mChartSumList:Ljava/util/List;

    sput-object v5, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mChartSumList:Ljava/util/List;

    .line 123
    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mChartYearList:Ljava/util/List;

    sput-object v5, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mChartYearList:Ljava/util/List;

    .line 124
    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mNameList:Ljava/util/ArrayList;

    sput-object v5, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mNameList:Ljava/util/ArrayList;

    .line 125
    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mCategoryList:Ljava/util/List;

    sput-object v5, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mCategoryList:Ljava/util/List;

    .line 127
    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
