.class public Lcom/zhangdan/app/activities/sms/AllSmsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AllSmsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private city:Ljava/lang/String;

.field del:Landroid/view/View$OnClickListener;

.field edit:Landroid/view/View$OnClickListener;

.field private editListener:Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;

.field feedback:Landroid/view/View$OnClickListener;

.field private mBillDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mUserInfo:Lcom/zhangdan/app/data/model/UserInfo;

.field private oldView:Landroid/view/View;

.field private tag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserInfo;)V
    .locals 1
    .parameter "context"
    .parameter "info"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->tag:I

    .line 232
    new-instance v0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$2;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$2;-><init>(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->feedback:Landroid/view/View$OnClickListener;

    .line 272
    new-instance v0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$3;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$3;-><init>(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->edit:Landroid/view/View$OnClickListener;

    .line 287
    new-instance v0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;-><init>(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->del:Landroid/view/View$OnClickListener;

    .line 45
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->mUserInfo:Lcom/zhangdan/app/data/model/UserInfo;

    .line 47
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->tag:I

    return p1
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->oldView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->oldView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->mBillDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->editListener:Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->update()V

    return-void
.end method

.method private update()V
    .locals 0

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->notifyDataSetChanged()V

    .line 230
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->mBillDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->mBillDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 83
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 88
    const/4 v8, 0x0

    .line 89
    .local v8, holder:Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;
    if-nez p2, :cond_8

    .line 90
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f03004b

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 91
    new-instance v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;

    .end local v8           #holder:Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;
    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;-><init>(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)V

    .line 92
    .restart local v8       #holder:Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;
    const v13, 0x7f090133

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mImageIcon:Landroid/widget/ImageView;

    .line 93
    const v13, 0x7f090132

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextTime:Landroid/widget/TextView;

    .line 94
    const v13, 0x7f090134

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    .line 95
    const v13, 0x7f090135

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextViewContent:Landroid/widget/TextView;

    .line 96
    const v13, 0x7f090130

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 97
    const v13, 0x7f090136

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mExpandRelativeLayou:Landroid/widget/RelativeLayout;

    .line 98
    const v13, 0x7f090139

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextViewSmsBody:Landroid/widget/TextView;

    .line 99
    const v13, 0x7f09013b

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout1:Landroid/widget/RelativeLayout;

    .line 100
    const v13, 0x7f09013e

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout2:Landroid/widget/RelativeLayout;

    .line 101
    const v13, 0x7f090141

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout3:Landroid/widget/RelativeLayout;

    .line 102
    const v13, 0x7f090131

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout4:Landroid/widget/RelativeLayout;

    .line 103
    const v13, 0x7f09013d

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextFeed:Landroid/widget/TextView;

    .line 104
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->mBillDatas:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move/from16 v0, p1

    if-le v13, v0, :cond_7

    if-ltz p1, :cond_7

    .line 110
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout1:Landroid/widget/RelativeLayout;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 111
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout1:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->feedback:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout2:Landroid/widget/RelativeLayout;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 113
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout2:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->edit:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout3:Landroid/widget/RelativeLayout;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 115
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout3:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->del:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout4:Landroid/widget/RelativeLayout;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 117
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout4:Landroid/widget/RelativeLayout;

    new-instance v14, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$1;-><init>(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)V

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->mBillDatas:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhangdan/app/sms/BillData;

    .line 141
    .local v5, data:Lcom/zhangdan/app/sms/BillData;
    invoke-virtual {v5}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v3

    .line 142
    .local v3, billType:I
    invoke-virtual {v5}, Lcom/zhangdan/app/sms/BillData;->getDate()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/zhangdan/app/util/DateUtils;->getYearMonthDay(J)[I

    move-result-object v2

    .line 143
    .local v2, array:[I
    if-nez v3, :cond_9

    .line 144
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextTime:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget v15, v2, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget v15, v2, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    aget v15, v2, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout2:Landroid/widget/RelativeLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 146
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextViewSmsBody:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v14, 0x7f02028b

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 148
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mImageIcon:Landroid/widget/ImageView;

    const v14, 0x7f020388

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 149
    invoke-virtual {v5}, Lcom/zhangdan/app/sms/BillData;->getRepaymentMonth()I

    move-result v9

    .line 150
    .local v9, month:I
    invoke-virtual {v5}, Lcom/zhangdan/app/sms/BillData;->getRepaymentDay()I

    move-result v6

    .line 151
    .local v6, day:I
    const/16 v13, 0x14

    if-ge v6, v13, :cond_0

    .line 152
    add-int/lit8 v9, v9, -0x1

    .line 153
    if-nez v9, :cond_0

    .line 154
    const/16 v9, 0xc

    .line 157
    :cond_0
    if-eqz v9, :cond_1

    .line 158
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\u6708\u4efd\u8d26\u5355"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    .local v4, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v5}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, amount:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/zhangdan/app/sms/BillData;->getUsAmount()Ljava/lang/String;

    move-result-object v12

    .line 162
    .local v12, usAmount:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 163
    const-string v13, "\u4eba\u6c11\u5e01"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "\u5143,"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 165
    const-string v13, "\u7f8e\u5143"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "\u5143,"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    :cond_2
    const-string v13, "\u5230\u671f\u8fd8\u6b3e\u65e5"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    :cond_3
    if-nez v6, :cond_4

    if-eqz v9, :cond_5

    .line 169
    :cond_4
    invoke-virtual {v5}, Lcom/zhangdan/app/sms/BillData;->getRepaymentMonth()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "\u6708"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "\u65e5"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    :cond_5
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextViewSmsBody:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/zhangdan/app/sms/BillData;->getSms()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextViewContent:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .end local v1           #amount:Ljava/lang/String;
    .end local v4           #buffer:Ljava/lang/StringBuffer;
    .end local v6           #day:I
    .end local v9           #month:I
    .end local v12           #usAmount:Ljava/lang/String;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->tag:I

    move/from16 v0, p1

    if-ne v13, v0, :cond_f

    .line 210
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mExpandRelativeLayou:Landroid/widget/RelativeLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 216
    :goto_2
    invoke-virtual {v5}, Lcom/zhangdan/app/sms/BillData;->getIs_rember()I

    move-result v7

    .line 217
    .local v7, feed:I
    if-nez v7, :cond_10

    .line 218
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextFeed:Landroid/widget/TextView;

    const-string v14, "\u53cd\u9988"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :goto_3
    const v13, 0x7f090130

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 225
    .end local v2           #array:[I
    .end local v3           #billType:I
    .end local v5           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v7           #feed:I
    :cond_7
    return-object p2

    .line 106
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #holder:Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;
    check-cast v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;

    .restart local v8       #holder:Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;
    goto/16 :goto_0

    .line 173
    .restart local v2       #array:[I
    .restart local v3       #billType:I
    .restart local v5       #data:Lcom/zhangdan/app/sms/BillData;
    :cond_9
    const/4 v13, 0x1

    if-eq v3, v13, :cond_a

    const/4 v13, 0x2

    if-ne v3, v13, :cond_d

    .line 174
    :cond_a
    invoke-virtual {v5}, Lcom/zhangdan/app/sms/BillData;->getDate()J

    move-result-wide v10

    .line 175
    .local v10, time:J
    invoke-static {v10, v11}, Lcom/zhangdan/app/util/DateUtils;->calWeekDay(J)I

    move-result v6

    .line 176
    .restart local v6       #day:I
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextTime:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget v15, v2, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget v15, v2, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    aget v15, v2, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v6}, Lcom/zhangdan/app/util/DateUtils;->getWeekStr(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout2:Landroid/widget/RelativeLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 178
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextViewSmsBody:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v14, 0x7f02028b

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 180
    const/4 v13, 0x1

    if-ne v3, v13, :cond_c

    .line 181
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mImageIcon:Landroid/widget/ImageView;

    const v14, 0x7f02023b

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 182
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    const-string v14, "\u6d88\u8d39\uff1a"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_4
    invoke-virtual {v5}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v1

    .line 188
    .restart local v1       #amount:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 189
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextViewContent:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\uffe5"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\u5143"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_b
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextViewSmsBody:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/zhangdan/app/sms/BillData;->getSms()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 184
    .end local v1           #amount:Ljava/lang/String;
    :cond_c
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mImageIcon:Landroid/widget/ImageView;

    const v14, 0x7f020221

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 185
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    const-string v14, "\u8fd8\u6b3e\uff1a"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 192
    .end local v6           #day:I
    .end local v10           #time:J
    :cond_d
    const/4 v13, 0x3

    if-ne v3, v13, :cond_e

    .line 193
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextTime:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget v15, v2, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget v15, v2, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    aget v15, v2, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout2:Landroid/widget/RelativeLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 195
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextViewSmsBody:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v14, 0x7f02028b

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 197
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mImageIcon:Landroid/widget/ImageView;

    const v14, 0x7f020389

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 198
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    const-string v14, "\u5176\u4ed6:"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextViewContent:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/zhangdan/app/sms/BillData;->getSms()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 200
    :cond_e
    const/4 v13, 0x4

    if-ne v3, v13, :cond_6

    .line 201
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextTime:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget v15, v2, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget v15, v2, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    aget v15, v2, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout2:Landroid/widget/RelativeLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 203
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextViewSmsBody:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v14, 0x7f02028b

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 205
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mImageIcon:Landroid/widget/ImageView;

    const v14, 0x7f020385

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 206
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    const-string v14, "\u4f18\u60e0:"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextViewContent:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/zhangdan/app/sms/BillData;->getSms()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 212
    :cond_f
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mExpandRelativeLayou:Landroid/widget/RelativeLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 220
    .restart local v7       #feed:I
    :cond_10
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$ViewHolder;->mTextFeed:Landroid/widget/TextView;

    const-string v14, "\u5df2\u53cd\u9988"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->mBillDatas:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setListener(Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->editListener:Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;

    .line 61
    return-void
.end method

.method public setSmsBillCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->city:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setTag(I)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 64
    iput p1, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->tag:I

    .line 65
    return-void
.end method
