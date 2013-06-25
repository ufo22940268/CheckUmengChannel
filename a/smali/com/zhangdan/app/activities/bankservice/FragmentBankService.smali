.class public Lcom/zhangdan/app/activities/bankservice/FragmentBankService;
.super Landroid/support/v4/app/Fragment;
.source "FragmentBankService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final REQ_CODE_SETTING:I = 0x1


# instance fields
.field private mBankId:I

.field private mBankServiceAdapter:Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;

.field private mImgLock:Landroid/widget/ImageView;

.field private mLayoutBottom:Landroid/view/View;

.field private mLayoutUpdatte:Landroid/widget/RelativeLayout;

.field private mServiceContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BankServiceContent;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceType:I

.field private mSetUpdate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/zhangdan/app/data/ServiceSettingType;",
            ">;"
        }
    .end annotation
.end field

.field private mTvEmpty:Landroid/widget/TextView;

.field private mTvUpdate:Landroid/widget/TextView;

.field private mUpdateFlag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mServiceContentList:Ljava/util/List;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mUpdateFlag:I

    return-void
.end method

.method private checkUpdate()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 140
    iget-object v7, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mServiceContentList:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mServiceContentList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mSetUpdate:Ljava/util/Set;

    .line 143
    iput v10, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mUpdateFlag:I

    .line 144
    iget-object v7, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mServiceContentList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/BankServiceContent;

    .line 145
    .local v0, bank:Lcom/zhangdan/app/data/model/BankServiceContent;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankServiceContent;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zhangdan/app/data/ServiceSettingType;->checkSettingType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 146
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/ServiceSettingType;>;"
    if-eqz v4, :cond_2

    .line 147
    iget-object v7, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mSetUpdate:Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 148
    invoke-virtual {v0, v10}, Lcom/zhangdan/app/data/model/BankServiceContent;->setFlag(I)V

    .line 149
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhangdan/app/data/ServiceSettingType;

    .line 150
    .local v5, type:Lcom/zhangdan/app/data/ServiceSettingType;
    const-string v3, ""

    .line 151
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v7

    sget-object v8, Lcom/zhangdan/app/data/ServiceSettingType;->ID_NO_FULL:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v8}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 152
    const-string v3, "idno"

    .line 162
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/zhangdan/app/data/sharedprefs/BankServiceSharedPreferMgr;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, value:Ljava/lang/String;
    invoke-static {v6}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 164
    invoke-virtual {v0, v9}, Lcom/zhangdan/app/data/model/BankServiceContent;->setFlag(I)V

    .line 165
    iput v9, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mUpdateFlag:I

    goto :goto_1

    .line 153
    .end local v6           #value:Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v7

    sget-object v8, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v8}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v8

    if-ne v7, v8, :cond_6

    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "card_no"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mBankId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 155
    :cond_6
    invoke-virtual {v5}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v7

    sget-object v8, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO_LAST_FOUR:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v8}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v8

    if-ne v7, v8, :cond_7

    .line 156
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "card_last_four"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mBankId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 157
    :cond_7
    invoke-virtual {v5}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v7

    sget-object v8, Lcom/zhangdan/app/data/ServiceSettingType;->CHECK_PWD:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v8}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v8

    if-ne v7, v8, :cond_8

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkpass"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mBankId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 159
    :cond_8
    invoke-virtual {v5}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v7

    sget-object v8, Lcom/zhangdan/app/data/ServiceSettingType;->EMAIL:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v8}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "email"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mBankId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 171
    .end local v0           #bank:Lcom/zhangdan/app/data/model/BankServiceContent;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/ServiceSettingType;>;"
    .end local v5           #type:Lcom/zhangdan/app/data/ServiceSettingType;
    :cond_9
    iget-object v7, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mSetUpdate:Ljava/util/Set;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mSetUpdate:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 172
    :cond_a
    const/4 v7, 0x0

    iput v7, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mUpdateFlag:I

    goto/16 :goto_0
.end method

