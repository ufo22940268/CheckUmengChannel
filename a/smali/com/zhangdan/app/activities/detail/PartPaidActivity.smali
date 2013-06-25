.class public Lcom/zhangdan/app/activities/detail/PartPaidActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "PartPaidActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;
    }
.end annotation


# static fields
.field public static final BILL_BALANCE:Ljava/lang/String; = "bill_balance"

.field public static final BILL_ID:Ljava/lang/String; = "bill_id"

.field public static final BILL_STATE:Ljava/lang/String; = "bill_state"

.field private static final DIALOG_DELETE_CONFIRM:I = 0x64

.field public static final EXTRA_KEY_RETURN_AMOUNT:Ljava/lang/String; = "return_amount"

.field public static final UB_ID:Ljava/lang/String; = "ub_id"

.field public static final UB_TYPE:Ljava/lang/String; = "ub_type"


# instance fields
.field private mBalance:F

.field private mBillId:J

.field private mBillState:I

.field private mEditMode:Z

.field private mHasPaidBefore:D

.field private mIsNewPaid:Z

.field private mPayedListAdapter:Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;

.field private mUbId:J

.field private mUbType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mHasPaidBefore:D

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mBalance:F

    .line 58
    iput-boolean v2, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mIsNewPaid:Z

    .line 62
    iput-boolean v2, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mEditMode:Z

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mPayedListAdapter:Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mHasPaidBefore:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/zhangdan/app/activities/detail/PartPaidActivity;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mHasPaidBefore:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbType:I

    return v0
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mBillId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->calcUnpaidAmount()V

    return-void
.end method

