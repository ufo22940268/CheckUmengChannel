.class public Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmsBillBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSmsBillDataInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/SmsBillData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;->mSmsBillDataInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;->mSmsBillDataInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 60
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 65
    const/4 v8, 0x0

    .line 66
    .local v8, holder:Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;
    if-nez p2, :cond_4

    .line 67
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f0300d1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 68
    new-instance v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;

    .end local v8           #holder:Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;
    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;-><init>(Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;)V

    .line 69
    .restart local v8       #holder:Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;
    const v13, 0x7f0901b0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;->mBankIcon:Landroid/widget/ImageView;

    .line 70
    const v13, 0x7f0902e2

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;->mText1:Landroid/widget/TextView;

    .line 71
    const v13, 0x7f0902e3

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;->mText2:Landroid/widget/TextView;

    .line 72
    const v13, 0x7f0902e4

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;->mText3:Landroid/widget/TextView;

    .line 73
    const v13, 0x7f0902e5

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;->mText4:Landroid/widget/TextView;

    .line 74
    const v13, 0x7f0902e6

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;->mText5:Landroid/widget/TextView;

    .line 75
    const v13, 0x7f0902e7

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;->mText6:Landroid/widget/TextView;

    .line 76
    const v13, 0x7f0902e8

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;->mText7:Landroid/widget/TextView;

    .line 77
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    :goto_0
    if-ltz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;->mSmsBillDataInfos:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move/from16 v0, p1

    if-le v13, v0, :cond_3

    .line 82
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;->mSmsBillDataInfos:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zhangdan/app/sms/SmsBillData;

    .line 83
    .local v10, info:Lcom/zhangdan/app/sms/SmsBillData;
    invoke-virtual {v10}, Lcom/zhangdan/app/sms/SmsBillData;->getBillNum()I

    move-result v2

    .line 84
    .local v2, billSum:I
    invoke-virtual {v10}, Lcom/zhangdan/app/sms/SmsBillData;->getCostNum()I

    move-result v5

    .line 85
    .local v5, costSum:I
    invoke-virtual {v10}, Lcom/zhangdan/app/sms/SmsBillData;->getIncomeNum()I

    move-result v9

    .line 86
    .local v9, incomeSum:I
    invoke-virtual {v10}, Lcom/zhangdan/app/sms/SmsBillData;->getDiscountNum()I

    move-result v7

    .line 87
    .local v7, discountSum:I
    invoke-virtual {v10}, Lcom/zhangdan/app/sms/SmsBillData;->getOtherNum()I

    move-result v12

    .line 88
    .local v12, otherSum:I
    invoke-virtual {v10}, Lcom/zhangdan/app/sms/SmsBillData;->getBankName()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, bankName:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/zhangdan/app/sms/SmsBillData;->getCardNum()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, cardNum:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/zhangdan/app/sms/SmsBillData;->getTruename()Ljava/lang/String;

    move-result-object v11

    .line 91
    .local v11, name:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/zhangdan/app/sms/SmsBillData;->getPayDate()Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, day:Ljava/lang/String;
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;->mBankIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Lcom/zhangdan/app/sms/SmsBillData;->getBankId()I

    move-result v14

    invoke-static {v14}, Lcom/zhangdan/app/data/BankIconRes;->getBankIconResId(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 93
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;->mText1:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " |"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v3, buffer:Ljava/lang/StringBuffer;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 96
    const-string v13, "["

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "]  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 99
    const-string v13, "["

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "]  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 106
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;->mText1:Landroid/widget/TextView;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_2
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;->mText2:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;->mText3:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u8d26\u5355("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;->mText4:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u8fd8\u6b3e("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;->mText5:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u6d88\u8d39("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;->mText6:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u4f18\u60e0("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v13, v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;->mText7:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    .end local v1           #bankName:Ljava/lang/String;
    .end local v2           #billSum:I
    .end local v3           #buffer:Ljava/lang/StringBuffer;
    .end local v4           #cardNum:Ljava/lang/String;
    .end local v5           #costSum:I
    .end local v6           #day:Ljava/lang/String;
    .end local v7           #discountSum:I
    .end local v9           #incomeSum:I
    .end local v10           #info:Lcom/zhangdan/app/sms/SmsBillData;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #otherSum:I
    :cond_3
    return-object p2

    .line 79
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #holder:Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;
    check-cast v8, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;

    .restart local v8       #holder:Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter$ViewHolder;
    goto/16 :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/SmsBillData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/SmsBillData;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;->mSmsBillDataInfos:Ljava/util/List;

    .line 30
    return-void
.end method
