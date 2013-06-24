.class public Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailCardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;
    }
.end annotation


# static fields
.field private static final ITEM_TYPE_AUTO_COMM:I = 0x0

.field private static final ITEM_TYPE_AUTO_LACK_BILL:I = 0x2

.field private static final ITEM_TYPE_AUTO_NOT_NEED_PAY:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDecimalFormat:Ljava/text/DecimalFormat;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnBillStateClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 271
    new-instance v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$1;-><init>(Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mOnBillStateClickListener:Landroid/view/View$OnClickListener;

    .line 49
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mList:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private newAutoCommBillView(I)Landroid/view/View;
    .locals 8
    .parameter "itemType"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 224
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 225
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 226
    .local v2, view:Landroid/view/View;
    if-nez p1, :cond_5

    .line 227
    const v3, 0x7f0300b9

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 233
    :cond_0
    :goto_0
    new-instance v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;-><init>(Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;)V

    .line 234
    .local v0, holder:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;
    const v3, 0x7f09028c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->layoutContent:Landroid/view/View;

    .line 235
    const v3, 0x7f09028d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->imgRedDot:Landroid/widget/ImageView;

    .line 236
    const v3, 0x7f0901b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->imgBankIcon:Landroid/widget/ImageView;

    .line 237
    const v3, 0x7f0901b2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvBankName:Landroid/widget/TextView;

    .line 238
    const v3, 0x7f090290

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvNameAndCardNo:Landroid/widget/TextView;

    .line 239
    const v3, 0x7f090291

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvBillCycle:Landroid/widget/TextView;

    .line 241
    const v3, 0x7f09029a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvFreeInterestDays:Landroid/widget/TextView;

    .line 242
    const v3, 0x7f09029c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvCreditLimit:Landroid/widget/TextView;

    .line 243
    if-eqz p1, :cond_1

    if-ne p1, v6, :cond_2

    .line 244
    :cond_1
    const v3, 0x7f09029e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvReturnState:Landroid/widget/TextView;

    .line 245
    const v3, 0x7f0902a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvCurrConsumption:Landroid/widget/TextView;

    .line 246
    const v3, 0x7f0902a4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvCurrDebt:Landroid/widget/TextView;

    .line 247
    const v3, 0x7f0902a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->imgForeignCurrency:Landroid/widget/ImageView;

    .line 249
    :cond_2
    if-nez p1, :cond_3

    .line 250
    const v3, 0x7f0902a0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvLastRepayDay:Landroid/widget/TextView;

    .line 251
    const v3, 0x7f0902a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvMinPayment:Landroid/widget/TextView;

    .line 253
    const v3, 0x7f090296

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvPayDueDays:Landroid/widget/TextView;

    .line 254
    const v3, 0x7f090294

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvPayDueType:Landroid/widget/TextView;

    .line 255
    const v3, 0x7f090295

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvDaysLabel:Landroid/widget/TextView;

    .line 256
    const v3, 0x7f090297

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvBillState:Landroid/widget/TextView;

    .line 257
    const v3, 0x7f090293

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->layoutPayDueDays:Landroid/widget/LinearLayout;

    .line 259
    :cond_3
    if-ne p1, v7, :cond_4

    .line 260
    const v3, 0x7f0902a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvLastDebt:Landroid/widget/TextView;

    .line 262
    :cond_4
    const v3, 0x7f0902a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->imgBillState:Landroid/widget/ImageView;

    .line 263
    iget-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->imgBillState:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mOnBillStateClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    const v3, 0x7f0902a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->imgDemo:Landroid/widget/ImageView;

    .line 267
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 268
    return-object v2

    .line 228
    .end local v0           #holder:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;
    :cond_5
    if-ne p1, v6, :cond_6

    .line 229
    const v3, 0x7f0300bb

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_0

    .line 230
    :cond_6
    if-ne p1, v7, :cond_0

    .line 231
    const v3, 0x7f0300ba

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 89
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 61
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 62
    .local v0, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v3

    if-nez v3, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v3

    if-eq v3, v2, :cond_2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v3

    if-eq v3, v1, :cond_2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 66
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 68
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 94
    move-object/from16 v11, p2

    .line 95
    .local v11, view:Landroid/view/View;
    invoke-virtual/range {p0 .. p1}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->getItemViewType(I)I

    move-result v5

    .line 96
    .local v5, itemType:I
    if-nez v11, :cond_1

    .line 97
    if-nez v5, :cond_5

    .line 98
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->newAutoCommBillView(I)Landroid/view/View;

    move-result-object v11

    .line 104
    :cond_0
    :goto_0
    const v12, 0x7f09028c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 107
    .local v3, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;

    .line 108
    .local v4, holder:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->imgBankIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getIconResId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 109
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->layoutContent:Landroid/view/View;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    iget-object v13, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->imgRedDot:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->isNewWarn()Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvBankName:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, name:Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, cardNo:Ljava/lang/String;
    :goto_3
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvNameAndCardNo:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillCycle()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_a

    .line 116
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvBillCycle:Landroid/widget/TextView;

    const v13, 0x7f070075

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 119
    :goto_4
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvFreeInterestDays:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070074

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getMaxFreeInterestDays()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v13, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvCreditLimit:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getFormatCreditLimit()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    const-string v12, "---"

    :goto_5
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->imgBillState:Landroid/widget/ImageView;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 123
    if-nez v5, :cond_15

    .line 124
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    .line 125
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvReturnState:Landroid/widget/TextView;

    const v13, 0x7f070064

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->imgBillState:Landroid/widget/ImageView;

    const v13, 0x7f020306

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 134
    :cond_2
    :goto_6
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 135
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvCurrConsumption:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\uffe5"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewCharges()F

    move-result v15

    float-to-double v15, v15

    invoke-virtual/range {v14 .. v16}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :goto_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\uffe5"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v14

    float-to-double v14, v14

    invoke-virtual {v13, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 141
    .local v10, str:Ljava/lang/String;
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 142
    .local v9, spanStr:Landroid/text/SpannableString;
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v12, 0x12

    const/4 v13, 0x1

    invoke-direct {v8, v12, v13}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 143
    .local v8, sizeSpan:Landroid/text/style/AbsoluteSizeSpan;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v9, v8, v12, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 144
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvCurrDebt:Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v13, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->imgForeignCurrency:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->isHasForeignCurrency()Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 148
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvMinPayment:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070071

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    move-object/from16 v17, v0

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getMinPayment()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_9
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvLastRepayDay:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_3

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_11

    .line 155
    :cond_3
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvPayDueDays:Landroid/widget/TextView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvPayDueType:Landroid/widget/TextView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvDaysLabel:Landroid/widget/TextView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvBillState:Landroid/widget/TextView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    .end local v8           #sizeSpan:Landroid/text/style/AbsoluteSizeSpan;
    .end local v9           #spanStr:Landroid/text/SpannableString;
    .end local v10           #str:Ljava/lang/String;
    :cond_4
    :goto_a
    iget-object v13, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->imgDemo:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v12, v14, v16

    if-nez v12, :cond_1a

    const/4 v12, 0x0

    :goto_b
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    return-object v11

    .line 99
    .end local v2           #cardNo:Ljava/lang/String;
    .end local v3           #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    .end local v4           #holder:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;
    .end local v7           #name:Ljava/lang/String;
    :cond_5
    const/4 v12, 0x1

    if-ne v5, v12, :cond_6

    .line 100
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->newAutoCommBillView(I)Landroid/view/View;

    move-result-object v11

    goto/16 :goto_0

    .line 101
    :cond_6
    const/4 v12, 0x2

    if-ne v5, v12, :cond_0

    .line 102
    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->newAutoCommBillView(I)Landroid/view/View;

    move-result-object v11

    goto/16 :goto_0

    .line 110
    .restart local v3       #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    .restart local v4       #holder:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;
    :cond_7
    const/4 v12, 0x4

    goto/16 :goto_1

    .line 112
    :cond_8
    const-string v7, "---"

    goto/16 :goto_2

    .line 113
    .restart local v7       #name:Ljava/lang/String;
    :cond_9
    const-string v2, "---"

    goto/16 :goto_3

    .line 118
    .restart local v2       #cardNo:Ljava/lang/String;
    :cond_a
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvBillCycle:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillCycle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 120
    :cond_b
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getFormatCreditLimit()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    .line 127
    :cond_c
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_d

    .line 128
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvReturnState:Landroid/widget/TextView;

    const v13, 0x7f070062

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->imgBillState:Landroid/widget/ImageView;

    const v13, 0x7f020302

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 130
    :cond_d
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_2

    .line 131
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvReturnState:Landroid/widget/TextView;

    const v13, 0x7f070065

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->imgBillState:Landroid/widget/ImageView;

    const v13, 0x7f020305

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 137
    :cond_e
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvCurrConsumption:Landroid/widget/TextView;

    const-string v13, "---"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 146
    .restart local v8       #sizeSpan:Landroid/text/style/AbsoluteSizeSpan;
    .restart local v9       #spanStr:Landroid/text/SpannableString;
    .restart local v10       #str:Ljava/lang/String;
    :cond_f
    const/4 v12, 0x4

    goto/16 :goto_8

    .line 150
    :cond_10
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvMinPayment:Landroid/widget/TextView;

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 160
    :cond_11
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvPayDueDays:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvPayDueType:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvDaysLabel:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLeaveDays()I

    move-result v6

    .line 164
    .local v6, leaveDays:I
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvPayDueDays:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->layoutPayDueDays:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvPayDueDays:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvBillState:Landroid/widget/TextView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    if-gez v6, :cond_13

    .line 171
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_12

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getReturnAmount()F

    move-result v12

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getMinPayment()F

    move-result v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_12

    .line 172
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->layoutPayDueDays:Landroid/widget/LinearLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvPayDueDays:Landroid/widget/TextView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvBillState:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 176
    :cond_12
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvDaysLabel:Landroid/widget/TextView;

    const v13, 0x7f070068

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvDaysLabel:Landroid/widget/TextView;

    const v13, 0x7f02031f

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_a

    .line 179
    :cond_13
    const/4 v12, 0x7

    if-ge v6, v12, :cond_14

    .line 180
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvDaysLabel:Landroid/widget/TextView;

    const v13, 0x7f070067

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvDaysLabel:Landroid/widget/TextView;

    const v13, 0x7f020320

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_a

    .line 183
    :cond_14
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvDaysLabel:Landroid/widget/TextView;

    const v13, 0x7f070067

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 184
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvDaysLabel:Landroid/widget/TextView;

    const v13, 0x7f02031d

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_a

    .line 188
    .end local v6           #leaveDays:I
    .end local v8           #sizeSpan:Landroid/text/style/AbsoluteSizeSpan;
    .end local v9           #spanStr:Landroid/text/SpannableString;
    .end local v10           #str:Ljava/lang/String;
    :cond_15
    const/4 v12, 0x1

    if-ne v5, v12, :cond_18

    .line 190
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvReturnState:Landroid/widget/TextView;

    const v13, 0x7f070063

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 191
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v12

    if-eqz v12, :cond_16

    .line 192
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvCurrConsumption:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\uffe5"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewCharges()F

    move-result v15

    float-to-double v15, v15

    invoke-virtual/range {v14 .. v16}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\uffe5"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v14

    float-to-double v14, v14

    invoke-virtual {v13, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 198
    .restart local v10       #str:Ljava/lang/String;
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 199
    .restart local v9       #spanStr:Landroid/text/SpannableString;
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v12, 0x12

    const/4 v13, 0x1

    invoke-direct {v8, v12, v13}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 200
    .restart local v8       #sizeSpan:Landroid/text/style/AbsoluteSizeSpan;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v9, v8, v12, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 201
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvCurrDebt:Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v13, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->imgForeignCurrency:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->isHasForeignCurrency()Z

    move-result v12

    if-eqz v12, :cond_17

    const/4 v12, 0x0

    :goto_d
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    .line 194
    .end local v8           #sizeSpan:Landroid/text/style/AbsoluteSizeSpan;
    .end local v9           #spanStr:Landroid/text/SpannableString;
    .end local v10           #str:Ljava/lang/String;
    :cond_16
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvCurrConsumption:Landroid/widget/TextView;

    const-string v13, "---"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 203
    .restart local v8       #sizeSpan:Landroid/text/style/AbsoluteSizeSpan;
    .restart local v9       #spanStr:Landroid/text/SpannableString;
    .restart local v10       #str:Ljava/lang/String;
    :cond_17
    const/4 v12, 0x4

    goto :goto_d

    .line 205
    .end local v8           #sizeSpan:Landroid/text/style/AbsoluteSizeSpan;
    .end local v9           #spanStr:Landroid/text/SpannableString;
    .end local v10           #str:Ljava/lang/String;
    :cond_18
    const/4 v12, 0x2

    if-ne v5, v12, :cond_4

    .line 207
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v12

    if-eqz v12, :cond_19

    .line 208
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvLastDebt:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\uffe5"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v15

    float-to-double v15, v15

    invoke-virtual/range {v14 .. v16}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 210
    :cond_19
    iget-object v12, v4, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->tvLastDebt:Landroid/widget/TextView;

    const-string v13, "---"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 213
    :cond_1a
    const/16 v12, 0x8

    goto/16 :goto_b
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x3

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 335
    .local v3, position:I
    iget-object v6, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 336
    .local v1, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 337
    iget-object v6, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f070109

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 354
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->isNewWarn()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 342
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/UserBankInfo;->setNewWarn(Z)V

    .line 343
    const v6, 0x7f09028d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 344
    .local v4, redDot:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 345
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :cond_1
    iget-object v6, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v6}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v5

    .line 347
    .local v5, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    iget-object v6, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/zhangdan/app/data/db/util/SysMasterDbUtil;->removeNewWarnKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .end local v4           #redDot:Landroid/view/View;
    .end local v5           #userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 350
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;

    const-class v7, Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 351
    iget-object v6, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 352
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    const-string v6, "key_user_bank"

    invoke-virtual {v0, v6, v1}, Lcom/zhangdan/app/ZhangdanApplication;->addCacheObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    iget-object v6, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->mList:Ljava/util/List;

    .line 56
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->notifyDataSetChanged()V

    .line 57
    return-void
.end method