.method static synthetic access$600(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mEditMode:Z

    return v0
.end method

.method private calcUnpaidAmount()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 334
    const v4, 0x7f0900eb

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 335
    .local v0, allPaid:Landroid/widget/TextView;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "#0.00"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, decimalFormat:Ljava/text/DecimalFormat;
    const v4, 0x7f070169

    new-array v6, v10, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mHasPaidBefore:D

    invoke-virtual {v1, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {p0, v4, v6}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget v4, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mBalance:F

    float-to-double v6, v4

    iget-wide v8, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mHasPaidBefore:D

    sub-double v2, v6, v8

    .line 340
    .local v2, totalRemainAmount:D
    const-wide/16 v6, 0x0

    cmpg-double v4, v2, v6

    if-gez v4, :cond_0

    .line 341
    const-wide/16 v2, 0x0

    .line 342
    :cond_0
    const v4, 0x7f0900ec

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f07016a

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mPayedListAdapter:Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;

    if-eqz v4, :cond_1

    .line 344
    const v4, 0x7f0900e9

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mPayedListAdapter:Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :cond_1
    return-void

    .line 344
    :cond_2
    const/4 v4, 0x4

    goto :goto_0
.end method

.method private initialView()V
    .locals 11

    .prologue
    .line 102
    const v7, 0x7f0900e5

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const/4 v5, 0x0

    .line 105
    .local v5, rePayList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Repayment;>;"
    iget v7, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbType:I

    if-nez v7, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mBillId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zhangdan/app/data/db/util/BillReturnDbUtil;->queryBillReturnAmountByBillId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 112
    :goto_0
    new-instance v7, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, p0, v8, v5}, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;-><init>(Lcom/zhangdan/app/activities/detail/PartPaidActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v7, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mPayedListAdapter:Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;

    .line 113
    const v7, 0x7f0900e7

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 114
    .local v2, listView:Landroid/widget/ListView;
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mPayedListAdapter:Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 116
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/data/model/http/Repayment;

    .line 117
    .local v4, pay:Lcom/zhangdan/app/data/model/http/Repayment;
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/http/Repayment;->getReturnAmount()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, money:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 119
    iget-wide v7, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mHasPaidBefore:D

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    float-to-double v9, v9

    add-double/2addr v7, v9

    iput-wide v7, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mHasPaidBefore:D

    .line 115
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    .end local v1           #i:I
    .end local v2           #listView:Landroid/widget/ListView;
    .end local v3           #money:Ljava/lang/String;
    .end local v4           #pay:Lcom/zhangdan/app/data/model/http/Repayment;
    :cond_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zhangdan/app/data/db/util/BillReturnDbUtil;->queryBillReturnAmountByBillId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 122
    .restart local v1       #i:I
    .restart local v2       #listView:Landroid/widget/ListView;
    :cond_2
    const v7, 0x7f090039

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v7, 0x7f0900ee

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 124
    .local v6, upload:Landroid/widget/Button;
    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v7, 0x7f0900ef

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 126
    .local v0, edit:Landroid/widget/EditText;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 128
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->calcUnpaidAmount()V

    .line 129
    return-void
.end method

.method private onFinish()V
    .locals 10

    .prologue
    .line 349
    const-string v0, "yuan_part_paid_back"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 351
    iget-boolean v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mIsNewPaid:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mBillState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 352
    iget v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbType:I

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbType:I

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mBillId:J

    :goto_0
    const-wide/16 v5, 0x0

    iget-wide v7, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mHasPaidBefore:D

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/zhangdan/app/activities/repay/RepayStateUtil;->setPartPaidState(Landroid/content/Context;ILjava/lang/String;JDD)J

    .line 354
    :cond_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 355
    .local v9, data:Landroid/content/Intent;
    const-string v0, "return_amount"

    iget-wide v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mHasPaidBefore:D

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 356
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->setResult(ILandroid/content/Intent;)V

    .line 357
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->finish()V

    .line 358
    return-void

    .line 352
    .end local v9           #data:Landroid/content/Intent;
    :cond_1
    iget-wide v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbId:J

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->onFinish()V

    .line 99
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 22
    .parameter "v"

    .prologue
    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v17

    .line 274
    .local v17, id:I
    sparse-switch v17, :sswitch_data_0

    .line 327
    :goto_0
    return-void

    .line 276
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->onFinish()V

    goto :goto_0

    .line 279
    :sswitch_1
    const-string v2, "yuan_part_paid_edit"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mEditMode:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mEditMode:Z

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mPayedListAdapter:Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;

    if-eqz v2, :cond_0

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mPayedListAdapter:Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->notifyDataSetChanged()V

    .line 284
    :cond_0
    const v2, 0x7f0900e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mEditMode:Z

    if-eqz v2, :cond_2

    const v2, 0x7f020151

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 280
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 284
    :cond_2
    const v2, 0x7f020172

    goto :goto_2

    .line 287
    :sswitch_2
    const-string v2, "yuan_part_paid_submit"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 288
    const v2, 0x7f0900ef

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    .line 289
    .local v16, editText:Landroid/widget/EditText;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 290
    .local v11, amountStr:Ljava/lang/String;
    invoke-static {v11}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 291
    const-string v2, "\u8bf7\u8f93\u5165\u8fd8\u6b3e\u91d1\u989d"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_3
    const-wide/16 v7, 0x0

    .line 296
    .local v7, amount:D
    :try_start_0
    invoke-static {v11}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 302
    const-wide/16 v2, 0x0

    cmpg-double v2, v7, v2

    if-gtz v2, :cond_4

    .line 303
    const-string v2, "\u8bf7\u8f93\u5165\u8fd8\u6b3e\u91d1\u989d"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :catch_0
    move-exception v15

    .line 298
    .local v15, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v15}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 299
    const-string v2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u8fd8\u6b3e\u91d1\u989d"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 307
    .end local v15           #e:Ljava/lang/NumberFormatException;
    :cond_4
    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 308
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mIsNewPaid:Z

    .line 309
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mHasPaidBefore:D

    add-double/2addr v2, v7

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mHasPaidBefore:D

    .line 311
    move-object/from16 v0, p0

    iget v3, v0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbType:I

    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbType:I

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mBillId:J

    :goto_3
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mHasPaidBefore:D

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v10}, Lcom/zhangdan/app/activities/repay/RepayStateUtil;->setPartPaidState(Landroid/content/Context;ILjava/lang/String;JDD)J

    move-result-wide v18

    .line 312
    .local v18, localId:J
    new-instance v13, Lcom/zhangdan/app/data/model/http/Repayment;

    invoke-direct {v13}, Lcom/zhangdan/app/data/model/http/Repayment;-><init>()V

    .line 313
    .local v13, data:Lcom/zhangdan/app/data/model/http/Repayment;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/zhangdan/app/data/model/http/Repayment;->setId(I)V

    .line 314
    invoke-virtual {v13, v11}, Lcom/zhangdan/app/data/model/http/Repayment;->setReturnAmount(Ljava/lang/String;)V

    .line 315
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 316
    .local v12, cal:Ljava/util/Calendar;
    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 317
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    .line 318
    .local v14, date:Ljava/util/Date;
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 319
    .local v21, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    .line 320
    .local v20, repaymentDate:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/zhangdan/app/data/model/http/Repayment;->setRepaymentDate(Ljava/lang/String;)V

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/zhangdan/app/data/model/http/Repayment;->setLocalId(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mPayedListAdapter:Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;

    invoke-virtual {v2, v13}, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->addData(Lcom/zhangdan/app/data/model/http/Repayment;)V

    .line 324
    invoke-direct/range {p0 .. p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->calcUnpaidAmount()V

    goto/16 :goto_0

    .line 311
    .end local v12           #cal:Ljava/util/Calendar;
    .end local v13           #data:Lcom/zhangdan/app/data/model/http/Repayment;
    .end local v14           #date:Ljava/util/Date;
    .end local v18           #localId:J
    .end local v20           #repaymentDate:Ljava/lang/String;
    .end local v21           #sdf:Ljava/text/SimpleDateFormat;
    :cond_5
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbId:J

    goto :goto_3

    .line 274
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090039 -> :sswitch_0
        0x7f0900e5 -> :sswitch_1
        0x7f0900ee -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f03003a

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bill_id"

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mBillId:J

    .line 71
    const-string v1, "ub_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbId:J

    .line 72
    const-string v1, "ub_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbType:I

    .line 73
    const-string v1, "bill_balance"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mBalance:F

    .line 74
    const-string v1, "bill_state"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mBillState:I

    .line 75
    iget-wide v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mBillId:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 76
    const-string v1, "bill_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mBillId:J

    .line 77
    const-string v1, "ub_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbId:J

    .line 78
    const-string v1, "ub_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbType:I

    .line 79
    const-string v1, "bill_balance"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mBalance:F

    .line 80
    const-string v1, "bill_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mBillState:I

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->initialView()V

    .line 84
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "data"

    .prologue
    .line 148
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 149
    new-instance v0, Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    const v1, 0x7f070166

    const v2, 0x7f0c0024

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogContent(II)V

    .line 151
    const v1, 0x7f070001

    const v2, 0x7f070022

    new-instance v3, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;

    invoke-direct {v3, p0, p2}, Lcom/zhangdan/app/activities/detail/PartPaidActivity$1;-><init>(Lcom/zhangdan/app/activities/detail/PartPaidActivity;Landroid/os/Bundle;)V

    new-instance v4, Lcom/zhangdan/app/activities/detail/PartPaidActivity$2;

    invoke-direct {v4, p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity$2;-><init>(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogButton(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 178
    .end local v0           #dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 144
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onPause()V

    .line 139
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onResume()V

    .line 134
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    const-string v0, "bill_id"

    iget-wide v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mBillId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 90
    const-string v0, "ub_id"

    iget-wide v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 91
    const-string v0, "ub_type"

    iget v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mUbType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v0, "bill_balance"

    iget v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mBalance:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 93
    const-string v0, "bill_state"

    iget v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mBillState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    return-void
.end method
