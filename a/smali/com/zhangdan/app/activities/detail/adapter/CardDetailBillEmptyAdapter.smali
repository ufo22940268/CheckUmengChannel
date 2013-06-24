.class public Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;
.super Landroid/widget/BaseAdapter;
.source "CardDetailBillEmptyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$SmsViewHolder;
    }
.end annotation


# static fields
.field private static final ITEM_TYPE_ACCOUNT_INFO:I = 0x0

.field private static final ITEM_TYPE_SMS_DETAIL:I = 0x2

.field private static final ITEM_TYPE_SMS_TITLE:I = 0x1


# instance fields
.field private mAccountView:Lcom/zhangdan/app/activities/detail/adapter/AccountView;

.field private mActivity:Landroid/app/Activity;

.field private mBillMonth:Ljava/lang/String;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtnClickListener:Landroid/view/View$OnClickListener;

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
.method public constructor <init>(Landroid/app/Activity;Lcom/zhangdan/app/data/model/UserBankInfo;Ljava/util/List;)V
    .locals 2
    .parameter "activity"
    .parameter "userBankInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p3, smsUnSettledBillList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 138
    new-instance v1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$1;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$1;-><init>(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mBtnClickListener:Landroid/view/View$OnClickListener;

    .line 189
    new-instance v1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$2;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$2;-><init>(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mActivity:Landroid/app/Activity;

    .line 47
    iput-object p2, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 48
    iput-object p3, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mUnSettledBillList:Ljava/util/List;

    .line 49
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillDate()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, billDate:Ljava/lang/String;
    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/DetailDataManager;->getCurrentBillMonth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mBillMonth:Ljava/lang/String;

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->registerScanSmsBroadcast()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mUnSettledBillList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;)Lcom/zhangdan/app/data/model/UserBankInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    return-object v0
.end method

.method private initSmsDetailView(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$SmsViewHolder;I)V
    .locals 15
    .parameter "holder"
    .parameter "position"

    .prologue
    .line 150
    add-int/lit8 p2, p2, -0x2

    .line 151
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mUnSettledBillList:Ljava/util/List;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mUnSettledBillList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move/from16 v0, p2

    if-ge v0, v9, :cond_4

    if-ltz p2, :cond_4

    .line 152
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mUnSettledBillList:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/sms/BillData;

    .line 154
    .local v3, data:Lcom/zhangdan/app/sms/BillData;
    invoke-virtual {v3}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v2

    .line 155
    .local v2, billType:I
    const/4 v9, 0x2

    if-ne v2, v9, :cond_5

    .line 156
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$SmsViewHolder;->tvSmsTitle:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mActivity:Landroid/app/Activity;

    const v11, 0x7f07015e

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 162
    .local v5, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, amount:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 164
    const-string v9, "\uffe5"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    :cond_1
    invoke-virtual {v3}, Lcom/zhangdan/app/sms/BillData;->getUsAmount()Ljava/lang/String;

    move-result-object v8

    .line 168
    .local v8, usAmount:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 169
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 170
    const-string v9, "+"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    :cond_2
    const-string v9, "$"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    :cond_3
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$SmsViewHolder;->tvSmsAmount:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v3}, Lcom/zhangdan/app/sms/BillData;->getDate()J

    move-result-wide v6

    .line 177
    .local v6, time:J
    invoke-static {v6, v7}, Lcom/zhangdan/app/util/BillDateUtils;->parseTimestampToYMDFormat(J)Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, dateStr:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$SmsViewHolder;->tvSmsTime:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mActivity:Landroid/app/Activity;

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

    .line 180
    .end local v1           #amount:Ljava/lang/String;
    .end local v2           #billType:I
    .end local v3           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v4           #dateStr:Ljava/lang/String;
    .end local v5           #sb:Ljava/lang/StringBuffer;
    .end local v6           #time:J
    .end local v8           #usAmount:Ljava/lang/String;
    :cond_4
    return-void

    .line 157
    .restart local v2       #billType:I
    .restart local v3       #data:Lcom/zhangdan/app/sms/BillData;
    :cond_5
    const/4 v9, 0x1

    if-ne v2, v9, :cond_0

    .line 158
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$SmsViewHolder;->tvSmsTitle:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mActivity:Landroid/app/Activity;

    const v11, 0x7f07015f

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private registerScanSmsBroadcast()V
    .locals 3

    .prologue
    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    .local v0, fliter:Landroid/content/IntentFilter;
    const-string v1, "scan_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "scan_finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mBillMonth:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mUnSettledBillList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mUnSettledBillList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 98
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 72
    if-nez p1, :cond_1

    .line 73
    const/4 v0, 0x0

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    if-eq p1, v0, :cond_0

    .line 77
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 103
    move-object v5, p2

    .line 104
    .local v5, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->getItemViewType(I)I

    move-result v3

    .line 105
    .local v3, itemType:I
    if-nez v5, :cond_0

    .line 106
    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mActivity:Landroid/app/Activity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 107
    .local v2, inflater:Landroid/view/LayoutInflater;
    if-nez v3, :cond_3

    .line 108
    const v6, 0x7f0300a0

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 109
    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillDate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zhangdan/app/activities/detail/DetailDataManager;->getCurrentBillMonth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, billMonth:Ljava/lang/String;
    new-instance v6, Lcom/zhangdan/app/activities/detail/adapter/AccountView;

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-direct {v6, v7, v5, v8, v0}, Lcom/zhangdan/app/activities/detail/adapter/AccountView;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/zhangdan/app/data/model/UserBankInfo;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mAccountView:Lcom/zhangdan/app/activities/detail/adapter/AccountView;

    .line 125
    .end local v0           #billMonth:Ljava/lang/String;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    if-ne v3, v9, :cond_6

    .line 126
    const v6, 0x7f09025e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 127
    .local v4, tvNoBillSms:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mUnSettledBillList:Ljava/util/List;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mUnSettledBillList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 128
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    .end local v4           #tvNoBillSms:Landroid/widget/TextView;
    :cond_2
    :goto_1
    return-object v5

    .line 111
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    :cond_3
    if-ne v3, v9, :cond_4

    .line 112
    const v6, 0x7f0300a7

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 113
    const v6, 0x7f090253

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mBillMonth:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const v6, 0x7f09025d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 115
    :cond_4
    if-ne v3, v10, :cond_0

    .line 116
    new-instance v1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$SmsViewHolder;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$SmsViewHolder;-><init>(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;)V

    .line 117
    .local v1, holder:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$SmsViewHolder;
    const v6, 0x7f0300a6

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 118
    const v6, 0x7f09025a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$SmsViewHolder;->tvSmsTitle:Landroid/widget/TextView;

    .line 119
    const v6, 0x7f09025b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$SmsViewHolder;->tvSmsAmount:Landroid/widget/TextView;

    .line 120
    const v6, 0x7f09025c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$SmsViewHolder;->tvSmsTime:Landroid/widget/TextView;

    .line 121
    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    .end local v1           #holder:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$SmsViewHolder;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #tvNoBillSms:Landroid/widget/TextView;
    :cond_5
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 131
    .end local v4           #tvNoBillSms:Landroid/widget/TextView;
    :cond_6
    if-ne v3, v10, :cond_2

    .line 132
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$SmsViewHolder;

    .line 133
    .restart local v1       #holder:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$SmsViewHolder;
    invoke-direct {p0, v1, p1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->initSmsDetailView(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$SmsViewHolder;I)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x3

    return v0
.end method

.method public refreshAccountInfo()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mAccountView:Lcom/zhangdan/app/activities/detail/adapter/AccountView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mAccountView:Lcom/zhangdan/app/activities/detail/adapter/AccountView;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->initAccountInfo()V

    .line 59
    :cond_0
    return-void
.end method
