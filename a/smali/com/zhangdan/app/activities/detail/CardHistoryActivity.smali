.class public Lcom/zhangdan/app/activities/detail/CardHistoryActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "CardHistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final KEY_USER_BANK_INFO:Ljava/lang/String; = "key_user_bank"


# instance fields
.field private lastClick:I

.field private mBillInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BillInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCardHistoryExpandListAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;

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

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHisListView:Landroid/widget/ExpandableListView;

.field private mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHashMap:Ljava/util/HashMap;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->lastClick:I

    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->getAndSetSlot(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->lastClick:I

    return v0
.end method

.method static synthetic access$102(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->lastClick:I

    return p1
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHisListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method private getAndSetSlot(I)V
    .locals 11
    .parameter "groupPosition"

    .prologue
    .line 109
    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 110
    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mCardHistoryExpandListAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;

    invoke-virtual {v8}, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->notifyDataSetChanged()V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mBillInfoList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge p1, v8, :cond_0

    .line 115
    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mBillInfoList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/data/model/BillInfo;

    .line 116
    .local v3, info:Lcom/zhangdan/app/data/model/BillInfo;
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/BillInfo;->getBillId()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/zhangdan/app/data/db/util/ShoppingSheetDbUtil;->getSlotCardRecord(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v5

    .line 117
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_5

    .line 118
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;

    .line 119
    .local v7, record:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;
    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getCategoryId()I

    move-result v2

    .line 120
    .local v2, id:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mCategoryList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 121
    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mCategoryList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/Category;

    .line 122
    .local v0, category:Lcom/zhangdan/app/data/model/http/Category;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/Category;->getCategoryId()I

    move-result v8

    if-ne v2, v8, :cond_3

    .line 123
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/Category;->getCategotyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setCategoryName(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/Category;->getParntId()I

    move-result v6

    .line 125
    .local v6, parentId:I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_2

    .line 126
    move v6, v2

    .line 128
    :cond_2
    invoke-virtual {v7, v6}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setParentId(I)V

    .line 120
    .end local v6           #parentId:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 117
    .end local v0           #category:Lcom/zhangdan/app/data/model/http/Category;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    .end local v2           #id:I
    .end local v4           #j:I
    .end local v7           #record:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;
    :cond_5
    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mCardHistoryExpandListAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;

    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->setChildData(Ljava/util/HashMap;)V

    .line 134
    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mCardHistoryExpandListAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;

    invoke-virtual {v8}, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private initialView()V
    .locals 4

    .prologue
    .line 76
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070144

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/CommTitleMgr;->displayBlueTitle(Landroid/view/View;I)V

    .line 77
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v0, 0x7f0900ac

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHisListView:Landroid/widget/ExpandableListView;

    .line 80
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->intitailHeadView()V

    .line 81
    new-instance v0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mBillInfoList:Ljava/util/List;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHashMap:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, v3}, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mCardHistoryExpandListAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;

    .line 82
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHisListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mCardHistoryExpandListAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 83
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHisListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;-><init>(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 106
    return-void
.end method

.method private intitailHeadView()V
    .locals 14

    .prologue
    .line 138
    const/4 v3, 0x0

    .line 139
    .local v3, info:Lcom/zhangdan/app/data/model/BillInfo;
    iget-object v12, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mBillInfoList:Ljava/util/List;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mBillInfoList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_0

    .line 140
    iget-object v12, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mBillInfoList:Ljava/util/List;

    iget-object v13, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mBillInfoList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #info:Lcom/zhangdan/app/data/model/BillInfo;
    check-cast v3, Lcom/zhangdan/app/data/model/BillInfo;

    .line 142
    .restart local v3       #info:Lcom/zhangdan/app/data/model/BillInfo;
    :cond_0
    const-string v12, "layout_inflater"

    invoke-virtual {p0, v12}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 143
    .local v2, inflate:Landroid/view/LayoutInflater;
    const v12, 0x7f030084

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 144
    .local v6, layout:Landroid/widget/RelativeLayout;
    const v12, 0x7f0901cb

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 145
    .local v7, logo:Landroid/widget/ImageView;
    iget-object v12, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->getIconResId()I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    const v12, 0x7f0901cc

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 147
    .local v10, textBank:Landroid/widget/TextView;
    iget-object v12, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const v12, 0x7f0901cd

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 149
    .local v11, textUser:Landroid/widget/TextView;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v13}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v13}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v12, 0x7f0901ce

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    .local v0, expre:Landroid/widget/TextView;
    const v12, 0x7f0201a4

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 152
    const v12, 0x7f0901cf

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 153
    .local v1, his:Landroid/widget/TextView;
    const-string v12, "\u5386\u53f2\u8bb0\u5f55"

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const v12, 0x7f020191

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 155
    const v12, 0x7f0901d0

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 156
    .local v4, label1:Landroid/widget/TextView;
    const-string v12, "\u5386\u53f2\u8d26\u5355\uff1a"

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const v12, 0x7f0901d2

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 158
    .local v5, label2:Landroid/widget/TextView;
    const-string v12, "\u8d26\u5355\u6765\u6e90\uff1a"

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const v12, 0x7f0901d1

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 160
    .local v8, text1:Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mBillInfoList:Ljava/util/List;

    if-nez v12, :cond_1

    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\u5c01"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const v12, 0x7f0901d3

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 162
    .local v9, text2:Landroid/widget/TextView;
    if-nez v3, :cond_2

    const-string v12, ""

    :goto_1
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v12, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHisListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v12, v6}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 164
    return-void

    .line 160
    .end local v9           #text2:Landroid/widget/TextView;
    :cond_1
    iget-object v12, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mBillInfoList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    goto :goto_0

    .line 162
    .restart local v9       #text2:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/BillInfo;->getMailSender()Ljava/lang/String;

    move-result-object v12

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 181
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 183
    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->finish()V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x7f090039
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 52
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    const-string v1, "key_user_bank"

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/ZhangdanApplication;->getCacheObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/UserBankInfo;

    iput-object v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 53
    const-string v1, "key_user_bank"

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/ZhangdanApplication;->removeCacheObject(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 55
    const-string v1, "user_bank"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/UserBankInfo;

    iput-object v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    if-nez v1, :cond_1

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/zhangdan/app/data/db/util/BillDbUtil;->queryBillInfoByUbId(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mBillInfoList:Ljava/util/List;

    .line 61
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/data/db/util/ConsumeCategoryDbUtil;->getCategory(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mCategoryList:Ljava/util/List;

    .line 62
    const v1, 0x7f03002b

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->setContentView(I)V

    .line 63
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->initialView()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 191
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mBillInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 192
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 193
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onPause()V

    .line 176
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onResume()V

    .line 171
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 70
    iget v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->lastClick:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHisListView:Landroid/widget/ExpandableListView;

    iget v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->lastClick:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 72
    :cond_0
    const-string v0, "user_bank"

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 73
    return-void
.end method
