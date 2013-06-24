.class public Lcom/zhangdan/app/activities/sms/SmsEditActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "SmsEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final BILL_INFO:Ljava/lang/String; = "bill_info"


# instance fields
.field private alert:Landroid/app/AlertDialog;

.field private bankName:Ljava/lang/String;

.field private cardNum:Ljava/lang/String;

.field private currentSelect:I

.field private mBillData:Lcom/zhangdan/app/sms/BillData;

.field private mEditText:Landroid/widget/EditText;

.field private mTextView:Landroid/widget/TextView;

.field private monthArray:[Ljava/lang/String;

.field private trueName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->currentSelect:I

    .line 41
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1\u6708"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2\u6708"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3\u6708"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "4\u6708"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "5\u6708"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6\u6708"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "7\u6708"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "8\u6708"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "9\u6708"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "10\u6708"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "11\u6708"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "12\u6708"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->monthArray:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->alert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)Lcom/zhangdan/app/sms/BillData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->initialEditView()V

    return-void
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->initialItem()V

    return-void
.end method

.method private hideBottom()V
    .locals 2

    .prologue
    .line 278
    const v1, 0x7f0900ea

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 279
    .local v0, re:Landroid/widget/RelativeLayout;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 280
    return-void
.end method

.method private initialEditView()V
    .locals 11

    .prologue
    .line 191
    const v9, 0x7f090102

    invoke-virtual {p0, v9}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 192
    .local v1, layout1:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v9, 0x7f090105

    invoke-virtual {p0, v9}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 194
    .local v2, layout2:Landroid/widget/RelativeLayout;
    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const v9, 0x7f090107

    invoke-virtual {p0, v9}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 196
    .local v3, layout3:Landroid/widget/RelativeLayout;
    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v9, 0x7f090103

    invoke-virtual {p0, v9}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 198
    .local v0, image:Landroid/widget/ImageView;
    const v9, 0x7f090104

    invoke-virtual {p0, v9}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 199
    .local v5, text1:Landroid/widget/TextView;
    const v9, 0x7f090106

    invoke-virtual {p0, v9}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 200
    .local v6, text2:Landroid/widget/TextView;
    const v9, 0x7f090108

    invoke-virtual {p0, v9}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 201
    .local v7, text3:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {v9}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v9

    if-nez v9, :cond_3

    .line 202
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {v10}, Lcom/zhangdan/app/sms/BillData;->getRepaymentMonth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u6708\u8d26\u5355"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {v9}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, rmbAmount:Ljava/lang/String;
    iget-object v9, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {v9}, Lcom/zhangdan/app/sms/BillData;->getUsAmount()Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, usAmount:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 214
    const-string v4, "0"

    .line 216
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 217
    const-string v8, "0"

    .line 219
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\uffe5"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u5143"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "$"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u5143"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    return-void

    .line 204
    .end local v4           #rmbAmount:Ljava/lang/String;
    .end local v8           #usAmount:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {v9}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 205
    const v9, 0x7f02023a

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 206
    const-string v9, "\u6d88\u8d39"

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 207
    :cond_4
    iget-object v9, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {v9}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 208
    const v9, 0x7f020220

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 209
    const-string v9, "\u8fd8\u6b3e"

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initialItem()V
    .locals 20

    .prologue
    .line 108
    const v18, 0x7f090100

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 109
    .local v17, view:Landroid/view/View;
    const v18, 0x7f090130

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 110
    .local v2, all:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v15

    .line 111
    .local v15, type:I
    const v18, 0x7f02028a

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 112
    const v18, 0x7f090132

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 113
    .local v13, time:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/sms/BillData;->getDate()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/zhangdan/app/util/DateUtils;->getYearMonthDay(J)[I

    move-result-object v4

    .line 114
    .local v4, array:[I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    aget v19, v4, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget v19, v4, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2

    aget v19, v4, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v18, 0x7f090133

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 116
    .local v9, icon:Landroid/widget/ImageView;
    const v18, 0x7f090134

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 117
    .local v14, title:Landroid/widget/TextView;
    const v18, 0x7f090135

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 118
    .local v6, content:Landroid/widget/TextView;
    const v18, 0x7f090139

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 119
    .local v12, sms:Landroid/widget/TextView;
    const v18, 0x7f09013a

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 120
    .local v10, layout1:Landroid/widget/RelativeLayout;
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 121
    const v18, 0x7f090136

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 123
    .local v8, expand:Landroid/widget/RelativeLayout;
    if-nez v15, :cond_6

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/sms/BillData;->getRepaymentMonth()I

    move-result v11

    .line 125
    .local v11, month:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/sms/BillData;->getRepaymentDay()I

    move-result v7

    .line 126
    .local v7, day:I
    const/16 v18, 0x14

    move/from16 v0, v18

    if-ge v7, v0, :cond_0

    .line 127
    add-int/lit8 v11, v11, -0x1

    .line 128
    if-nez v11, :cond_0

    .line 129
    const/16 v11, 0xc

    .line 132
    :cond_0
    if-lez v11, :cond_1

    .line 133
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u6708\u4efd\u8d26\u5355"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    .local v5, buffer:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, amount:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 139
    const-string v18, "\u4eba\u6c11\u5e01"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "\u5143\uff0c\u5230\u671f\u8fd8\u6b3e\u65e5"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    :cond_2
    if-nez v7, :cond_3

    if-eqz v11, :cond_4

    .line 143
    :cond_3
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "\u6708"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "\u65e5"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const v18, 0x7f02022e

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/sms/BillData;->getSms()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 188
    .end local v3           #amount:Ljava/lang/String;
    .end local v5           #buffer:Ljava/lang/StringBuffer;
    .end local v7           #day:I
    .end local v11           #month:I
    :cond_5
    :goto_0
    return-void

    .line 149
    :cond_6
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v15, v0, :cond_7

    .line 150
    const-string v18, "\u4f18\u60e0"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const v18, 0x7f020384

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/sms/BillData;->getSms()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 153
    :cond_7
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_a

    .line 154
    const-string v18, "\u6d88\u8d39"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v3

    .line 156
    .restart local v3       #amount:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    .restart local v5       #buffer:Ljava/lang/StringBuffer;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 158
    const-string v18, "\uffe5"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "\u5143"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/sms/BillData;->getUsAmount()Ljava/lang/String;

    move-result-object v16

    .line 161
    .local v16, usAmount:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 162
    const-string v18, "$"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "\u5143"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    :cond_9
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const v18, 0x7f02023a

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/sms/BillData;->getSms()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 168
    .end local v3           #amount:Ljava/lang/String;
    .end local v5           #buffer:Ljava/lang/StringBuffer;
    .end local v16           #usAmount:Ljava/lang/String;
    :cond_a
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v15, v0, :cond_d

    .line 169
    const-string v18, "\u8fd8\u6b3e"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v3

    .line 171
    .restart local v3       #amount:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    .restart local v5       #buffer:Ljava/lang/StringBuffer;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 173
    const-string v18, "\uffe5"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "\u5143"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/sms/BillData;->getUsAmount()Ljava/lang/String;

    move-result-object v16

    .line 176
    .restart local v16       #usAmount:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 177
    const-string v18, "$"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "\u5143"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    :cond_c
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const v18, 0x7f020220

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/sms/BillData;->getSms()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 183
    .end local v3           #amount:Ljava/lang/String;
    .end local v5           #buffer:Ljava/lang/StringBuffer;
    .end local v16           #usAmount:Ljava/lang/String;
    :cond_d
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v15, v0, :cond_5

    .line 184
    const-string v18, "\u5176\u4ed6"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/sms/BillData;->getSms()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    const v18, 0x7f020388

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private initialView()V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->bankName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->bankName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->cardNum:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->cardNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->trueName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 85
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->trueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_2
    const v1, 0x7f09003a

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v1, 0x7f090039

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v1, 0x7f09003c

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020390

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 90
    const v1, 0x7f0901e3

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f02000a

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->initialItem()V

    .line 93
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->initialEditView()V

    .line 94
    return-void
.end method

.method private showBottom()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 240
    const v2, 0x7f0900ea

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 241
    .local v0, re:Landroid/widget/RelativeLayout;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 242
    const v2, 0x7f0900ef

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mEditText:Landroid/widget/EditText;

    .line 243
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 244
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 245
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 246
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/zhangdan/app/activities/sms/SmsEditActivity$1;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity$1;-><init>(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 272
    const v2, 0x7f090109

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mTextView:Landroid/widget/TextView;

    .line 273
    const v2, 0x7f0900ee

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 274
    .local v1, upload:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    return-void
.end method

.method private showMonth()V
    .locals 4

    .prologue
    .line 284
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9009\u62e9\u6708\u4efd"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->monthArray:[Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/zhangdan/app/activities/sms/SmsEditActivity$2;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity$2;-><init>(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->alert:Landroid/app/AlertDialog;

    .line 297
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 298
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-static {v1, v2}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->updateBilldata(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;)V

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bill_info"

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 101
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 102
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->finish()V

    .line 103
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 303
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 350
    :goto_0
    return-void

    .line 305
    :sswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-static {v3, v4}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->updateBilldata(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;)V

    .line 306
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "bill_info"

    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, v7, v1}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 309
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->finish()V

    goto :goto_0

    .line 312
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_1
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {v3}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 313
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 319
    :cond_0
    :goto_1
    iput v7, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->currentSelect:I

    .line 320
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->initialEditView()V

    .line 321
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->initialItem()V

    goto :goto_0

    .line 314
    :cond_1
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {v3}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 315
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {v3, v5}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    goto :goto_1

    .line 316
    :cond_2
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {v3}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v3

    if-nez v3, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->showMonth()V

    goto :goto_1

    .line 324
    :sswitch_2
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->showBottom()V

    .line 325
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mTextView:Landroid/widget/TextView;

    const-string v4, "\u4eba\u6c11\u5e01"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iput v5, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->currentSelect:I

    goto :goto_0

    .line 329
    :sswitch_3
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->showBottom()V

    .line 330
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mTextView:Landroid/widget/TextView;

    const-string v4, "\u7f8e\u5143"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iput v6, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->currentSelect:I

    goto :goto_0

    .line 334
    :sswitch_4
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, str:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 336
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->hideBottom()V

    goto :goto_0

    .line 339
    :cond_3
    iget v3, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->currentSelect:I

    if-ne v3, v5, :cond_5

    .line 340
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {v3, v2}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V

    .line 344
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->initialEditView()V

    .line 345
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->initialItem()V

    .line 346
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->hideBottom()V

    goto/16 :goto_0

    .line 341
    :cond_5
    iget v3, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->currentSelect:I

    if-ne v3, v6, :cond_4

    .line 342
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {v3, v2}, Lcom/zhangdan/app/sms/BillData;->setUsAmount(Ljava/lang/String;)V

    goto :goto_2

    .line 303
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090039 -> :sswitch_0
        0x7f0900ee -> :sswitch_4
        0x7f090102 -> :sswitch_1
        0x7f090105 -> :sswitch_2
        0x7f090107 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v1, 0x7f03003e

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "card_num"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->cardNum:Ljava/lang/String;

    .line 50
    const-string v1, "bank_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->bankName:Ljava/lang/String;

    .line 51
    const-string v1, "true_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->trueName:Ljava/lang/String;

    .line 52
    const-string v1, "bill_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/sms/BillData;

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    .line 53
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 54
    const-string v1, "card_num"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->cardNum:Ljava/lang/String;

    .line 55
    const-string v1, "bank_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->bankName:Ljava/lang/String;

    .line 56
    const-string v1, "true_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->trueName:Ljava/lang/String;

    .line 57
    const-string v1, "bill_info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/sms/BillData;

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->initialView()V

    .line 60
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 237
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onPause()V

    .line 231
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onResume()V

    .line 226
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 65
    const-string v0, "card_num"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->cardNum:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "bank_name"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->bankName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "true_name"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->trueName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "bill_info"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 69
    return-void
.end method
