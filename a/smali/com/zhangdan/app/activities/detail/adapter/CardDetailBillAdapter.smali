.class public Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;
.super Landroid/widget/BaseAdapter;
.source "CardDetailBillAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;,
        Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final ITEM_TYPE_ACCOUNT_INFO:I = 0x0

.field private static final ITEM_TYPE_BILL_DETAIL:I = 0x2

.field private static final ITEM_TYPE_BILL_TITLE:I = 0x1

.field private static final ITEM_TYPE_NEED_PAY:I = 0x3

.field private static final ITEM_TYPE_SMS_DETAIL:I = 0x5

.field private static final ITEM_TYPE_SMS_TITLE:I = 0x4


# instance fields
.field private mAccountView:Lcom/zhangdan/app/activities/detail/adapter/AccountView;

.field private mActivity:Landroid/app/Activity;

.field private mBillMonth:Ljava/lang/String;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtnClickListener:Landroid/view/View$OnClickListener;

.field private mFormat:Ljava/text/DecimalFormat;

.field private mOnLayoutClickListener:Landroid/view/View$OnClickListener;

.field private mSelectedBillIndex:I

.field private mShoppingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/ShoppingSheetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUnSettledBillList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;"
        }
    .end annotation
.end field

.field private mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/zhangdan/app/data/model/UserBankInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .parameter "activity"
    .parameter "userBankInfo"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/ShoppingSheetInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p3, shoppingList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/ShoppingSheetInfo;>;"
    .local p4, smsUnSettledBillList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 66
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mFormat:Ljava/text/DecimalFormat;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mSelectedBillIndex:I

    .line 213
    new-instance v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$1;-><init>(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mOnLayoutClickListener:Landroid/view/View$OnClickListener;

    .line 228
    new-instance v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;-><init>(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mBtnClickListener:Landroid/view/View$OnClickListener;

    .line 478
    new-instance v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$3;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$3;-><init>(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;

    .line 73
    iput-object p2, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 74
    iput-object p3, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;

    .line 75
    iput-object p4, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUnSettledBillList:Ljava/util/List;

    .line 77
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/DetailDataManager;->getCurrentBillMonth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mBillMonth:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->registerScanSmsBroadcast()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mSelectedBillIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mSelectedBillIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUnSettledBillList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Lcom/zhangdan/app/data/model/UserBankInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    return-object v0
.end method

.method private initNeedPayView(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 304
    const v5, 0x7f090249

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 305
    .local v4, monthText:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mBillMonth:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    const v5, 0x7f09024c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 308
    .local v3, lastNeedPayText:Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\uffe5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mFormat:Ljava/text/DecimalFormat;

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLastBalance()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    const v5, 0x7f09024e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 311
    .local v0, currentCoastText:Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\uffe5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mFormat:Ljava/text/DecimalFormat;

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewCharges()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mFormat:Ljava/text/DecimalFormat;

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUsdNewCharges()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    const v5, 0x7f090250

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 314
    .local v1, currentIncomeText:Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\uffe5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mFormat:Ljava/text/DecimalFormat;

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLastPayment()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    const v5, 0x7f090252

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 317
    .local v2, currentNeedPay:Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\uffe5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mFormat:Ljava/text/DecimalFormat;

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mFormat:Ljava/text/DecimalFormat;

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUsdNewBalance()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method

.method private initShoppingInfoView(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;I)V
    .locals 10
    .parameter "holder"
    .parameter "position"

    .prologue
    const/4 v9, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 327
    add-int/lit8 p2, p2, -0x2

    .line 328
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    if-ltz p2, :cond_0

    .line 329
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 330
    .local v0, data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->imgCategoryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCategoryIconResId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 331
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getStoreName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->tvTitle1:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDesciption()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->tvTitle2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    :goto_0
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAmountMoney()Ljava/lang/String;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->tvMoney:Landroid/widget/TextView;

    const v4, -0xb05cf4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    :goto_1
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->tvMoney:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAmountMoney()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;

    const v5, 0x7f07009f

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getTransDate()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCardNo()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 348
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->tvRemark:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->imgRemark:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    :goto_2
    iget v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mSelectedBillIndex:I

    if-ne v1, p2, :cond_4

    .line 357
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->imgEditDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->layoutEdit:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->layoutContent:Landroid/view/View;

    const v4, 0x7f020197

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 365
    :goto_3
    iget-object v4, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->btnStar:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getIsStar()I

    move-result v1

    if-nez v1, :cond_5

    const v1, 0x7f070140

    :goto_4
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 366
    iget-object v4, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->btnStar:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getIsStar()I

    move-result v1

    if-nez v1, :cond_6

    const v1, 0x7f02015f

    :goto_5
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 367
    iget-object v4, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->imgStar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getIsStar()I

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    iget-object v4, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->imgYouhui:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDiscount()I

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_7
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->btnYouhui:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDiscount()I

    move-result v4

    if-nez v4, :cond_9

    :goto_8
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    .end local v0           #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    :cond_0
    return-void

    .line 335
    .restart local v0       #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    :cond_1
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->tvTitle1:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getStoreName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->tvTitle2:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDesciption()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->tvTitle2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 342
    :cond_2
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->tvMoney:Landroid/widget/TextView;

    const v4, -0x909091

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 351
    :cond_3
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->tvRemark:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->tvRemark:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0700a0

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getRemark()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->imgRemark:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 361
    :cond_4
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->imgEditDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->layoutEdit:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v1, p1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->layoutContent:Landroid/view/View;

    const v4, 0x7f020196

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 365
    :cond_5
    const v1, 0x7f070141

    goto/16 :goto_4

    .line 366
    :cond_6
    const v1, 0x7f02015e

    goto/16 :goto_5

    :cond_7
    move v1, v3

    .line 367
    goto :goto_6

    :cond_8
    move v1, v3

    .line 368
    goto :goto_7

    :cond_9
    move v2, v3

    .line 369
    goto :goto_8
.end method

.method private initSmsDetailView(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;I)V
    .locals 15
    .parameter "holder"
    .parameter "position"

    .prologue
    .line 374
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;

    if-eqz v9, :cond_0

    .line 375
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int v9, p2, v9

    add-int/lit8 p2, v9, -0x4

    .line 377
    :cond_0
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUnSettledBillList:Ljava/util/List;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUnSettledBillList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move/from16 v0, p2

    if-ge v0, v9, :cond_5

    if-ltz p2, :cond_5

    .line 378
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUnSettledBillList:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/sms/BillData;

    .line 380
    .local v3, data:Lcom/zhangdan/app/sms/BillData;
    invoke-virtual {v3}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v2

    .line 381
    .local v2, billType:I
    const/4 v9, 0x2

    if-ne v2, v9, :cond_6

    .line 382
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;->tvSmsTitle:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;

    const v11, 0x7f07015e

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 388
    .local v5, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, amount:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 390
    const-string v9, "\uffe5"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    :cond_2
    invoke-virtual {v3}, Lcom/zhangdan/app/sms/BillData;->getUsAmount()Ljava/lang/String;

    move-result-object v8

    .line 394
    .local v8, usAmount:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 395
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 396
    const-string v9, "+"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    :cond_3
    const-string v9, "$"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    :cond_4
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;->tvSmsAmount:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual {v3}, Lcom/zhangdan/app/sms/BillData;->getDate()J

    move-result-wide v6

    .line 403
    .local v6, time:J
    invoke-static {v6, v7}, Lcom/zhangdan/app/util/BillDateUtils;->parseTimestampToYMDFormat(J)Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, dateStr:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;->tvSmsTime:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;

    const v11, 0x7f07009c

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v3}, Lcom/zhangdan/app/sms/BillData;->getCardLast()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    .end local v1           #amount:Ljava/lang/String;
    .end local v2           #billType:I
    .end local v3           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v4           #dateStr:Ljava/lang/String;
    .end local v5           #sb:Ljava/lang/StringBuffer;
    .end local v6           #time:J
    .end local v8           #usAmount:Ljava/lang/String;
    :cond_5
    return-void

    .line 383
    .restart local v2       #billType:I
    .restart local v3       #data:Lcom/zhangdan/app/sms/BillData;
    :cond_6
    const/4 v9, 0x1

    if-ne v2, v9, :cond_1

    .line 384
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;->tvSmsTitle:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;

    const v11, 0x7f07015f

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private registerScanSmsBroadcast()V
    .locals 3

    .prologue
    .line 472
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 473
    .local v0, fliter:Landroid/content/IntentFilter;
    const-string v1, "scan_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    const-string v1, "scan_finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 476
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUnSettledBillList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    .line 127
    :goto_0
    return v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUnSettledBillList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 138
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 97
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;

    if-eqz v3, :cond_6

    .line 98
    if-nez p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    if-ne p1, v1, :cond_2

    move v0, v1

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    add-int/lit8 v0, p1, -0x2

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 103
    const/4 v0, 0x2

    goto :goto_0

    .line 104
    :cond_3
    add-int/lit8 v0, p1, -0x2

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    move v0, v2

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    if-ne p1, v0, :cond_5

    .line 107
    const/4 v0, 0x4

    goto :goto_0

    .line 109
    :cond_5
    const/4 v0, 0x5

    goto :goto_0

    .line 112
    :cond_6
    if-eqz p1, :cond_0

    move v0, v2

    .line 115
    goto :goto_0
.end method

.method public getShoppingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/ShoppingSheetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->getItemViewType(I)I

    move-result v2

    .line 144
    .local v2, itemType:I
    move-object v5, p2

    .line 145
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_0

    .line 146
    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 147
    .local v1, inflater:Landroid/view/LayoutInflater;
    if-nez v2, :cond_2

    .line 148
    const v6, 0x7f0300a0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 149
    new-instance v6, Lcom/zhangdan/app/activities/detail/adapter/AccountView;

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mBillMonth:Ljava/lang/String;

    invoke-direct {v6, v7, v5, v8, v9}, Lcom/zhangdan/app/activities/detail/adapter/AccountView;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/zhangdan/app/data/model/UserBankInfo;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mAccountView:Lcom/zhangdan/app/activities/detail/adapter/AccountView;

    .line 193
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    const/4 v6, 0x2

    if-ne v2, v6, :cond_7

    .line 194
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;

    .line 195
    .local v0, holder:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;
    invoke-virtual {v5, p1}, Landroid/view/View;->setId(I)V

    .line 196
    iget-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->btnStar:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 197
    iget-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->btnEditRemark:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 198
    iget-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->btnYouhui:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 199
    invoke-direct {p0, v0, p1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->initShoppingInfoView(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;I)V

    .line 210
    .end local v0           #holder:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;
    :cond_1
    :goto_1
    return-object v5

    .line 150
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    :cond_2
    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    .line 151
    const v6, 0x7f0300a3

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 152
    const v6, 0x7f090253

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 153
    .local v3, tvBillMonth:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mBillMonth:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 154
    .end local v3           #tvBillMonth:Landroid/widget/TextView;
    :cond_3
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 155
    const v6, 0x7f0300a1

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 156
    new-instance v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;-><init>(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)V

    .line 157
    .restart local v0       #holder:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;
    const v6, 0x7f09023b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->imgCategoryIcon:Landroid/widget/ImageView;

    .line 158
    const v6, 0x7f090240

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->tvTitle1:Landroid/widget/TextView;

    .line 159
    const v6, 0x7f090241

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->tvTitle2:Landroid/widget/TextView;

    .line 160
    const v6, 0x7f090242

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    .line 161
    const v6, 0x7f09023c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->tvMoney:Landroid/widget/TextView;

    .line 162
    const v6, 0x7f090243

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->tvRemark:Landroid/widget/TextView;

    .line 163
    const v6, 0x7f090244

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->imgEditDivider:Landroid/widget/ImageView;

    .line 164
    const v6, 0x7f090245

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->layoutEdit:Landroid/view/View;

    .line 165
    const v6, 0x7f090246

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->btnStar:Landroid/widget/TextView;

    .line 166
    const v6, 0x7f090248

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->btnYouhui:Landroid/widget/TextView;

    .line 167
    const v6, 0x7f090247

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->btnEditRemark:Landroid/widget/TextView;

    .line 168
    const v6, 0x7f09023d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->imgYouhui:Landroid/widget/ImageView;

    .line 169
    const v6, 0x7f09023e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->imgRemark:Landroid/widget/ImageView;

    .line 170
    const v6, 0x7f09023f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->imgStar:Landroid/widget/ImageView;

    .line 171
    iget-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->btnStar:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->btnYouhui:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->btnEditRemark:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iput-object v5, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->layoutContent:Landroid/view/View;

    .line 175
    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mOnLayoutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 177
    .end local v0           #holder:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;
    :cond_4
    const/4 v6, 0x3

    if-ne v2, v6, :cond_5

    .line 178
    const v6, 0x7f0300a2

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 179
    invoke-direct {p0, v5}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->initNeedPayView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 180
    :cond_5
    const/4 v6, 0x4

    if-ne v2, v6, :cond_6

    .line 181
    const v6, 0x7f0300a7

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 182
    const v6, 0x7f090253

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mBillMonth:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const v6, 0x7f09025d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 184
    :cond_6
    const/4 v6, 0x5

    if-ne v2, v6, :cond_0

    .line 185
    const v6, 0x7f0300a6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 186
    new-instance v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;-><init>(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)V

    .line 187
    .local v0, holder:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;
    const v6, 0x7f09025a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;->tvSmsTitle:Landroid/widget/TextView;

    .line 188
    const v6, 0x7f09025b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;->tvSmsAmount:Landroid/widget/TextView;

    .line 189
    const v6, 0x7f09025c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;->tvSmsTime:Landroid/widget/TextView;

    .line 190
    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 200
    .end local v0           #holder:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_7
    const/4 v6, 0x5

    if-ne v2, v6, :cond_8

    .line 201
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;

    .line 202
    .restart local v0       #holder:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;
    invoke-direct {p0, v0, p1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->initSmsDetailView(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;I)V

    goto/16 :goto_1

    .line 203
    .end local v0           #holder:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;
    :cond_8
    const/4 v6, 0x4

    if-ne v2, v6, :cond_1

    .line 204
    const v6, 0x7f09025e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 205
    .local v4, tvNoBillSms:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUnSettledBillList:Ljava/util/List;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUnSettledBillList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_a

    .line 206
    :cond_9
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 208
    :cond_a
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x6

    return v0
.end method

.method public refreshAccountInfo()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mAccountView:Lcom/zhangdan/app/activities/detail/adapter/AccountView;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mAccountView:Lcom/zhangdan/app/activities/detail/adapter/AccountView;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->initAccountInfo()V

    .line 422
    :cond_0
    return-void
.end method

.method public refreshAccountReturnPartView()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mAccountView:Lcom/zhangdan/app/activities/detail/adapter/AccountView;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mAccountView:Lcom/zhangdan/app/activities/detail/adapter/AccountView;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->initReturnPartView()V

    .line 414
    :cond_0
    return-void
.end method

.method public refreshShoopingInfo(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 14
    .parameter "autoId"
    .parameter "storeName"
    .parameter "remark"
    .parameter "categoryId"
    .parameter "userId"

    .prologue
    .line 428
    iget-object v11, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;

    if-nez v11, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    const/4 v10, 0x0

    .line 431
    .local v10, shoppingInfo:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    iget-object v11, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 432
    .local v4, data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAutoId()J

    move-result-wide v11

    cmp-long v11, v11, p1

    if-nez v11, :cond_2

    .line 433
    move-object v10, v4

    .line 437
    .end local v4           #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    :cond_3
    if-eqz v10, :cond_0

    .line 439
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setHasRemark(I)V

    .line 440
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setStoreName(Ljava/lang/String;)V

    .line 441
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setRemark(Ljava/lang/String;)V

    .line 442
    move/from16 v0, p5

    invoke-virtual {v10, v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setCustomCategoryId(I)V

    .line 444
    if-eqz p5, :cond_6

    move/from16 v3, p5

    .line 445
    .local v3, currCategoryId:I
    :goto_1
    iget-object v11, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v11, v3}, Lcom/zhangdan/app/data/db/util/ConsumeCategoryDbUtil;->queryCategoryName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, categoryName:Ljava/lang/String;
    iget-object v11, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v11, v3}, Lcom/zhangdan/app/data/db/util/ConsumeCategoryDbUtil;->queryCategory(Landroid/content/Context;I)Lcom/zhangdan/app/data/model/http/Category;

    move-result-object v1

    .line 447
    .local v1, category:Lcom/zhangdan/app/data/model/http/Category;
    const/4 v9, 0x0

    .line 448
    .local v9, parentId:I
    if-eqz v1, :cond_4

    .line 449
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/Category;->getCategotyName()Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/Category;->getParntId()I

    move-result v9

    .line 451
    const/4 v11, -0x1

    if-ne v9, v11, :cond_4

    .line 452
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/Category;->getCategoryId()I

    move-result v9

    .line 454
    :cond_4
    invoke-static {v2}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 455
    iget-object v11, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;

    const v12, 0x7f070117

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 457
    :cond_5
    invoke-virtual {v10, v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setCategoryName(Ljava/lang/String;)V

    .line 458
    invoke-static {v9}, Lcom/zhangdan/app/data/CategoryIconRes;->getIconByParentId(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setCategoryIconResId(I)V

    .line 461
    iget-object v11, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v11, v10}, Lcom/zhangdan/app/data/db/util/ShoppingSheetDbUtil;->updateRemarkInfo(Landroid/content/Context;Lcom/zhangdan/app/data/model/ShoppingSheetInfo;)V

    .line 462
    iget-object v11, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p6

    invoke-static {v11, v10, v0}, Lcom/zhangdan/app/data/db/util/ShoppingSheetRemarkDbUtil;->saveShoppingSheetRemark(Landroid/content/Context;Lcom/zhangdan/app/data/model/ShoppingSheetInfo;Ljava/lang/String;)J

    move-result-wide v7

    .line 463
    .local v7, localId:J
    iget-object v11, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-static {v11, v0, v12}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->saveShoppingRemarkSyncTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 465
    .local v6, intent:Landroid/content/Intent;
    const-string v11, "com.zhangdan.app.mail_account_update"

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    iget-object v11, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v11}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 468
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 444
    .end local v1           #category:Lcom/zhangdan/app/data/model/http/Category;
    .end local v2           #categoryName:Ljava/lang/String;
    .end local v3           #currCategoryId:I
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #localId:J
    .end local v9           #parentId:I
    :cond_6
    invoke-virtual {v10}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCategoryId()I

    move-result v3

    goto :goto_1
.end method
