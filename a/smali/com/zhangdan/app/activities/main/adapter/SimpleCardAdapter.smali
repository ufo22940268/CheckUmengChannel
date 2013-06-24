.class public Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleCardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;,
        Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final ITEM_TYPE_BILL_PAID:I = 0x1

.field private static final ITEM_TYPE_BILL_UNPAID:I = 0x0

.field private static final ITEM_TYPE_LACK_BILL:I = 0x2


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

.field private mSizeSpan:Landroid/text/style/AbsoluteSizeSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
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

    .line 49
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mList:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 52
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    .line 53
    return-void
.end method

.method private newLackBillView()Landroid/view/View;
    .locals 5

    .prologue
    .line 209
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 210
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0300be

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 211
    .local v2, view:Landroid/view/View;
    new-instance v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;-><init>(Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;)V

    .line 212
    .local v0, holder:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;
    const v3, 0x7f0901b2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->tvBankName:Landroid/widget/TextView;

    .line 213
    const v3, 0x7f090290

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->tvName:Landroid/widget/TextView;

    .line 214
    const v3, 0x7f0902aa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->tvCardNo:Landroid/widget/TextView;

    .line 215
    const v3, 0x7f09028c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->layoutContent:Landroid/widget/RelativeLayout;

    .line 216
    iget-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->layoutContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v3, 0x7f0902a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->imgDemo:Landroid/widget/ImageView;

    .line 218
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 219
    return-object v2
.end method

.method private newPaidBillView()Landroid/view/View;
    .locals 5

    .prologue
    .line 223
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 224
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0300bf

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 225
    .local v2, view:Landroid/view/View;
    new-instance v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;-><init>(Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;)V

    .line 226
    .local v0, holder:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;
    const v3, 0x7f09028d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->imgRedDot:Landroid/widget/ImageView;

    .line 227
    const v3, 0x7f0901b2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->tvBankName:Landroid/widget/TextView;

    .line 228
    const v3, 0x7f090290

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->tvName:Landroid/widget/TextView;

    .line 229
    const v3, 0x7f0902aa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->tvCardNo:Landroid/widget/TextView;

    .line 230
    const v3, 0x7f0902ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->tvBillAmout:Landroid/widget/TextView;

    .line 231
    const v3, 0x7f090297

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->tvBillState:Landroid/widget/TextView;

    .line 232
    const v3, 0x7f0902ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->imgForeignMoney:Landroid/widget/ImageView;

    .line 233
    const v3, 0x7f09028c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->layoutContent:Landroid/widget/RelativeLayout;

    .line 234
    iget-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->layoutContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const v3, 0x7f0902a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->imgDemo:Landroid/widget/ImageView;

    .line 236
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 237
    return-object v2
.end method