.method private init(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 176
    const v1, 0x7f09018d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mLayoutBottom:Landroid/view/View;

    .line 177
    const v1, 0x7f09018e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mLayoutUpdatte:Landroid/widget/RelativeLayout;

    .line 178
    const v1, 0x7f09018f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mImgLock:Landroid/widget/ImageView;

    .line 179
    const v1, 0x7f090190

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mTvUpdate:Landroid/widget/TextView;

    .line 180
    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mLayoutUpdatte:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v1, 0x102000a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 183
    .local v0, listView:Landroid/widget/ListView;
    new-instance v1, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mServiceContentList:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mBankServiceAdapter:Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;

    .line 184
    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mBankServiceAdapter:Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 186
    const v1, 0x1020004

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mTvEmpty:Landroid/widget/TextView;

    .line 187
    iget-object v2, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mTvEmpty:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mBankServiceAdapter:Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    invoke-direct {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->updateUpgradeState()V

    .line 190
    return-void

    .line 187
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private jump2SettingActivity(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/ServiceSettingType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, settingList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/ServiceSettingType;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 235
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 236
    const-string v2, "service_type"

    iget v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mServiceType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    const-string v2, "bank_id"

    iget v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mBankId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 239
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    const-string v2, "key_setting_info"

    invoke-virtual {v0, v2, p1}, Lcom/zhangdan/app/ZhangdanApplication;->addCacheObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->startActivityForResult(Landroid/content/Intent;I)V

    .line 241
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f040003

    const v4, 0x7f040005

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 242
    return-void
.end method

.method private replacePlaceHolder(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "method"
    .parameter "serviceType"

    .prologue
    const/4 v5, 0x0

    .line 279
    invoke-static {p1}, Lcom/zhangdan/app/data/ServiceSettingType;->checkSettingType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 280
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/ServiceSettingType;>;"
    move-object v2, p1

    .line 281
    .local v2, tempStr:Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 282
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/data/ServiceSettingType;

    .line 283
    .local v3, type:Lcom/zhangdan/app/data/ServiceSettingType;
    invoke-virtual {v3}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v6

    sget-object v7, Lcom/zhangdan/app/data/ServiceSettingType;->ID_NO_FULL:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 284
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "idno"

    invoke-static {v6, v7}, Lcom/zhangdan/app/data/sharedprefs/BankServiceSharedPreferMgr;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, val:Ljava/lang/String;
    invoke-static {v4}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 286
    if-nez p2, :cond_1

    .line 287
    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->jump2SettingActivity(Ljava/util/List;)V

    .line 338
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #type:Lcom/zhangdan/app/data/ServiceSettingType;
    .end local v4           #val:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 290
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #type:Lcom/zhangdan/app/data/ServiceSettingType;
    .restart local v4       #val:Ljava/lang/String;
    :cond_1
    sget-object v6, Lcom/zhangdan/app/data/ServiceSettingType;->ID_NO_FULL:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/ServiceSettingType;->getDesc()Ljava/lang/String;

    move-result-object v4

    .line 293
    :cond_2
    sget-object v6, Lcom/zhangdan/app/data/ServiceSettingType;->ID_NO_FULL:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/ServiceSettingType;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 294
    goto :goto_0

    .end local v4           #val:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v6

    sget-object v7, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 295
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "card_no"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mBankId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zhangdan/app/data/sharedprefs/BankServiceSharedPreferMgr;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 296
    .restart local v4       #val:Ljava/lang/String;
    invoke-static {v4}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 297
    if-nez p2, :cond_4

    .line 298
    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->jump2SettingActivity(Ljava/util/List;)V

    goto :goto_1

    .line 301
    :cond_4
    sget-object v6, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/ServiceSettingType;->getDesc()Ljava/lang/String;

    move-result-object v4

    .line 303
    :cond_5
    sget-object v6, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/ServiceSettingType;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 304
    goto/16 :goto_0

    .end local v4           #val:Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v6

    sget-object v7, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO_LAST_FOUR:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v7

    if-ne v6, v7, :cond_9

    .line 305
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "card_last_four"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mBankId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zhangdan/app/data/sharedprefs/BankServiceSharedPreferMgr;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 306
    .restart local v4       #val:Ljava/lang/String;
    invoke-static {v4}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 307
    if-nez p2, :cond_7

    .line 308
    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->jump2SettingActivity(Ljava/util/List;)V

    goto/16 :goto_1

    .line 311
    :cond_7
    sget-object v6, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO_LAST_FOUR:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/ServiceSettingType;->getDesc()Ljava/lang/String;

    move-result-object v4

    .line 313
    :cond_8
    sget-object v6, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO_LAST_FOUR:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/ServiceSettingType;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 314
    goto/16 :goto_0

    .end local v4           #val:Ljava/lang/String;
    :cond_9
    invoke-virtual {v3}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v6

    sget-object v7, Lcom/zhangdan/app/data/ServiceSettingType;->CHECK_PWD:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v7

    if-ne v6, v7, :cond_c

    .line 315
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkpass"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mBankId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zhangdan/app/data/sharedprefs/BankServiceSharedPreferMgr;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 316
    .restart local v4       #val:Ljava/lang/String;
    invoke-static {v4}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 317
    if-nez p2, :cond_a

    .line 318
    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->jump2SettingActivity(Ljava/util/List;)V

    goto/16 :goto_1

    .line 321
    :cond_a
    sget-object v6, Lcom/zhangdan/app/data/ServiceSettingType;->CHECK_PWD:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/ServiceSettingType;->getDesc()Ljava/lang/String;

    move-result-object v4

    .line 324
    :cond_b
    sget-object v6, Lcom/zhangdan/app/data/ServiceSettingType;->CHECK_PWD:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/ServiceSettingType;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 325
    goto/16 :goto_0

    .end local v4           #val:Ljava/lang/String;
    :cond_c
    invoke-virtual {v3}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v6

    sget-object v7, Lcom/zhangdan/app/data/ServiceSettingType;->EMAIL:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "email"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mBankId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zhangdan/app/data/sharedprefs/BankServiceSharedPreferMgr;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 327
    .restart local v4       #val:Ljava/lang/String;
    invoke-static {v4}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 328
    if-nez p2, :cond_d

    .line 329
    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->jump2SettingActivity(Ljava/util/List;)V

    goto/16 :goto_1

    .line 332
    :cond_d
    sget-object v6, Lcom/zhangdan/app/data/ServiceSettingType;->EMAIL:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/ServiceSettingType;->getDesc()Ljava/lang/String;

    move-result-object v4

    .line 334
    :cond_e
    sget-object v6, Lcom/zhangdan/app/data/ServiceSettingType;->EMAIL:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/ServiceSettingType;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #type:Lcom/zhangdan/app/data/ServiceSettingType;
    .end local v4           #val:Ljava/lang/String;
    :cond_f
    move-object v5, v2

    .line 338
    goto/16 :goto_1
.end method

.method private updateUpgradeState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 193
    iget v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mUpdateFlag:I

    if-nez v3, :cond_1

    .line 194
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mLayoutBottom:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mUpdateFlag:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 196
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mLayoutBottom:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mLayoutUpdatte:Landroid/widget/RelativeLayout;

    const v4, 0x7f02011e

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 198
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mImgLock:Landroid/widget/ImageView;

    const v4, 0x7f0200cd

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 199
    iget-object v4, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mTvUpdate:Landroid/widget/TextView;

    iget v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mServiceType:I

    if-nez v3, :cond_2

    const v3, 0x7f070189

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v3, 0x7f07018a

    goto :goto_1

    .line 200
    :cond_3
    iget v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mUpdateFlag:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 201
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mLayoutBottom:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mLayoutUpdatte:Landroid/widget/RelativeLayout;

    const v4, 0x7f020107

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 203
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    .local v1, sb:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mSetUpdate:Ljava/util/Set;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mSetUpdate:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 205
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mSetUpdate:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/ServiceSettingType;

    .line 206
    .local v2, type:Lcom/zhangdan/app/data/ServiceSettingType;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/zhangdan/app/data/ServiceSettingType;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 208
    .end local v2           #type:Lcom/zhangdan/app/data/ServiceSettingType;
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 210
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mTvUpdate:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mImgLock:Landroid/widget/ImageView;

    const v4, 0x7f0200cf

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 128
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->checkUpdate()V

    .line 130
    invoke-direct {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->updateUpgradeState()V

    .line 131
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mBankServiceAdapter:Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mBankServiceAdapter:Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;->notifyDataSetChanged()V

    .line 134
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 217
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mLayoutUpdatte:Landroid/widget/RelativeLayout;

    if-ne p1, v3, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "bank_service_upgrade"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v2, settingList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/ServiceSettingType;>;"
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mSetUpdate:Ljava/util/Set;

    if-eqz v3, :cond_0

    .line 221
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mSetUpdate:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/ServiceSettingType;

    .line 222
    .local v0, data:Lcom/zhangdan/app/data/ServiceSettingType;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    .end local v0           #data:Lcom/zhangdan/app/data/ServiceSettingType;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0, v2}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->jump2SettingActivity(Ljava/util/List;)V

    .line 226
    .end local v2           #settingList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/ServiceSettingType;>;"
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const-string v6, "BankService"

    const-string v7, "FragmentTel: onCreate()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 73
    .local v3, data:Landroid/os/Bundle;
    const-string v6, "bank_id"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mBankId:I

    .line 74
    const-string v6, "service_type"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mServiceType:I

    .line 75
    const-string v6, "BankService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bankId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mBankId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 78
    .local v0, activity:Landroid/app/Activity;
    iget v6, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mServiceType:I

    if-nez v6, :cond_1

    .line 79
    iget v6, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mBankId:I

    invoke-static {v0, v6}, Lcom/zhangdan/app/data/db/util/BankServiceDbUtil;->queryTelBankService(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 80
    .local v2, bankServiceList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    invoke-static {v2}, Lcom/zhangdan/app/data/BankServiceJsonUtil;->mergeTelServiceContent(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mServiceContentList:Ljava/util/List;

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->checkUpdate()V

    .line 102
    return-void

    .line 82
    .end local v2           #bankServiceList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    :cond_1
    iget v6, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mBankId:I

    invoke-static {v0, v6}, Lcom/zhangdan/app/data/db/util/BankServiceDbUtil;->querySmsBankService(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 83
    .restart local v2       #bankServiceList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    invoke-static {v2}, Lcom/zhangdan/app/data/BankServiceJsonUtil;->mergeSmsServiceContent(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mServiceContentList:Ljava/util/List;

    .line 84
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/zhangdan/app/util/CommonMethod;->getProviderType(Landroid/content/Context;)I

    move-result v5

    .line 85
    .local v5, providerType:I
    iget-object v6, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mServiceContentList:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 86
    iget-object v6, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mServiceContentList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/zhangdan/app/data/model/BankServiceContent;>;"
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/BankServiceContent;

    .line 88
    .local v1, bankService:Lcom/zhangdan/app/data/model/BankServiceContent;
    if-ne v5, v9, :cond_3

    .line 89
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/BankServiceContent;->getIsp()I

    move-result v6

    if-eq v6, v9, :cond_2

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/BankServiceContent;->getIsp()I

    move-result v6

    if-eqz v6, :cond_2

    .line 90
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 91
    :cond_3
    if-ne v5, v10, :cond_4

    .line 92
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/BankServiceContent;->getIsp()I

    move-result v6

    if-eq v6, v10, :cond_2

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/BankServiceContent;->getIsp()I

    move-result v6

    if-eqz v6, :cond_2

    .line 93
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 94
    :cond_4
    if-ne v5, v11, :cond_2

    .line 95
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/BankServiceContent;->getIsp()I

    move-result v6

    if-eq v6, v11, :cond_2

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/BankServiceContent;->getIsp()I

    move-result v6

    if-eqz v6, :cond_2

    .line 96
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 107
    const-string v1, "BankService"

    const-string v2, "FragmentTel: onCreateView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const v1, 0x7f030075

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->init(Landroid/view/View;)V

    .line 110
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 122
    const-string v0, "BankService"

    const-string v1, "FragmentTel: onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 116
    const-string v0, "BankService"

    const-string v1, "FragmentTel: onDestroyView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, parentView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "bank_service_click"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    iget v3, p0, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->mServiceType:I

    if-nez v3, :cond_1

    .line 248
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/BankServiceContent;

    .line 249
    .local v0, data:Lcom/zhangdan/app/data/model/BankServiceContent;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankServiceContent;->getMethod()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->replacePlaceHolder(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, method:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 268
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/zhangdan/app/util/CommonMethod;->launchCallPhone(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    .end local v0           #data:Lcom/zhangdan/app/data/model/BankServiceContent;
    .end local v2           #method:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/BankServiceContent;

    .line 258
    .restart local v0       #data:Lcom/zhangdan/app/data/model/BankServiceContent;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankServiceContent;->getMethod()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->replacePlaceHolder(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 260
    .restart local v2       #method:Ljava/lang/String;
    sget-object v3, Lcom/zhangdan/app/data/ServiceSettingType;->YEAR_MONTH:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/ServiceSettingType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 262
    new-instance v1, Lcom/zhangdan/app/activities/bankservice/InputDateDialog;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankServiceContent;->getTo()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Lcom/zhangdan/app/activities/bankservice/InputDateDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .local v1, dialog:Lcom/zhangdan/app/activities/bankservice/InputDateDialog;
    invoke-virtual {v1}, Lcom/zhangdan/app/activities/bankservice/InputDateDialog;->show()V

    goto :goto_0

    .line 265
    .end local v1           #dialog:Lcom/zhangdan/app/activities/bankservice/InputDateDialog;
    :cond_2
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/FragmentBankService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankServiceContent;->getTo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/zhangdan/app/util/CommonMethod;->launchSendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
