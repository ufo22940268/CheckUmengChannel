.class public Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "CardHistoryExpandListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ViewGroupHolder;,
        Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;
    }
.end annotation


# static fields
.field public static final ITEM_ACCOUNT_INFO:I = 0x0

.field public static final ITEM_COAST_DETAIL:I = 0x1

.field public static final ITEM_FOOT:I = 0x2


# instance fields
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

.field private mFormat:Ljava/text/DecimalFormat;

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

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BillInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BillInfo;>;"
    .local p3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mFormat:Ljava/text/DecimalFormat;

    .line 38
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 39
    iput-object p2, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mBillInfoList:Ljava/util/List;

    .line 40
    iput-object p3, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mHashMap:Ljava/util/HashMap;

    .line 41
    return-void
.end method

.method private getCurrentBillMonth(Lcom/zhangdan/app/data/model/BillInfo;)Ljava/lang/String;
    .locals 8
    .parameter "info"

    .prologue
    const/4 v7, 0x1

    .line 215
    const-string v3, ""

    .line 216
    .local v3, month:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillInfo;->getBillStartDate()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, billStartDateStr:Ljava/lang/String;
    const/4 v1, 0x0

    .line 218
    .local v1, billDateStr:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillInfo;->getBillDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 219
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillInfo;->getBillDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zhangdan/app/util/BillDateUtils;->getBillDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    :cond_0
    invoke-virtual {p1, v1}, Lcom/zhangdan/app/data/model/BillInfo;->setBillDate(Ljava/lang/String;)V

    .line 221
    if-eqz v2, :cond_1

    const-string v5, "1900"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    invoke-static {v1}, Lcom/zhangdan/app/util/BillDateUtils;->calcBillStartDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    :cond_1
    invoke-virtual {p1, v2}, Lcom/zhangdan/app/data/model/BillInfo;->setBillStartDate(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillInfo;->getBillDate()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, start:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 226
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, array:[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    aget-object v5, v0, v7

    if-eqz v5, :cond_2

    .line 228
    aget-object v3, v0, v7

    .line 229
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 230
    const-string v5, "0"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .end local v0           #array:[Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private getCurrentBillYear(Lcom/zhangdan/app/data/model/BillInfo;)Ljava/lang/String;
    .locals 8
    .parameter "info"

    .prologue
    const/4 v7, 0x0

    .line 239
    const-string v4, ""

    .line 240
    .local v4, year:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillInfo;->getBillStartDate()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, billStartDateStr:Ljava/lang/String;
    const/4 v1, 0x0

    .line 242
    .local v1, billDateStr:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillInfo;->getBillDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 243
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillInfo;->getBillDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zhangdan/app/util/BillDateUtils;->getBillDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    :cond_0
    invoke-virtual {p1, v1}, Lcom/zhangdan/app/data/model/BillInfo;->setBillDate(Ljava/lang/String;)V

    .line 245
    if-eqz v2, :cond_1

    const-string v5, "1900"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 246
    invoke-static {v1}, Lcom/zhangdan/app/util/BillDateUtils;->calcBillStartDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    :cond_1
    invoke-virtual {p1, v2}, Lcom/zhangdan/app/data/model/BillInfo;->setBillStartDate(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillInfo;->getBillDate()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, start:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 250
    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, array:[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    aget-object v5, v0, v7

    if-eqz v5, :cond_2

    .line 252
    aget-object v4, v0, v7

    .line 253
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 254
    const-string v5, "0"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 258
    .end local v0           #array:[Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method private getInterval(Lcom/zhangdan/app/data/model/BillInfo;)Ljava/lang/String;
    .locals 4
    .parameter "info"

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillInfo;->getBillStartDate()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, billStartDateStr:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillInfo;->getBillDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/util/BillDateUtils;->getBillDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, billDateStr:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/zhangdan/app/data/model/BillInfo;->setBillDate(Ljava/lang/String;)V

    .line 120
    if-eqz v1, :cond_0

    const-string v2, "1900"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    invoke-static {v0}, Lcom/zhangdan/app/util/BillDateUtils;->calcBillStartDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    :cond_0
    invoke-virtual {p1, v1}, Lcom/zhangdan/app/data/model/BillInfo;->setBillStartDate(Ljava/lang/String;)V

    .line 123
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    const-string v2, "-"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 125
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 126
    const-string v2, "-"

    const-string v3, "/"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initialAcconutView(Landroid/view/View;Lcom/zhangdan/app/data/model/BillInfo;)V
    .locals 8
    .parameter "convertView"
    .parameter "info"

    .prologue
    .line 104
    const v5, 0x7f0901b9

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    .local v0, cardIntervalText:Landroid/widget/TextView;
    invoke-direct {p0, p2}, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->getInterval(Lcom/zhangdan/app/data/model/BillInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v5, 0x7f0901bb

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 107
    .local v4, lastNeedPayText:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/BillInfo;->getLastBalance()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const v5, 0x7f0901bd

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 109
    .local v1, currentCoastText:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/BillInfo;->getNewCharges()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v5, 0x7f0901bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 111
    .local v2, currentIncomeText:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/BillInfo;->getLastPayment()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v5, 0x7f0901c1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 113
    .local v3, currentNeedPay:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/BillInfo;->getNewBalance()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method private initialDetailView(Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;ILjava/util/List;Lcom/zhangdan/app/data/model/BillInfo;)V
    .locals 9
    .parameter "holder"
    .parameter "position"
    .parameter
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;",
            ">;",
            "Lcom/zhangdan/app/data/model/BillInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    .local p3, slotList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;>;"
    add-int/lit8 p2, p2, -0x1

    .line 132
    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, p2, :cond_4

    if-ltz p2, :cond_4

    .line 133
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;

    .line 134
    .local v2, record:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;
    iget-object v5, p1, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getDiscription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getCurrencyType()I

    move-result v4

    .line 136
    .local v4, type:I
    const-string v3, ""

    .line 137
    .local v3, sign:Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 138
    const-string v3, "\uffe5"

    .line 150
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getAmountMoney()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 151
    iget-object v5, p1, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;->mPay:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getAmountMoney()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_1
    const/4 v1, 0x0

    .line 153
    .local v1, categoryName:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v1, :cond_3

    const-string v5, "null"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    :cond_2
    const-string v1, "\u672a\u5206\u7c7b"

    .line 157
    :cond_3
    iget-object v5, p1, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;->mLogoImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getParentId()I

    move-result v6

    invoke-static {v6}, Lcom/zhangdan/app/data/CategoryIconRes;->getIconByParentId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v5, "["

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getTransDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p4}, Lcom/zhangdan/app/data/model/BillInfo;->getCardNums()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    iget-object v5, p1, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #categoryName:Ljava/lang/String;
    .end local v2           #record:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;
    .end local v3           #sign:Ljava/lang/String;
    .end local v4           #type:I
    :cond_4
    return-void

    .line 139
    .restart local v2       #record:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;
    .restart local v3       #sign:Ljava/lang/String;
    .restart local v4       #type:I
    :cond_5
    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 140
    const-string v3, "$"

    goto/16 :goto_0

    .line 141
    :cond_6
    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    .line 142
    const-string v3, "\u20ac"

    goto/16 :goto_0

    .line 143
    :cond_7
    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    .line 144
    const-string v3, "HK$"

    goto/16 :goto_0

    .line 145
    :cond_8
    const/4 v5, 0x5

    if-ne v4, v5, :cond_9

    .line 146
    const-string v3, "\u20a9"

    goto/16 :goto_0

    .line 147
    :cond_9
    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 148
    const-string v3, "\u00a5"

    goto/16 :goto_0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 71
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildType(II)I
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->getChildrenCount(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    .line 53
    const/4 v0, 0x2

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getChildTypeCount()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x3

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->getChildType(II)I

    move-result v1

    .line 78
    .local v1, itemType:I
    if-nez v1, :cond_1

    .line 79
    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030082

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 80
    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mBillInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/BillInfo;

    invoke-direct {p0, p4, v2}, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->initialAcconutView(Landroid/view/View;Lcom/zhangdan/app/data/model/BillInfo;)V

    .line 99
    :cond_0
    :goto_0
    return-object p4

    .line 81
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, holder:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;
    if-nez p4, :cond_2

    .line 84
    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030099

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 85
    new-instance v0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;

    .end local v0           #holder:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;
    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;-><init>(Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;)V

    .line 86
    .restart local v0       #holder:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;
    const v2, 0x7f09020b

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;->mLogoImage:Landroid/widget/ImageView;

    .line 87
    const v2, 0x7f09020d

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    .line 88
    const v2, 0x7f09020c

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;->mPay:Landroid/widget/TextView;

    .line 89
    const v2, 0x7f09020e

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;->mTime:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    :goto_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mBillInfoList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/data/model/BillInfo;

    invoke-direct {p0, v0, p2, v2, v3}, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->initialDetailView(Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;ILjava/util/List;Lcom/zhangdan/app/data/model/BillInfo;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;
    check-cast v0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;

    .restart local v0       #holder:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;
    goto :goto_1

    .line 95
    .end local v0           #holder:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300a8

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mBillInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mBillInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 194
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, holder:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ViewGroupHolder;
    if-nez p3, :cond_0

    .line 202
    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030085

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 203
    new-instance v0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ViewGroupHolder;

    .end local v0           #holder:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ViewGroupHolder;
    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ViewGroupHolder;-><init>(Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;)V

    .line 204
    .restart local v0       #holder:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ViewGroupHolder;
    const v2, 0x7f0901d4

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ViewGroupHolder;->mTextView:Landroid/widget/TextView;

    .line 205
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 209
    :goto_0
    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mBillInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/BillInfo;

    .line 210
    .local v1, info:Lcom/zhangdan/app/data/model/BillInfo;
    iget-object v2, v0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ViewGroupHolder;->mTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->getCurrentBillYear(Lcom/zhangdan/app/data/model/BillInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5e74"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->getCurrentBillMonth(Lcom/zhangdan/app/data/model/BillInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u6708\u8d26\u5355"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    return-object p3

    .line 207
    .end local v1           #info:Lcom/zhangdan/app/data/model/BillInfo;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ViewGroupHolder;
    check-cast v0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ViewGroupHolder;

    .restart local v0       #holder:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ViewGroupHolder;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public setChildData(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;>;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;->mHashMap:Ljava/util/HashMap;

    .line 45
    return-void
.end method
