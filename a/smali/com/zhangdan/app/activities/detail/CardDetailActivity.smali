.class public Lcom/zhangdan/app/activities/detail/CardDetailActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "CardDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog$OnReturnStateDialogClickListener;
.implements Lcom/zhangdan/app/activities/remark/SearchDiscountTask$OnSearchDiscountListener;
.implements Lcom/zhangdan/app/location/BaiduLocation$LocationListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;,
        Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;,
        Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;,
        Lcom/zhangdan/app/activities/detail/CardDetailActivity$DeleteUserBankTask;,
        Lcom/zhangdan/app/activities/detail/CardDetailActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final DIALOG_CANNOT_SET_UNPAID:I = 0x8

.field private static final DIALOG_CHOOSE_MERGE_CARD:I = 0x7

.field private static final DIALOG_DELETE_CARD:I = 0x5

.field private static final DIALOG_DOWNLOAD_ALIPAY:I = 0x3

.field private static final DIALOG_EDIT_CREDIT_LIMIT:I = 0x9

.field private static final DIALOG_MERGE_CARD_CONFIRM:I = 0x6

.field private static final DIALOG_PAID_CONFIRM:I = 0x2

.field private static final DIALOG_SET_RETURN_STATE:I = 0x1

.field public static final KEY_USER_BANK_INFO:Ljava/lang/String; = "key_user_bank"

.field public static final REQ_EDIT_REMARK:I = 0x65

.field public static final REQ_PAY_PART_CODE:I = 0x64


# instance fields
.field private mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;

.field private mCanMergeUserBankList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

.field private mCardDetailEmptyAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

.field private mCurrCity:Ljava/lang/String;

.field private mFormat:Ljava/text/DecimalFormat;

.field private mHeadView:Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;

.field private mImgFootExpression:Landroid/widget/ImageView;

.field private mInitBannerTask:Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;

.field private mListView:Landroid/widget/ListView;

.field private mLocFlag:Z

.field private mMergedCardIndex:I

.field private mMorePd:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

.field private mMyHandler:Lcom/zhangdan/app/activities/detail/CardDetailActivity$MyHandler;

.field private mOnMoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSearchDiscountTask:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

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

.field private mSmsUnSettledBillData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;"
        }
    .end annotation
.end field

.field private mTextViewFootReturnState:Landroid/widget/TextView;

.field private mTextViewTitle:Landroid/widget/TextView;

.field private mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 127
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mFormat:Ljava/text/DecimalFormat;

    .line 131
    iput v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMergedCardIndex:I

    .line 137
    new-instance v0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MyHandler;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMyHandler:Lcom/zhangdan/app/activities/detail/CardDetailActivity$MyHandler;

    .line 144
    iput-boolean v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mLocFlag:Z

    .line 344
    new-instance v0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mOnMoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 908
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMorePd:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->jump2HistoryBillPage()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/preferential/widget/PrefBannerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/zhangdan/app/activities/detail/CardDetailActivity;Lcom/zhangdan/preferential/widget/PrefBannerView;)Lcom/zhangdan/preferential/widget/PrefBannerView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mHeadView:Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCanMergeUserBankList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/data/model/UserBankInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->refreshUIOnReturnStateChanged()V

    return-void
.end method