.method private newUnpaidBillView()Landroid/view/View;
    .locals 5

    .prologue
    .line 187
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 188
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0300bd

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 189
    .local v2, view:Landroid/view/View;
    new-instance v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;-><init>(Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;)V

    .line 190
    .local v0, holder:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;
    const v3, 0x7f09028d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->imgRedDot:Landroid/widget/ImageView;

    .line 191
    const v3, 0x7f0901b2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvBankName:Landroid/widget/TextView;

    .line 192
    const v3, 0x7f090290

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 193
    const v3, 0x7f0902aa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvCardNo:Landroid/widget/TextView;

    .line 194
    const v3, 0x7f0902ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvBillAmout:Landroid/widget/TextView;

    .line 195
    const v3, 0x7f0902ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->imgForeignMoney:Landroid/widget/ImageView;

    .line 196
    const v3, 0x7f090296

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvPayDueDays:Landroid/widget/TextView;

    .line 197
    const v3, 0x7f090294

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvPayDueType:Landroid/widget/TextView;

    .line 198
    const v3, 0x7f090295

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvDaysLabel:Landroid/widget/TextView;

    .line 199
    const v3, 0x7f090297

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvBillState:Landroid/widget/TextView;

    .line 200
    const v3, 0x7f090293

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->layoutPayDueDays:Landroid/widget/LinearLayout;

    .line 201
    const v3, 0x7f09028c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->layoutContent:Landroid/widget/RelativeLayout;

    .line 202
    iget-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->layoutContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v3, 0x7f0902a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->imgDemo:Landroid/widget/ImageView;

    .line 204
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 205
    return-object v2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 72
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 77
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 78
    .local v0, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v3

    if-nez v3, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v3

    if-eq v3, v2, :cond_2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 81
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v3

    if-eq v3, v1, :cond_4

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    :cond_4
    move v1, v2

    .line 83
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 95
    move-object/from16 v7, p2

    .line 96
    .local v7, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->getItemViewType(I)I

    move-result v3

    .line 97
    .local v3, itemType:I
    if-nez v7, :cond_0

    .line 98
    if-nez v3, :cond_3

    .line 99
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->newUnpaidBillView()Landroid/view/View;

    move-result-object v7

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 106
    .local v1, bankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;
    if-nez v3, :cond_b

    .line 108
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;

    .line 109
    .local v2, holder:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;
    iget-object v9, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->imgRedDot:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->isNewWarn()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvBankName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvCardNo:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v0

    .line 115
    .local v0, amount:F
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 116
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getReturnAmount()F

    move-result v8

    sub-float/2addr v0, v8

    .line 118
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\uffe5"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    float-to-double v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, str:Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 120
    .local v5, spanStr:Landroid/text/SpannableString;
    iget-object v8, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 121
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvBillAmout:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLeaveDays()I

    move-result v4

    .line 124
    .local v4, leaveDays:I
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvPayDueDays:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v9, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->imgForeignMoney:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->isHasForeignCurrency()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->layoutPayDueDays:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvPayDueDays:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvBillState:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    if-gez v4, :cond_8

    .line 132
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_7

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getReturnAmount()F

    move-result v8

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getMinPayment()F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_7

    .line 133
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->layoutPayDueDays:Landroid/widget/LinearLayout;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvPayDueDays:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvBillState:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :goto_3
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->layoutContent:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 149
    iget-object v9, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->imgDemo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-nez v8, :cond_a

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    .end local v0           #amount:F
    .end local v2           #holder:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;
    .end local v4           #leaveDays:I
    .end local v5           #spanStr:Landroid/text/SpannableString;
    .end local v6           #str:Ljava/lang/String;
    :cond_2
    :goto_5
    return-object v7

    .line 100
    .end local v1           #bankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_3
    const/4 v8, 0x2

    if-ne v3, v8, :cond_4

    .line 101
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->newLackBillView()Landroid/view/View;

    move-result-object v7

    goto/16 :goto_0

    .line 103
    :cond_4
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->newPaidBillView()Landroid/view/View;

    move-result-object v7

    goto/16 :goto_0

    .line 109
    .restart local v1       #bankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;
    .restart local v2       #holder:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;
    :cond_5
    const/4 v8, 0x4

    goto/16 :goto_1

    .line 125
    .restart local v0       #amount:F
    .restart local v4       #leaveDays:I
    .restart local v5       #spanStr:Landroid/text/SpannableString;
    .restart local v6       #str:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x4

    goto :goto_2

    .line 137
    :cond_7
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvDaysLabel:Landroid/widget/TextView;

    const v9, 0x7f070068

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 138
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvDaysLabel:Landroid/widget/TextView;

    const v9, 0x7f02031f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 140
    :cond_8
    const/4 v8, 0x7

    if-ge v4, v8, :cond_9

    .line 141
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvDaysLabel:Landroid/widget/TextView;

    const v9, 0x7f070067

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvDaysLabel:Landroid/widget/TextView;

    const v9, 0x7f020320

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 144
    :cond_9
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvDaysLabel:Landroid/widget/TextView;

    const v9, 0x7f070067

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->tvDaysLabel:Landroid/widget/TextView;

    const v9, 0x7f02031d

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 149
    :cond_a
    const/16 v8, 0x8

    goto :goto_4

    .line 150
    .end local v0           #amount:F
    .end local v2           #holder:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;
    .end local v4           #leaveDays:I
    .end local v5           #spanStr:Landroid/text/SpannableString;
    .end local v6           #str:Ljava/lang/String;
    :cond_b
    const/4 v8, 0x2

    if-ne v3, v8, :cond_d

    .line 152
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;

    .line 153
    .local v2, holder:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->tvBankName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->tvCardNo:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->layoutContent:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 158
    iget-object v9, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->imgDemo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-nez v8, :cond_c

    const/4 v8, 0x0

    :goto_6
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_c
    const/16 v8, 0x8

    goto :goto_6

    .line 159
    .end local v2           #holder:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;
    :cond_d
    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    .line 161
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;

    .line 162
    .restart local v2       #holder:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;
    iget-object v9, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->imgRedDot:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->isNewWarn()Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x0

    :goto_7
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->tvBankName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->tvCardNo:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\uffe5"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 168
    .restart local v6       #str:Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 169
    .restart local v5       #spanStr:Landroid/text/SpannableString;
    iget-object v8, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 170
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->tvBillAmout:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_10

    .line 173
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->tvBillState:Landroid/widget/TextView;

    const v9, 0x7f070062

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 178
    :cond_e
    :goto_8
    iget-object v9, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->imgForeignMoney:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->isHasForeignCurrency()Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v8, 0x0

    :goto_9
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->layoutContent:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 181
    iget-object v9, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->imgDemo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-nez v8, :cond_12

    const/4 v8, 0x0

    :goto_a
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 162
    .end local v5           #spanStr:Landroid/text/SpannableString;
    .end local v6           #str:Ljava/lang/String;
    :cond_f
    const/4 v8, 0x4

    goto/16 :goto_7

    .line 174
    .restart local v5       #spanStr:Landroid/text/SpannableString;
    .restart local v6       #str:Ljava/lang/String;
    :cond_10
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_e

    .line 175
    iget-object v8, v2, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder2;->tvBillState:Landroid/widget/TextView;

    const v9, 0x7f070063

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    .line 178
    :cond_11
    const/4 v8, 0x4

    goto :goto_9

    .line 181
    :cond_12
    const/16 v8, 0x8

    goto :goto_a
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x3

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 273
    .local v3, position:I
    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 274
    .local v1, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 275
    iget-object v6, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f070109

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->isNewWarn()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 281
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/UserBankInfo;->setNewWarn(Z)V

    .line 282
    const v6, 0x7f09028d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 283
    .local v4, redDot:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 284
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 285
    :cond_1
    iget-object v6, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v6}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v5

    .line 286
    .local v5, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    iget-object v6, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mContext:Landroid/content/Context;

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

    .line 288
    .end local v4           #redDot:Landroid/view/View;
    .end local v5           #userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 290
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mContext:Landroid/content/Context;

    const-class v7, Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 291
    iget-object v6, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 292
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    const-string v6, "key_user_bank"

    invoke-virtual {v0, v6, v1}, Lcom/zhangdan/app/ZhangdanApplication;->addCacheObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    iget-object v6, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mContext:Landroid/content/Context;

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
    .line 56
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->mList:Ljava/util/List;

    .line 57
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->notifyDataSetChanged()V

    .line 58
    return-void
.end method
