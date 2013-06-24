.class public Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "SmsFeedBackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity$UploadSms;
    }
.end annotation


# static fields
.field public static final BILL_INFO:Ljava/lang/String; = "bill_info"


# instance fields
.field private bankName:Ljava/lang/String;

.field private cardNum:Ljava/lang/String;

.field private mBillData:Lcom/zhangdan/app/sms/BillData;

.field private mCity:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mHintEditText:Landroid/widget/EditText;

.field private mHintFeedBackRelativeLayout:Landroid/widget/RelativeLayout;

.field private mSmsFeedBottom:Landroid/widget/RelativeLayout;

.field private mUserInfo:Lcom/zhangdan/app/data/model/UserInfo;

.field private trueName:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 302
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)Lcom/zhangdan/app/data/model/UserInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mUserInfo:Lcom/zhangdan/app/data/model/UserInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->version:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method private hideSoft()V
    .locals 3

    .prologue
    .line 245
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 246
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 247
    return-void
.end method

.method private initialItem()V
    .locals 22

    .prologue
    .line 91
    const v19, 0x7f090100

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 92
    .local v18, view:Landroid/view/View;
    const v19, 0x7f090130

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 93
    .local v2, all:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v16

    .line 94
    .local v16, type:I
    const v19, 0x7f02028a

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 95
    const v19, 0x7f090132

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 96
    .local v14, time:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/sms/BillData;->getDate()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/zhangdan/app/util/DateUtils;->getYearMonthDay(J)[I

    move-result-object v4

    .line 97
    .local v4, array:[I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    aget v20, v4, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget v20, v4, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x2

    aget v20, v4, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v19, 0x7f090133

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 99
    .local v10, icon:Landroid/widget/ImageView;
    const v19, 0x7f090134

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 100
    .local v15, title:Landroid/widget/TextView;
    const v19, 0x7f090135

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 101
    .local v7, content:Landroid/widget/TextView;
    const v19, 0x7f090139

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 102
    .local v13, sms:Landroid/widget/TextView;
    const v19, 0x7f09013a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 103
    .local v11, layout1:Landroid/widget/RelativeLayout;
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    const v19, 0x7f090136

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 106
    .local v9, expand:Landroid/widget/RelativeLayout;
    if-nez v16, :cond_9

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/sms/BillData;->getRepaymentMonth()I

    move-result v12

    .line 108
    .local v12, month:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/sms/BillData;->getRepaymentDay()I

    move-result v8

    .line 109
    .local v8, day:I
    const/16 v19, 0x14

    move/from16 v0, v19

    if-ge v8, v0, :cond_0

    .line 110
    add-int/lit8 v12, v12, -0x1

    .line 111
    if-nez v12, :cond_0

    .line 112
    const/16 v12, 0xc

    .line 115
    :cond_0
    if-lez v12, :cond_4

    .line 116
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u6708\u4efd\u8d26\u5355\uff1a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 117
    .local v5, buffer:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->bankName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 118
    const-string v19, "["

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->bankName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->cardNum:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 121
    const-string v19, "["

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->cardNum:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->trueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 124
    const-string v19, "["

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->trueName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .end local v5           #buffer:Ljava/lang/StringBuffer;
    :cond_4
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    .restart local v5       #buffer:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, amount:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 131
    const-string v19, "\u4eba\u6c11\u5e01"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "\u5143\uff0c\u5230\u671f\u8fd8\u6b3e\u65e5"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_5
    if-nez v8, :cond_6

    if-eqz v12, :cond_7

    .line 135
    :cond_6
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "\u6708"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "\u65e5"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const v19, 0x7f02022e

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/sms/BillData;->getSms()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 210
    .end local v3           #amount:Ljava/lang/String;
    .end local v5           #buffer:Ljava/lang/StringBuffer;
    .end local v8           #day:I
    .end local v12           #month:I
    :cond_8
    :goto_0
    return-void

    .line 141
    :cond_9
    const/16 v19, 0x4

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 142
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "\u4f18\u60e0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 143
    .restart local v5       #buffer:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->bankName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 144
    const-string v19, "["

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->bankName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->cardNum:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 147
    const-string v19, "["

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->cardNum:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->trueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 150
    const-string v19, "["

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->trueName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const v19, 0x7f020384

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/sms/BillData;->getSms()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 155
    .end local v5           #buffer:Ljava/lang/StringBuffer;
    :cond_d
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 156
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "\u6d88\u8d39"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 157
    .local v6, buffer1:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->bankName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_e

    .line 158
    const-string v19, "["

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->bankName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->cardNum:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_f

    .line 161
    const-string v19, "["

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->cardNum:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->trueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_10

    .line 164
    const-string v19, "["

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->trueName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    :cond_10
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v3

    .line 168
    .restart local v3       #amount:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 169
    .restart local v5       #buffer:Ljava/lang/StringBuffer;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_11

    .line 170
    const-string v19, "\uffe5"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "\u5143"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/sms/BillData;->getUsAmount()Ljava/lang/String;

    move-result-object v17

    .line 173
    .local v17, usAmount:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_12

    .line 174
    const-string v19, "$"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "\u5143"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_12
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const v19, 0x7f02023a

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/sms/BillData;->getSms()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 180
    .end local v3           #amount:Ljava/lang/String;
    .end local v5           #buffer:Ljava/lang/StringBuffer;
    .end local v6           #buffer1:Ljava/lang/StringBuffer;
    .end local v17           #usAmount:Ljava/lang/String;
    :cond_13
    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_19

    .line 181
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "\u8fd8\u6b3e"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 182
    .restart local v6       #buffer1:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->bankName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_14

    .line 183
    const-string v19, "["

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->bankName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->cardNum:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_15

    .line 186
    const-string v19, "["

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->cardNum:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->trueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_16

    .line 189
    const-string v19, "["

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->trueName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    :cond_16
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v3

    .line 193
    .restart local v3       #amount:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 194
    .restart local v5       #buffer:Ljava/lang/StringBuffer;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_17

    .line 195
    const-string v19, "\uffe5"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "\u5143"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/sms/BillData;->getUsAmount()Ljava/lang/String;

    move-result-object v17

    .line 198
    .restart local v17       #usAmount:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_18

    .line 199
    const-string v19, "$"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "\u5143"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    :cond_18
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const v19, 0x7f020220

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/sms/BillData;->getSms()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 205
    .end local v3           #amount:Ljava/lang/String;
    .end local v5           #buffer:Ljava/lang/StringBuffer;
    .end local v6           #buffer1:Ljava/lang/StringBuffer;
    .end local v17           #usAmount:Ljava/lang/String;
    :cond_19
    const/16 v19, 0x3

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 206
    const-string v19, "\u5176\u4ed6"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/sms/BillData;->getSms()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const v19, 0x7f020388

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private initialView()V
    .locals 7

    .prologue
    .line 68
    const v5, 0x7f090039

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v5, 0x7f09003a

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f070195

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 70
    const v5, 0x7f09003c

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020390

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    const v5, 0x7f0901e3

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f02000a

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 73
    const v5, 0x7f0900ee

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 74
    .local v4, upload:Landroid/widget/Button;
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v5, 0x7f09010c

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    .local v0, feedHint:Landroid/widget/ImageView;
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v5, 0x7f09010d

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mHintFeedBackRelativeLayout:Landroid/widget/RelativeLayout;

    .line 78
    const v5, 0x7f0900ef

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mHintEditText:Landroid/widget/EditText;

    .line 79
    iget-object v5, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v5, 0x7f09010a

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mSmsFeedBottom:Landroid/widget/RelativeLayout;

    .line 81
    const v5, 0x7f09010e

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 82
    .local v1, text1:Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v5, 0x7f09010f

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 84
    .local v2, text2:Landroid/widget/TextView;
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v5, 0x7f090110

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 86
    .local v3, text3:Landroid/widget/TextView;
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->initialItem()V

    .line 88
    return-void
.end method

.method private showHint()V
    .locals 3

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->hideSoft()V

    .line 239
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mHintFeedBackRelativeLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 240
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 241
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mSmsFeedBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 242
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mHintFeedBackRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mHintFeedBackRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v4, 0x8

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 252
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 254
    :sswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->finish()V

    goto :goto_0

    .line 257
    :sswitch_1
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mContent:Ljava/lang/String;

    .line 258
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mContent:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mContent:Ljava/lang/String;

    .line 261
    :cond_1
    new-instance v3, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity$UploadSms;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity$UploadSms;-><init>(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)V

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/zhangdan/app/sms/BillData;

    iget-object v5, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    aput-object v5, v4, v6

    aput-object v8, v4, v7

    const/4 v5, 0x2

    aput-object v8, v4, v5

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity$UploadSms;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 262
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 263
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {v3, v7}, Lcom/zhangdan/app/sms/BillData;->setIs_rember(I)V

    .line 264
    const-string v3, "bill_info"

    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0, v6, v1}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->setResult(ILandroid/content/Intent;)V

    .line 266
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->finish()V

    goto :goto_0

    .line 270
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_2
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mHintFeedBackRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 271
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mHintFeedBackRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 275
    :sswitch_3
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->showHint()V

    goto :goto_0

    :sswitch_4
    move-object v2, p1

    .line 279
    check-cast v2, Landroid/widget/TextView;

    .line 280
    .local v2, text:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mHintFeedBackRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 281
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mContent:Ljava/lang/String;

    .line 282
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mHintEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v2           #text:Landroid/widget/TextView;
    :sswitch_5
    move-object v2, p1

    .line 286
    check-cast v2, Landroid/widget/TextView;

    .line 287
    .restart local v2       #text:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mHintFeedBackRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 288
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mContent:Ljava/lang/String;

    .line 289
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mHintEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v2           #text:Landroid/widget/TextView;
    :sswitch_6
    move-object v2, p1

    .line 293
    check-cast v2, Landroid/widget/TextView;

    .line 294
    .restart local v2       #text:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mHintFeedBackRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 295
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mContent:Ljava/lang/String;

    .line 296
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mHintEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090039 -> :sswitch_0
        0x7f0900ee -> :sswitch_1
        0x7f0900ef -> :sswitch_2
        0x7f09010c -> :sswitch_3
        0x7f09010e -> :sswitch_4
        0x7f09010f -> :sswitch_5
        0x7f090110 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v2, 0x7f03003f

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 50
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "card_num"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->cardNum:Ljava/lang/String;

    .line 51
    const-string v2, "bank_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->bankName:Ljava/lang/String;

    .line 52
    const-string v2, "true_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->trueName:Ljava/lang/String;

    .line 53
    const-string v2, "bill_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/sms/BillData;

    iput-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    .line 54
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 55
    const-string v2, "card_num"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->cardNum:Ljava/lang/String;

    .line 56
    const-string v2, "bank_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->bankName:Ljava/lang/String;

    .line 57
    const-string v2, "true_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->trueName:Ljava/lang/String;

    .line 58
    const-string v2, "bill_info"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/sms/BillData;

    iput-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mUserInfo:Lcom/zhangdan/app/data/model/UserInfo;

    .line 61
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 62
    .local v0, ap:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrentCity()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mCity:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->initialView()V

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/app/util/CommonMethod;->getPackageVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->version:Ljava/lang/String;

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->hideSoft()V

    .line 234
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 235
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 215
    const-string v0, "card_num"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->cardNum:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v0, "bank_name"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->bankName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v0, "true_name"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->trueName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v0, "bill_info"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 219
    return-void
.end method