.method static synthetic access$502(Lcom/zhangdan/app/activities/detail/CardDetailActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMergedCardIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/zhangdan/app/activities/detail/CardDetailActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->deleteUserBank(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailEmptyAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCurrCity:Ljava/lang/String;

    return-object v0
.end method

.method private callConstumeService()V
    .locals 9

    .prologue
    const v8, 0x7f070186

    const/4 v7, 0x0

    .line 622
    const-string v5, "yuan_detail_tel"

    invoke-static {p0, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v6

    invoke-static {v5, v6, v7}, Lcom/zhangdan/app/data/db/util/BankServiceDbUtil;->getBankServiceList(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v2

    .line 624
    .local v2, bankList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 625
    :cond_0
    invoke-virtual {p0, v8}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 641
    :goto_0
    return-void

    .line 628
    :cond_1
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/BankService;

    .line 629
    .local v0, bank:Lcom/zhangdan/app/data/model/http/BankService;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BankService;->getBankServiceContent()Lcom/zhangdan/app/data/model/http/BankServiceContent;

    move-result-object v1

    .line 630
    .local v1, bankContent:Lcom/zhangdan/app/data/model/http/BankServiceContent;
    if-nez v1, :cond_2

    .line 631
    invoke-virtual {p0, v8}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_2
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/BankServiceContent;->getTelList()Ljava/util/List;

    move-result-object v4

    .line 635
    .local v4, telList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 636
    :cond_3
    invoke-virtual {p0, v8}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_4
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;

    .line 640
    .local v3, tel:Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zhangdan/app/util/CommonMethod;->call(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private changeBottomReturnState()V
    .locals 3

    .prologue
    .line 564
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v0

    .line 565
    .local v0, state:I
    if-nez v0, :cond_1

    .line 566
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mImgFootExpression:Landroid/widget/ImageView;

    const v2, 0x7f0202f2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 567
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mTextViewFootReturnState:Landroid/widget/TextView;

    const v2, 0x7f070093

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 569
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mImgFootExpression:Landroid/widget/ImageView;

    const v2, 0x7f0202f7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 570
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mTextViewFootReturnState:Landroid/widget/TextView;

    const v2, 0x7f070099

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 571
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 572
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mImgFootExpression:Landroid/widget/ImageView;

    const v2, 0x7f0202fe

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 573
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mTextViewFootReturnState:Landroid/widget/TextView;

    const v2, 0x7f070096

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 574
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 575
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mImgFootExpression:Landroid/widget/ImageView;

    const v2, 0x7f0202f5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 576
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mTextViewFootReturnState:Landroid/widget/TextView;

    const v2, 0x7f070097

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 577
    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mImgFootExpression:Landroid/widget/ImageView;

    const v2, 0x7f020301

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 579
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mTextViewFootReturnState:Landroid/widget/TextView;

    const v2, 0x7f070098

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private deleteUserBank(Ljava/lang/String;)V
    .locals 3
    .parameter "ubId"

    .prologue
    .line 734
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    invoke-static {p0, p1}, Lcom/zhangdan/app/data/db/util/UserBankDbUtil;->deleteUserBank(Landroid/content/Context;Ljava/lang/String;)V

    .line 736
    invoke-static {p0, p1}, Lcom/zhangdan/app/data/db/util/BillDbUtil;->queryBillIdsByUbId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 737
    .local v0, billIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/zhangdan/app/data/db/util/BillDbUtil;->deleteBillByUbId(Landroid/content/Context;Ljava/lang/String;)V

    .line 738
    invoke-static {p0, v0}, Lcom/zhangdan/app/data/db/util/ShoppingSheetDbUtil;->deleteShoppingSheetByBillIds(Landroid/content/Context;Ljava/util/List;)V

    .line 739
    invoke-static {p0, p1}, Lcom/zhangdan/app/data/db/util/UserCardDbUtil;->deleteUserCardByUbId(Landroid/content/Context;Ljava/lang/String;)V

    .line 743
    .end local v0           #billIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 741
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/zhangdan/app/data/db/util/SmsUserBankDbUtil;->deleteSmsUserBank(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 279
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mTextViewTitle:Landroid/widget/TextView;

    .line 280
    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mListView:Landroid/widget/ListView;

    .line 281
    const v0, 0x7f0900ab

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mTextViewFootReturnState:Landroid/widget/TextView;

    .line 282
    const v0, 0x7f0900aa

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mImgFootExpression:Landroid/widget/ImageView;

    .line 283
    return-void
.end method

.method private initTitleBtns()V
    .locals 1

    .prologue
    .line 289
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    const v0, 0x7f0900a2

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    const v0, 0x7f0900a5

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v0, 0x7f0900a7

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const v0, 0x7f0900a9

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    return-void
.end method

.method private jump2Alipay()V
    .locals 4

    .prologue
    .line 601
    const-string v2, "yuan_detail_alipay"

    invoke-static {p0, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 603
    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v2

    if-nez v2, :cond_0

    .line 604
    const v2, 0x7f07009b

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 616
    :goto_0
    return-void

    .line 607
    :cond_0
    const-string v2, "alipays://platformapi/startapp?appId=09999999&sourceId=51zhangdan&clientVersion=%1$s&outTradeNo=%2$s&cardTailNumber=%3$s&amount=%4$s&userName=%5$s&bankMark=%6$s&returnUrl=%7$s"

    invoke-static {p0, v2}, Lcom/zhangdan/app/util/CommonMethod;->canOpenAppUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 608
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 609
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 610
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 611
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    const-string v2, "key_user_bank"

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v0, v2, v3}, Lcom/zhangdan/app/ZhangdanApplication;->addCacheObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 612
    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 614
    .end local v0           #app:Lcom/zhangdan/app/ZhangdanApplication;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method private jump2HistoryBillPage()V
    .locals 5

    .prologue
    .line 664
    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 665
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 666
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 667
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    const-string v2, "key_user_bank"

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v0, v2, v3}, Lcom/zhangdan/app/ZhangdanApplication;->addCacheObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 668
    const-class v2, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 669
    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 681
    .end local v0           #app:Lcom/zhangdan/app/ZhangdanApplication;
    :goto_0
    return-void

    .line 671
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 672
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 673
    const-string v2, "bank_name"

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 675
    const-string v2, "card_num"

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    :cond_2
    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 677
    const-string v2, "true_name"

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    :cond_3
    const-string v2, "bill_id"

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 679
    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private refreshUIOnReturnStateChanged()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mHeadView:Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mHeadView:Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->initBillStatusView()V

    .line 554
    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->changeBottomReturnState()V

    .line 555
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->refreshAccountReturnPartView()V

    .line 558
    :cond_1
    return-void
.end method

.method private searchCanMergedUserBank()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v2

    .line 648
    .local v2, dataMgr:Lcom/zhangdan/app/global/DataManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v0, canMergeList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    invoke-virtual {v2}, Lcom/zhangdan/app/global/DataManager;->getUserBankInfoList()Ljava/util/List;

    move-result-object v4

    .line 650
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 651
    .local v1, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 653
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 654
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 657
    .end local v1           #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_1
    return-object v0
.end method

.method private startLocation()V
    .locals 5

    .prologue
    .line 953
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 954
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrentCity()Ljava/lang/String;

    move-result-object v1

    .line 955
    .local v1, city:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 956
    invoke-static {p0}, Lcom/zhangdan/app/location/BaiduLocation;->getInstance(Landroid/content/Context;)Lcom/zhangdan/app/location/BaiduLocation;

    move-result-object v2

    .line 957
    .local v2, location:Lcom/zhangdan/app/location/BaiduLocation;
    invoke-virtual {v2, p0}, Lcom/zhangdan/app/location/BaiduLocation;->registerListener(Lcom/zhangdan/app/location/BaiduLocation$LocationListener;)V

    .line 958
    invoke-virtual {v2}, Lcom/zhangdan/app/location/BaiduLocation;->start()V

    .line 959
    invoke-virtual {v2}, Lcom/zhangdan/app/location/BaiduLocation;->requestLoction()V

    .line 965
    .end local v2           #location:Lcom/zhangdan/app/location/BaiduLocation;
    :goto_0
    return-void

    .line 961
    :cond_0
    iput-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCurrCity:Ljava/lang/String;

    .line 962
    new-instance v3, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;)V

    iput-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mInitBannerTask:Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;

    .line 963
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mInitBannerTask:Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    goto :goto_0
.end method

.method private unregisterLocationListener()V
    .locals 1

    .prologue
    .line 968
    invoke-static {p0}, Lcom/zhangdan/app/location/BaiduLocation;->getInstance(Landroid/content/Context;)Lcom/zhangdan/app/location/BaiduLocation;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/location/BaiduLocation;->unregisterListener(Lcom/zhangdan/app/location/BaiduLocation$LocationListener;)V

    .line 969
    return-void
.end method


# virtual methods
.method public displayCardDetail()V
    .locals 4

    .prologue
    .line 718
    new-instance v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mShoppingList:Ljava/util/List;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mSmsUnSettledBillData:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;-><init>(Landroid/app/Activity;Lcom/zhangdan/app/data/model/UserBankInfo;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    .line 719
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 721
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCurrCity:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    new-instance v0, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCurrCity:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mSearchDiscountTask:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    .line 723
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mSearchDiscountTask:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mShoppingList:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 724
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mSearchDiscountTask:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->setOnSearchDiscountListener(Lcom/zhangdan/app/activities/remark/SearchDiscountTask$OnSearchDiscountListener;)V

    .line 726
    :cond_0
    return-void
.end method

.method public jump2PartPaidPage()V
    .locals 5

    .prologue
    .line 587
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 588
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 589
    const-string v1, "bill_id"

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLastBillId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 590
    const-string v1, "ub_id"

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 591
    const-string v2, "ub_type"

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    const-string v1, "bill_balance"

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUsdNewBalance()F

    move-result v3

    sget-object v4, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_RMB:Lcom/zhangdan/app/util/CurrencyUtil;

    invoke-virtual {v4}, Lcom/zhangdan/app/util/CurrencyUtil;->getRate()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 593
    const-string v1, "bill_state"

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 594
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 595
    return-void

    .line 591
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 236
    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/WrappedActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 237
    const/16 v0, 0x64

    if-ne p1, v0, :cond_4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 238
    if-nez p3, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const-string v0, "return_amount"

    const-wide/16 v10, 0x0

    invoke-virtual {p3, v0, v10, v11}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v8

    .line 241
    .local v8, returnAmount:D
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    double-to-float v6, v8

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/UserBankInfo;->setReturnAmount(F)V

    .line 242
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v0

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUsdNewBalance()F

    move-result v6

    sget-object v10, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_RMB:Lcom/zhangdan/app/util/CurrencyUtil;

    invoke-virtual {v10}, Lcom/zhangdan/app/util/CurrencyUtil;->getRate()F

    move-result v10

    mul-float/2addr v6, v10

    add-float/2addr v0, v6

    float-to-double v10, v0

    cmpl-double v0, v8, v10

    if-ltz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    .line 244
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-static {p0, v0}, Lcom/zhangdan/app/activities/repay/RepayStateUtil;->setPaidState(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V

    .line 255
    :goto_1
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->refreshUIOnReturnStateChanged()V

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    .line 248
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 249
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "com.zhangdan.app.user_bank_changed"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v0, "ub_id"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v10}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v0, "status"

    const/4 v6, 0x0

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const-string v6, "user_bank_type"

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v7, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_1

    .line 252
    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 256
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #returnAmount:D
    :cond_4
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 257
    if-eqz p3, :cond_0

    .line 259
    const-string v0, "custom_category_id"

    const/4 v6, 0x0

    invoke-virtual {p3, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 260
    .local v5, customCategoryId:I
    const-string v0, "store_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, storeName:Ljava/lang/String;
    const-string v0, "remark"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, remark:Ljava/lang/String;
    const-string v0, "auto_id"

    const-wide/16 v10, 0x0

    invoke-virtual {p3, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 263
    .local v1, auotId:J
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->refreshShoopingInfo(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCurrCity:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mSearchDiscountTask:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    if-eqz v0, :cond_5

    .line 267
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mSearchDiscountTask:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->cancel(Z)Z

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mSearchDiscountTask:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    .line 270
    :cond_5
    new-instance v0, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCurrCity:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mSearchDiscountTask:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    .line 271
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mSearchDiscountTask:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/util/List;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    invoke-virtual {v11}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->getShoppingList()Ljava/util/List;

    move-result-object v11

    aput-object v11, v6, v10

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 272
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mSearchDiscountTask:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->setOnSearchDiscountListener(Lcom/zhangdan/app/activities/remark/SearchDiscountTask$OnSearchDiscountListener;)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f090039

    if-ne v4, v5, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->finish()V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0900a2

    if-ne v4, v5, :cond_7

    .line 301
    const-string v4, "yuan_detail_more"

    invoke-static {p0, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMorePd:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    if-nez v4, :cond_2

    .line 303
    new-instance v4, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-direct {v4, p0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMorePd:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    .line 304
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMorePd:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v4, p1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 305
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMorePd:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0055

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setContentWidth(I)V

    .line 306
    const/4 v3, 0x1

    .line 307
    .local v3, showMerge:Z
    const/4 v2, 0x1

    .line 308
    .local v2, showEdit:Z
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v4

    if-nez v4, :cond_3

    .line 309
    const/4 v3, 0x0

    .line 310
    const/4 v2, 0x0

    .line 322
    :goto_1
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMorePd:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    new-instance v5, Lcom/zhangdan/app/activities/detail/adapter/DetailMoreAdapter;

    invoke-direct {v5, p0, v3, v2}, Lcom/zhangdan/app/activities/detail/adapter/DetailMoreAdapter;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 323
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMorePd:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mOnMoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 326
    .end local v2           #showEdit:Z
    .end local v3           #showMerge:Z
    :cond_2
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMorePd:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v4}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->show()V

    goto :goto_0

    .line 312
    .restart local v2       #showEdit:Z
    .restart local v3       #showMerge:Z
    :cond_3
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->searchCanMergedUserBank()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCanMergeUserBankList:Ljava/util/List;

    .line 313
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCanMergeUserBankList:Ljava/util/List;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCanMergeUserBankList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 314
    :cond_4
    const/4 v3, 0x0

    .line 315
    :cond_5
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    .line 317
    const/4 v2, 0x1

    goto :goto_1

    .line 319
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 327
    .end local v2           #showEdit:Z
    .end local v3           #showMerge:Z
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0900a5

    if-ne v4, v5, :cond_8

    .line 328
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->callConstumeService()V

    goto :goto_0

    .line 329
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0900a7

    if-ne v4, v5, :cond_9

    .line 330
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->jump2Alipay()V

    goto/16 :goto_0

    .line 331
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0900a9

    if-ne v4, v5, :cond_a

    .line 332
    const-string v4, "yuan_detail_set_return_state"

    invoke-static {p0, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 333
    const/4 v4, 0x0

    invoke-virtual {p0, v6, v4}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 334
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f090255

    if-ne v4, v5, :cond_0

    .line 335
    const-string v4, "yuan_detail_youhui_banner"

    invoke-static {p0, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 336
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 337
    .local v1, intent:Landroid/content/Intent;
    const-class v4, Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 338
    new-array v0, v6, [I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v5

    aput v5, v0, v4

    .line 339
    .local v0, idArr:[I
    const-string v4, "ids"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f090255

    .line 148
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const v4, 0x7f03002a

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->setContentView(I)V

    .line 151
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViews()V

    .line 152
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->initTitleBtns()V

    .line 154
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 155
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    const-string v4, "key_user_bank"

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/ZhangdanApplication;->getCacheObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/data/model/UserBankInfo;

    iput-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 156
    const-string v4, "key_user_bank"

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/ZhangdanApplication;->removeCacheObject(Ljava/lang/String;)V

    .line 157
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    if-nez v4, :cond_0

    if-eqz p1, :cond_0

    .line 158
    const-string v4, "user_bank"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/data/model/UserBankInfo;

    iput-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 160
    :cond_0
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    if-nez v4, :cond_2

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mTextViewTitle:Landroid/widget/TextView;

    const v5, 0x7f070091

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300a5

    invoke-virtual {v4, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 167
    .local v3, view:Landroid/view/View;
    new-instance v4, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-direct {v4, v3, v5}, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;-><init>(Landroid/view/View;Lcom/zhangdan/app/data/model/UserBankInfo;)V

    iput-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mHeadView:Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;

    .line 168
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 169
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300a4

    invoke-virtual {v4, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 170
    .local v1, footView:Landroid/view/View;
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 171
    const-string v4, "youhui_banner"

    invoke-static {p0, v4}, Lcom/umeng/analytics/MobclickAgent;->getConfigParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, onlineConfigYouhui:Ljava/lang/String;
    const-string v4, "disabled"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 173
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :goto_1
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->changeBottomReturnState()V

    .line 180
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v4

    if-nez v4, :cond_4

    .line 181
    new-instance v4, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-static {p0, v6}, Lcom/zhangdan/app/activities/detail/DetailDataManager;->getSmsUnSettledBills(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;-><init>(Landroid/app/Activity;Lcom/zhangdan/app/data/model/UserBankInfo;Ljava/util/List;)V

    iput-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailEmptyAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    .line 182
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailEmptyAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    :goto_2
    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->startLocation()V

    goto/16 :goto_0

    .line 175
    :cond_3
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 185
    :cond_4
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .parameter "id"
    .parameter "args"

    .prologue
    .line 415
    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    .line 416
    new-instance v2, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v6

    invoke-direct {v2, p0, v6}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;-><init>(Landroid/content/Context;I)V

    .line 417
    .local v2, dialog:Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;
    invoke-virtual {v2, p0}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->setOnReturnStateDialogClickListener(Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog$OnReturnStateDialogClickListener;)V

    .line 526
    .end local v2           #dialog:Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;
    :goto_0
    return-object v2

    .line 419
    :cond_0
    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    .line 420
    new-instance v2, Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/widget/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 421
    .local v2, dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    const v6, 0x7f0700d2

    invoke-virtual {v2, v6}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogTitle(I)V

    .line 422
    const v6, 0x7f0700a1

    const v7, 0x7f0c0024

    invoke-virtual {v2, v6, v7}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogContent(II)V

    .line 423
    const v6, 0x7f070001

    const v7, 0x7f070022

    new-instance v8, Lcom/zhangdan/app/activities/detail/CardDetailActivity$2;

    invoke-direct {v8, p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$2;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    new-instance v9, Lcom/zhangdan/app/activities/detail/CardDetailActivity$3;

    invoke-direct {v9, p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$3;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogButton(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 439
    .end local v2           #dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    :cond_1
    const/4 v6, 0x3

    if-ne p1, v6, :cond_2

    .line 440
    new-instance v2, Lcom/zhangdan/app/activities/alipay/AlipayPromptDownloadDialog;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/alipay/AlipayPromptDownloadDialog;-><init>(Landroid/content/Context;)V

    .line 441
    .local v2, dialog:Lcom/zhangdan/app/activities/alipay/AlipayPromptDownloadDialog;
    goto :goto_0

    .line 442
    .end local v2           #dialog:Lcom/zhangdan/app/activities/alipay/AlipayPromptDownloadDialog;
    :cond_2
    const/4 v6, 0x5

    if-ne p1, v6, :cond_3

    .line 443
    new-instance v2, Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/widget/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 444
    .local v2, dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    const v6, 0x7f070148

    invoke-virtual {p0, v6}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0c0024

    invoke-virtual {v2, v6, v7}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogContent(Ljava/lang/String;I)V

    .line 445
    const v6, 0x7f070001

    const v7, 0x7f070022

    new-instance v8, Lcom/zhangdan/app/activities/detail/CardDetailActivity$4;

    invoke-direct {v8, p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$4;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    new-instance v9, Lcom/zhangdan/app/activities/detail/CardDetailActivity$5;

    invoke-direct {v9, p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$5;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogButton(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 459
    .end local v2           #dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    :cond_3
    const/4 v6, 0x6

    if-ne p1, v6, :cond_6

    .line 460
    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCanMergeUserBankList:Ljava/util/List;

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMergedCardIndex:I

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCanMergeUserBankList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v6, v7, :cond_5

    .line 461
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 462
    :cond_5
    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCanMergeUserBankList:Ljava/util/List;

    iget v7, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMergedCardIndex:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 463
    .local v5, mergedUserBank:Lcom/zhangdan/app/data/model/UserBankInfo;
    const v6, 0x7f07014b

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v9}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v9}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v9}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, content:Ljava/lang/String;
    new-instance v2, Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/widget/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 467
    .restart local v2       #dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    const v6, 0x7f0c0018

    invoke-virtual {v2, v1, v6}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogContent(Ljava/lang/String;I)V

    .line 468
    const v6, 0x7f07014d

    const v7, 0x7f07014e

    new-instance v8, Lcom/zhangdan/app/activities/detail/CardDetailActivity$6;

    invoke-direct {v8, p0, v5}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$6;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;Lcom/zhangdan/app/data/model/UserBankInfo;)V

    new-instance v9, Lcom/zhangdan/app/activities/detail/CardDetailActivity$7;

    invoke-direct {v9, p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$7;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogButton(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 482
    .end local v1           #content:Ljava/lang/String;
    .end local v2           #dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    .end local v5           #mergedUserBank:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_6
    const/4 v6, 0x7

    if-ne p1, v6, :cond_9

    .line 483
    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCanMergeUserBankList:Ljava/util/List;

    if-nez v6, :cond_7

    .line 484
    invoke-super {p0, p1, p2}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    goto/16 :goto_0

    .line 485
    :cond_7
    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCanMergeUserBankList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 486
    .local v4, items:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v6, v4

    if-ge v3, v6, :cond_8

    .line 487
    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCanMergeUserBankList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 488
    .restart local v5       #mergedUserBank:Lcom/zhangdan/app/data/model/UserBankInfo;
    const v6, 0x7f07014b

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v9}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v9}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v9}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 491
    .restart local v1       #content:Ljava/lang/String;
    aput-object v1, v4, v3

    .line 486
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 493
    .end local v1           #content:Ljava/lang/String;
    .end local v5           #mergedUserBank:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 494
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v6, Lcom/zhangdan/app/activities/detail/CardDetailActivity$8;

    invoke-direct {v6, p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$8;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 502
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 503
    .local v2, dialog:Landroid/app/Dialog;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 505
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #dialog:Landroid/app/Dialog;
    .end local v3           #i:I
    .end local v4           #items:[Ljava/lang/String;
    :cond_9
    const/16 v6, 0x8

    if-ne p1, v6, :cond_a

    .line 506
    new-instance v2, Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/widget/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 507
    .local v2, dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    const v6, 0x7f07016b

    const v7, 0x7f0c0023

    invoke-virtual {v2, v6, v7}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogContent(II)V

    .line 508
    const v6, 0x7f070001

    new-instance v7, Lcom/zhangdan/app/activities/detail/CardDetailActivity$9;

    invoke-direct {v7, p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$9;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    invoke-virtual {v2, v6, v7}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogButton(ILandroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 515
    .end local v2           #dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    :cond_a
    const/16 v6, 0x9

    if-ne p1, v6, :cond_b

    .line 516
    new-instance v2, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCreditLimit()F

    move-result v6

    invoke-direct {v2, p0, v6}, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;-><init>(Landroid/content/Context;F)V

    .line 517
    .local v2, dialog:Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;
    new-instance v6, Lcom/zhangdan/app/activities/detail/CardDetailActivity$10;

    invoke-direct {v6, p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$10;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    invoke-virtual {v2, v6}, Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;->setOnEditCreditLimitListener(Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog$OnEditCreditLimitListener;)V

    goto/16 :goto_0

    .line 526
    .end local v2           #dialog:Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog;
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 217
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 218
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->unregisterLocationListener()V

    .line 219
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mSearchDiscountTask:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mSearchDiscountTask:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->cancel(Z)Z

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mSearchDiscountTask:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mInitBannerTask:Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mInitBannerTask:Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->cancel(Z)Z

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->destroy()V

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailEmptyAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailEmptyAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->destroy()V

    .line 232
    :cond_3
    return-void
.end method

.method public onLocationChanged(Lcom/baidu/location/BDLocation;DDLjava/lang/String;)V
    .locals 4
    .parameter "bdLocation"
    .parameter "longtitude"
    .parameter "latitude"
    .parameter "city"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 973
    iget-boolean v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mLocFlag:Z

    if-eqz v0, :cond_0

    .line 985
    :goto_0
    return-void

    .line 975
    :cond_0
    iput-boolean v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mLocFlag:Z

    .line 976
    invoke-static {p0}, Lcom/zhangdan/app/location/BaiduLocation;->getInstance(Landroid/content/Context;)Lcom/zhangdan/app/location/BaiduLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/location/BaiduLocation;->stop()V

    .line 977
    iput-object p6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCurrCity:Ljava/lang/String;

    .line 978
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    if-eqz v0, :cond_1

    .line 979
    new-instance v0, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCurrCity:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mSearchDiscountTask:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    .line 980
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mSearchDiscountTask:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    new-array v1, v2, [Ljava/util/List;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->getShoppingList()Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 981
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mSearchDiscountTask:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->setOnSearchDiscountListener(Lcom/zhangdan/app/activities/remark/SearchDiscountTask$OnSearchDiscountListener;)V

    .line 983
    :cond_1
    new-instance v0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mInitBannerTask:Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;

    .line 984
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mInitBannerTask:Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onPause()V

    .line 204
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/PrefBannerView;->stopSliding()V

    .line 207
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 9
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    const/4 v8, 0x1

    .line 531
    if-ne p1, v8, :cond_2

    .line 532
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mFormat:Ljava/text/DecimalFormat;

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getReturnAmount()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .local v3, returnPartAmount:Ljava/lang/String;
    move-object v4, p2

    .line 533
    check-cast v4, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->changeReturnState(ILjava/lang/String;)V

    .line 544
    .end local v3           #returnPartAmount:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/WrappedActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 545
    :cond_1
    return-void

    .line 534
    :cond_2
    const/4 v4, 0x6

    if-ne p1, v4, :cond_0

    .line 535
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCanMergeUserBankList:Ljava/util/List;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMergedCardIndex:I

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCanMergeUserBankList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    move-object v0, p2

    .line 537
    check-cast v0, Lcom/zhangdan/app/widget/CustomAlertDialog;

    .line 538
    .local v0, alertDialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCanMergeUserBankList:Ljava/util/List;

    iget v5, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMergedCardIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 539
    .local v2, mergedUserBank:Lcom/zhangdan/app/data/model/UserBankInfo;
    const v4, 0x7f07014b

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, content:Ljava/lang/String;
    const v4, 0x7f0c0018

    invoke-virtual {v0, v1, v4}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogContent(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onResume()V

    .line 196
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/PrefBannerView;->startSliding()V

    .line 199
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 212
    const-string v0, "user_bank"

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 213
    return-void
.end method

.method public onSearchDiscount(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 904
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->notifyDataSetChanged()V

    .line 906
    :cond_0
    return-void
.end method

.method public onSetReturnStateClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0901df

    if-ne v1, v2, :cond_2

    .line 378
    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    .line 379
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v0

    .line 380
    .local v0, billState:I
    if-eq v0, v3, :cond_0

    .line 381
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getReturnAmount()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 382
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v5}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 411
    .end local v0           #billState:I
    :cond_0
    :goto_0
    return-void

    .line 384
    .restart local v0       #billState:I
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v1, v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    .line 385
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-static {p0, v1}, Lcom/zhangdan/app/activities/repay/RepayStateUtil;->setUnpaidState(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V

    .line 386
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->refreshUIOnReturnStateChanged()V

    goto :goto_0

    .line 389
    .end local v0           #billState:I
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0901e0

    if-ne v1, v2, :cond_4

    .line 390
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v0

    .line 391
    .restart local v0       #billState:I
    if-eq v0, v4, :cond_3

    .line 392
    invoke-virtual {p0, v4, v5}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 394
    :cond_3
    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    goto :goto_0

    .line 396
    .end local v0           #billState:I
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0901e1

    if-ne v1, v2, :cond_5

    .line 397
    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    .line 398
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->jump2PartPaidPage()V

    goto :goto_0

    .line 399
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0900a5

    if-ne v1, v2, :cond_6

    .line 400
    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    .line 401
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->callConstumeService()V

    goto :goto_0

    .line 402
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0900a7

    if-ne v1, v2, :cond_7

    .line 403
    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    .line 404
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->jump2Alipay()V

    goto :goto_0

    .line 405
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0900a9

    if-ne v1, v2, :cond_8

    .line 406
    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    goto :goto_0

    .line 407
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0901dd

    if-ne v1, v2, :cond_0

    .line 408
    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    .line 409
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getMailSender()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zhangdan/app/activities/detail/DetailDataManager;->gotoMailActivity(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 708
    .local v2, userId:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLastBillId()J

    move-result-wide v0

    .line 709
    .local v0, billId:J
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0, v1}, Lcom/zhangdan/app/activities/detail/DetailDataManager;->getShoppingSheetInfos(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mShoppingList:Ljava/util/List;

    .line 710
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-static {v3, v4}, Lcom/zhangdan/app/activities/detail/DetailDataManager;->getSmsUnSettledBills(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mSmsUnSettledBillData:Ljava/util/List;

    .line 711
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMyHandler:Lcom/zhangdan/app/activities/detail/CardDetailActivity$MyHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 712
    return-void
.end method
