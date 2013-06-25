.class public Lcom/zhangdan/app/activities/sms/SmsBillActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "SmsBillActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/app/shake/OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/sms/SmsBillActivity$MyHandler;
    }
.end annotation


# static fields
.field public static final EXTRA_KEY_SCAN_SMS:Ljava/lang/String; = "scan_sms"

.field public static final SMS_LIST:Ljava/lang/String; = "sms_list"

.field public static final UPDATE:I = 0x1

.field public static final UPDATE_SMS:Ljava/lang/String; = "update_sms"


# instance fields
.field private isScaning:Z

.field private mApp:Lcom/zhangdan/app/ZhangdanApplication;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Lcom/zhangdan/app/activities/sms/SmsBillActivity$MyHandler;

.field private mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

.field private mListView:Landroid/widget/ListView;

.field private mRela:Landroid/widget/RelativeLayout;

.field private mScanCount:I

.field private mShakeManager:Lcom/zhangdan/app/shake/ShakeManager;

.field private mSmsBillBaseAdapter:Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;

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

.field private mSmsTempBillDataInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/SmsBillData;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillDataInfos:Ljava/util/List;

    .line 57
    iput-boolean v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->isScaning:Z

    .line 65
    new-instance v0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity$MyHandler;-><init>(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mHandler:Lcom/zhangdan/app/activities/sms/SmsBillActivity$MyHandler;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsTempBillDataInfos:Ljava/util/List;

    .line 70
    iput v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mScanCount:I

    .line 288
    new-instance v0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$2;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity$2;-><init>(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 328
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->isScaning:Z

    return v0
.end method

.method static synthetic access$002(Lcom/zhangdan/app/activities/sms/SmsBillActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->isScaning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillDataInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zhangdan/app/activities/sms/SmsBillActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillDataInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getSmsUserBank()V

    return-void
.end method

.method static synthetic access$408(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mScanCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mScanCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Lcom/zhangdan/app/activities/sms/SmsBillActivity$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mHandler:Lcom/zhangdan/app/activities/sms/SmsBillActivity$MyHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->update()V

    return-void
.end method

.method private getSmsUserBank()V
    .locals 15

    .prologue
    .line 122
    invoke-static {p0}, Lcom/zhangdan/app/data/db/util/SmsUserBankDbUtil;->loadAllSmsUserBankInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    .line 123
    .local v12, userBankInfos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    if-eqz v12, :cond_0

    if-eqz v12, :cond_1

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 124
    :cond_0
    invoke-direct {p0, v12}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->merge(Ljava/util/List;)V

    .line 125
    :cond_1
    iget-object v13, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillDataInfos:Ljava/util/List;

    if-eqz v13, :cond_3

    if-eqz v12, :cond_3

    .line 126
    const/4 v9, 0x0

    .local v9, j:I
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v9, v13, :cond_3

    .line 127
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 128
    .local v8, info:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v1

    .line 129
    .local v1, bankId:I
    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v13

    long-to-int v2, v13

    .line 130
    .local v2, billId:I
    const/4 v13, 0x0

    invoke-static {p0, v1, v2, v13}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->getCountWithBillType(Landroid/content/Context;III)I

    move-result v3

    .line 131
    .local v3, billSum:I
    const/4 v13, 0x1

    invoke-static {p0, v1, v2, v13}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->getCountWithBillType(Landroid/content/Context;III)I

    move-result v4

    .line 132
    .local v4, costSum:I
    const/4 v13, 0x2

    invoke-static {p0, v1, v2, v13}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->getCountWithBillType(Landroid/content/Context;III)I

    move-result v7

    .line 133
    .local v7, incomeSum:I
    const/4 v13, 0x4

    invoke-static {p0, v1, v2, v13}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->getCountWithBillType(Landroid/content/Context;III)I

    move-result v6

    .line 134
    .local v6, discountSum:I
    const/4 v13, 0x3

    invoke-static {p0, v1, v2, v13}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->getCountWithBillType(Landroid/content/Context;III)I

    move-result v10

    .line 135
    .local v10, otherSum:I
    new-instance v11, Lcom/zhangdan/app/sms/SmsBillData;

    invoke-direct {v11}, Lcom/zhangdan/app/sms/SmsBillData;-><init>()V

    .line 136
    .local v11, sms:Lcom/zhangdan/app/sms/SmsBillData;
    invoke-virtual {v11, v1}, Lcom/zhangdan/app/sms/SmsBillData;->setBankId(I)V

    .line 137
    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/SmsBillData;->setBillId(I)V

    .line 138
    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/zhangdan/app/sms/SmsBillData;->setBankName(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v11, v3}, Lcom/zhangdan/app/sms/SmsBillData;->setBillNum(I)V

    .line 140
    invoke-virtual {v11, v4}, Lcom/zhangdan/app/sms/SmsBillData;->setCostNum(I)V

    .line 141
    invoke-virtual {v11, v7}, Lcom/zhangdan/app/sms/SmsBillData;->setIncomeNum(I)V

    .line 142
    invoke-virtual {v11, v6}, Lcom/zhangdan/app/sms/SmsBillData;->setDiscountNum(I)V

    .line 143
    invoke-virtual {v11, v10}, Lcom/zhangdan/app/sms/SmsBillData;->setOtherNum(I)V

    .line 144
    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/zhangdan/app/sms/SmsBillData;->setCardNum(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/UserBankInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, date:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 147
    const-string v13, "-"

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, array:[Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v13, v0, v13

    invoke-virtual {v11, v13}, Lcom/zhangdan/app/sms/SmsBillData;->setPayDate(Ljava/lang/String;)V

    .line 151
    .end local v0           #array:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/zhangdan/app/sms/SmsBillData;->setTruename(Ljava/lang/String;)V

    .line 152
    iget-object v13, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillDataInfos:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 156
    .end local v1           #bankId:I
    .end local v2           #billId:I
    .end local v3           #billSum:I
    .end local v4           #costSum:I
    .end local v5           #date:Ljava/lang/String;
    .end local v6           #discountSum:I
    .end local v7           #incomeSum:I
    .end local v8           #info:Lcom/zhangdan/app/data/model/UserBankInfo;
    .end local v9           #j:I
    .end local v10           #otherSum:I
    .end local v11           #sms:Lcom/zhangdan/app/sms/SmsBillData;
    :cond_3
    return-void
.end method

.method private initialView()V
    .locals 3

    .prologue
    .line 217
    const v1, 0x7f0901ad

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 218
    .local v0, search:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v1, 0x7f0901ae

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mListView:Landroid/widget/ListView;

    .line 220
    new-instance v1, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillBaseAdapter:Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;

    .line 221
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillBaseAdapter:Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillDataInfos:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;->setData(Ljava/util/List;)V

    .line 222
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillBaseAdapter:Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 223
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/zhangdan/app/activities/sms/SmsBillActivity$1;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity$1;-><init>(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 246
    return-void
.end method

.method private merge(Ljava/util/List;)V
    .locals 27
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
    .line 159
    .local p1, userBankInfos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mApp:Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v2}, Lcom/zhangdan/app/ZhangdanApplication;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhangdan/app/global/DataManager;->getUserBankInfoList()Ljava/util/List;

    move-result-object v21

    .line 160
    .local v21, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    if-eqz p1, :cond_4

    .line 161
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_4

    .line 162
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 163
    .local v18, info:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v14

    .line 164
    .local v14, cardNo:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, name:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v12

    .line 166
    .local v12, bankid:I
    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/data/model/UserBankInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, paymentdueDate:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    const-string v2, "/"

    const-string v3, "-"

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 169
    :cond_0
    const/16 v20, 0x0

    .local v20, j:I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_3

    .line 170
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 171
    .local v25, temp:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual/range {v25 .. v25}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v22

    .line 172
    .local v22, smsBankid:I
    invoke-virtual/range {v25 .. v25}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v23

    .line 173
    .local v23, smsCardNo:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v24

    .line 174
    .local v24, smsTrueName:Ljava/lang/String;
    move/from16 v0, v22

    if-ne v12, v0, :cond_2

    .line 175
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->setNameOnBill(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v25 .. v25}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/zhangdan/app/data/db/util/SmsUserBankDbUtil;->updateSmsUserBankInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 182
    :cond_1
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 185
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCardNo(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual/range {v25 .. v25}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v10

    move-object v7, v14

    move-object v9, v5

    invoke-static/range {v6 .. v11}, Lcom/zhangdan/app/data/db/util/SmsUserBankDbUtil;->updateSmsUserBankInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 169
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 161
    .end local v22           #smsBankid:I
    .end local v23           #smsCardNo:Ljava/lang/String;
    .end local v24           #smsTrueName:Ljava/lang/String;
    .end local v25           #temp:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 194
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #paymentdueDate:Ljava/lang/String;
    .end local v12           #bankid:I
    .end local v14           #cardNo:Ljava/lang/String;
    .end local v15           #i:I
    .end local v18           #info:Lcom/zhangdan/app/data/model/UserBankInfo;
    .end local v20           #j:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/data/db/util/SmsUserBankDbUtil;->queryTheSameCard(Landroid/content/Context;)Ljava/util/List;

    move-result-object v19

    .line 195
    .local v19, infos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_7

    .line 196
    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 197
    .restart local v18       #info:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v13

    .line 198
    .local v13, card:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 199
    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v16

    .line 200
    .local v16, id:J
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/zhangdan/app/data/db/util/SmsUserBankDbUtil;->deleteSmsUserBank(Landroid/content/Context;J)V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/zhangdan/app/data/db/util/SmsUserBankDbUtil;->queryBillIdWitchCard(Landroid/content/Context;Ljava/lang/String;)Lcom/zhangdan/app/data/model/UserBankInfo;

    move-result-object v26

    .line 202
    .local v26, usr:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v6

    long-to-int v3, v6

    move-wide/from16 v0, v16

    long-to-int v6, v0

    invoke-static {v2, v3, v6}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->updateBillId(Landroid/content/Context;II)V

    .line 203
    if-eqz p1, :cond_6

    .line 204
    const/16 v20, 0x0

    .restart local v20       #j:I
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_6

    .line 205
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 206
    .restart local v25       #temp:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual/range {v25 .. v25}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v2

    cmp-long v2, v2, v16

    if-nez v2, :cond_5

    .line 207
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 204
    :cond_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 195
    .end local v16           #id:J
    .end local v20           #j:I
    .end local v25           #temp:Lcom/zhangdan/app/data/model/UserBankInfo;
    .end local v26           #usr:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 214
    .end local v13           #card:Ljava/lang/String;
    .end local v18           #info:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_7
    return-void
.end method

.method private startScanSms()V
    .locals 3

    .prologue
    .line 354
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zhangdan/app/service/SmsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "is_scan_all"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 357
    return-void
.end method

.method private update()V
    .locals 4

    .prologue
    .line 311
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillDataInfos:Ljava/util/List;

    monitor-enter v2

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsTempBillDataInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 313
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillDataInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsTempBillDataInfos:Ljava/util/List;

    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillDataInfos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillBaseAdapter:Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsTempBillDataInfos:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;->setData(Ljava/util/List;)V

    .line 319
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillBaseAdapter:Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/sms/SmsBillBaseAdapter;->notifyDataSetChanged()V

    .line 320
    const v1, 0x7f0901ac

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mRela:Landroid/widget/RelativeLayout;

    .line 321
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsTempBillDataInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mRela:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 326
    :goto_1
    return-void

    .line 316
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 324
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mRela:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->isScaning:Z

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "\u6b63\u5728\u626b\u63cf\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 280
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 282
    :pswitch_0
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->startScanSms()V

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x7f0901ad
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v2, 0x7f03007e

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/ZhangdanApplication;

    iput-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mApp:Lcom/zhangdan/app/ZhangdanApplication;

    .line 80
    new-instance v2, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    const v3, 0x7f09003c

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, p0, v3, v5}, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v0, fliter:Landroid/content/IntentFilter;
    const-string v2, "scan_finish"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v2, "scan_process"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v2, "scan_start"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v2, "update_sms"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getSmsUserBank()V

    .line 89
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->initialView()V

    .line 90
    const v2, 0x7f0901af

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mText:Landroid/widget/TextView;

    .line 91
    const v2, 0x7f0901ac

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mRela:Landroid/widget/RelativeLayout;

    .line 92
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillDataInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mRela:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 98
    :goto_0
    new-instance v2, Lcom/zhangdan/app/shake/ShakeManager;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/shake/ShakeManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mShakeManager:Lcom/zhangdan/app/shake/ShakeManager;

    .line 99
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mShakeManager:Lcom/zhangdan/app/shake/ShakeManager;

    invoke-virtual {v2, p0}, Lcom/zhangdan/app/shake/ShakeManager;->setOnShakeListener(Lcom/zhangdan/app/shake/OnShakeListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "scan_sms"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 102
    .local v1, scanSmsFlag:I
    if-ne v1, v5, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->startScanSms()V

    .line 105
    :cond_0
    return-void

    .line 95
    .end local v1           #scanSmsFlag:I
    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mRela:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 256
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mShakeManager:Lcom/zhangdan/app/shake/ShakeManager;

    invoke-virtual {v0}, Lcom/zhangdan/app/shake/ShakeManager;->destroy()V

    .line 257
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->onDestroy()V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    .line 261
    :cond_0
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 262
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onPause()V

    .line 267
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mShakeManager:Lcom/zhangdan/app/shake/ShakeManager;

    invoke-virtual {v0}, Lcom/zhangdan/app/shake/ShakeManager;->pause()V

    .line 268
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onResume()V

    .line 273
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mShakeManager:Lcom/zhangdan/app/shake/ShakeManager;

    invoke-virtual {v0}, Lcom/zhangdan/app/shake/ShakeManager;->start()V

    .line 274
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public onShake()V
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->isScaning:Z

    if-eqz v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 365
    :cond_0
    iget v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mScanCount:I

    if-nez v0, :cond_1

    .line 366
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->startScanSms()V

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->finish()V

    goto :goto_0
.end method
