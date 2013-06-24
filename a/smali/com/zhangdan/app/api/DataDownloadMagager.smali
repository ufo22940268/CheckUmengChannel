.class public Lcom/zhangdan/app/api/DataDownloadMagager;
.super Ljava/lang/Object;
.source "DataDownloadMagager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mToken:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "userId"
    .parameter "token"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mToken:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private getApiLastModifyTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "apiName"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/zhangdan/app/data/db/util/SysMasterDbUtil;->getApiLastModifyTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveApiLastModifyTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "apiName"
    .parameter "time"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/zhangdan/app/data/db/util/SysMasterDbUtil;->saveApiLastModifyTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method


# virtual methods
.method public getAnnouncement()V
    .locals 0

    .prologue
    .line 345
    return-void
.end method

.method public getBankList()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 78
    const-string v4, "Bank"

    invoke-direct {p0, v4}, Lcom/zhangdan/app/api/DataDownloadMagager;->getApiLastModifyTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, lastModifyTime:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    iget-object v5, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mToken:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/zhangdan/app/api/BankApi;->getBankListJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, json:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v3

    .line 83
    :cond_1
    invoke-static {v1}, Lcom/zhangdan/app/api/BankApi;->parseBankListInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BankList;

    move-result-object v0

    .line 84
    .local v0, bankList:Lcom/zhangdan/app/data/model/http/BankList;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BankList;->getCode()I

    move-result v4

    if-nez v4, :cond_0

    .line 87
    iget-object v4, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BankList;->getBankInfos()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zhangdan/app/data/db/util/BankDbUtil;->saveBankList(Landroid/content/Context;Ljava/util/List;)V

    .line 88
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BankList;->getTotal_results()I

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    const-string v3, "Bank"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BankList;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/zhangdan/app/api/DataDownloadMagager;->saveApiLastModifyTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getBankServiceList()V
    .locals 5

    .prologue
    .line 283
    const-string v3, "BankServiceExt"

    invoke-direct {p0, v3}, Lcom/zhangdan/app/api/DataDownloadMagager;->getApiLastModifyTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, lastModifyTime:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    iget-object v4, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mToken:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/zhangdan/app/api/BankServiceApi;->getBankServiceJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, json:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-static {v1}, Lcom/zhangdan/app/api/BankServiceApi;->parseBankServiceList(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BankServiceList;

    move-result-object v0

    .line 288
    .local v0, bankServiceList:Lcom/zhangdan/app/data/model/http/BankServiceList;
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BankServiceList;->getCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 291
    iget-object v3, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BankServiceList;->getBankServices()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/data/db/util/BankServiceDbUtil;->saveBankServiceList(Landroid/content/Context;Ljava/util/List;)V

    .line 292
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BankServiceList;->getTotalResults()I

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    const-string v3, "BankServiceExt"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BankServiceList;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/zhangdan/app/api/DataDownloadMagager;->saveApiLastModifyTime(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBillList(I)Z
    .locals 7
    .parameter "pageNo"

    .prologue
    const/4 v4, 0x0

    .line 125
    const-string v5, "Bill"

    invoke-direct {p0, v5}, Lcom/zhangdan/app/api/DataDownloadMagager;->getApiLastModifyTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, lastModifyTime:Ljava/lang/String;
    iget-object v5, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    iget-object v6, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mToken:Ljava/lang/String;

    invoke-static {v5, v6, v2}, Lcom/zhangdan/app/api/BillApi;->getBillJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, json:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v4

    .line 129
    :cond_1
    invoke-static {v1}, Lcom/zhangdan/app/api/BillApi;->parseBillListInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BillListInfo;

    move-result-object v0

    .line 130
    .local v0, billListInfo:Lcom/zhangdan/app/data/model/http/BillListInfo;
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BillListInfo;->getCode()I

    move-result v5

    if-nez v5, :cond_0

    .line 133
    iget-object v5, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BillListInfo;->getBillInfos()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zhangdan/app/data/db/util/BillDbUtil;->saveBillList(Landroid/content/Context;Ljava/util/List;)V

    .line 134
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BillListInfo;->getTotalResults()I

    move-result v3

    .line 135
    .local v3, totalResults:I
    mul-int/lit16 v5, p1, 0x1f4

    if-ge v5, v3, :cond_3

    .line 136
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/api/DataDownloadMagager;->getBillList(I)Z

    .line 142
    :cond_2
    :goto_1
    if-lez v3, :cond_0

    .line 143
    const/4 v4, 0x1

    goto :goto_0

    .line 139
    :cond_3
    if-eqz v3, :cond_2

    .line 140
    const-string v5, "Bill"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BillListInfo;->getTime()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/zhangdan/app/api/DataDownloadMagager;->saveApiLastModifyTime(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getBillReturnList()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 321
    const-string v4, "BillReturn"

    invoke-direct {p0, v4}, Lcom/zhangdan/app/api/DataDownloadMagager;->getApiLastModifyTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, lastModifyTime:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    iget-object v5, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mToken:Ljava/lang/String;

    invoke-static {v4, v5, v1}, Lcom/zhangdan/app/api/RepaymentApi;->getCardRepaymentJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, json:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v3

    .line 325
    :cond_1
    invoke-static {v0}, Lcom/zhangdan/app/api/RepaymentApi;->parseRepayment(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/RepaymentList;

    move-result-object v2

    .line 326
    .local v2, repaymentList:Lcom/zhangdan/app/data/model/http/RepaymentList;
    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/RepaymentList;->getCode()I

    move-result v4

    if-nez v4, :cond_0

    .line 329
    iget-object v4, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/RepaymentList;->getRepaymentList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zhangdan/app/data/db/util/BillReturnDbUtil;->saveBillReturnList(Landroid/content/Context;Ljava/util/List;)V

    .line 330
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/RepaymentList;->getTotalResults()I

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    const-string v3, "BillReturn"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/RepaymentList;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/zhangdan/app/api/DataDownloadMagager;->saveApiLastModifyTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getBillStageList()V
    .locals 5

    .prologue
    .line 380
    const-string v3, "BillStage"

    invoke-direct {p0, v3}, Lcom/zhangdan/app/api/DataDownloadMagager;->getApiLastModifyTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, lastModifyTime:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/zhangdan/app/api/BillStateApi;->getBillStateInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BillStageList;

    move-result-object v0

    .line 382
    .local v0, billStageList:Lcom/zhangdan/app/data/model/http/BillStageList;
    if-nez v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BillStageList;->getCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BillStageList;->getStageList()Ljava/util/List;

    move-result-object v2

    .line 387
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BillStages;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 388
    iget-object v3, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/zhangdan/app/data/db/util/BillStageDbUtil;->saveBillStageList(Landroid/content/Context;Ljava/util/List;)V

    .line 389
    const-string v3, "BillStage"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BillStageList;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/zhangdan/app/api/DataDownloadMagager;->saveApiLastModifyTime(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getShoppingCategoryList()V
    .locals 5

    .prologue
    .line 102
    const-string v3, "ShoppingCategory"

    invoke-direct {p0, v3}, Lcom/zhangdan/app/api/DataDownloadMagager;->getApiLastModifyTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, lastModifyTime:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    iget-object v4, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mToken:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/zhangdan/app/api/ConsumeCategoryAPI;->getComsumeCategoryJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, json:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-static {v1}, Lcom/zhangdan/app/api/ConsumeCategoryAPI;->parseCategoryList(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/CategoryList;

    move-result-object v0

    .line 108
    .local v0, categoryList:Lcom/zhangdan/app/data/model/http/CategoryList;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/CategoryList;->getCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/CategoryList;->getCategoryInfos()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/data/db/util/ConsumeCategoryDbUtil;->saveCategoryList(Landroid/content/Context;Ljava/util/List;)V

    .line 112
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/CategoryList;->getTotalResult()I

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    const-string v3, "ShoppingCategory"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/CategoryList;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/zhangdan/app/api/DataDownloadMagager;->saveApiLastModifyTime(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getShoppingSheetList(I)V
    .locals 6
    .parameter "pageNo"

    .prologue
    .line 154
    const-string v4, "ShoppingSheet"

    invoke-direct {p0, v4}, Lcom/zhangdan/app/api/DataDownloadMagager;->getApiLastModifyTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, lastModifyTime:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    iget-object v5, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mToken:Ljava/lang/String;

    invoke-static {v4, v5, v1, p1}, Lcom/zhangdan/app/api/ShoppingSheetApi;->getSlotCardRecordJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, json:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-static {v0}, Lcom/zhangdan/app/api/ShoppingSheetApi;->parseSlotCardRecordList(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;

    move-result-object v2

    .line 159
    .local v2, slotCardList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;
    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;->getCode()I

    move-result v4

    if-nez v4, :cond_0

    .line 162
    iget-object v4, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;->getSlotCardRecords()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zhangdan/app/data/db/util/ShoppingSheetDbUtil;->saveShoppingSheetList(Landroid/content/Context;Ljava/util/List;)V

    .line 163
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;->getTotalResults()I

    move-result v3

    .line 165
    .local v3, totalResults:I
    mul-int/lit16 v4, p1, 0x1f4

    if-ge v4, v3, :cond_2

    .line 166
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/api/DataDownloadMagager;->getShoppingSheetList(I)V

    goto :goto_0

    .line 168
    :cond_2
    if-eqz v3, :cond_0

    .line 169
    const-string v4, "ShoppingSheet"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/zhangdan/app/api/DataDownloadMagager;->saveApiLastModifyTime(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getShoppingSheetRemarkList()V
    .locals 5

    .prologue
    .line 180
    const-string v3, "ShoppingSheetRemark"

    invoke-direct {p0, v3}, Lcom/zhangdan/app/api/DataDownloadMagager;->getApiLastModifyTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, lastModifyTime:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    iget-object v4, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mToken:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/zhangdan/app/api/ShoppingSheetRemarkApi;->getSlotCardRecordRemarkJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, json:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-static {v0}, Lcom/zhangdan/app/api/ShoppingSheetRemarkApi;->parseSlotCardRecordRemarkList(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;

    move-result-object v2

    .line 185
    .local v2, remarkList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;
    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;->getCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;->getRemarks()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/data/db/util/ShoppingSheetRemarkDbUtil;->saveShoppingSheetRemarkList(Landroid/content/Context;Ljava/util/List;)V

    .line 189
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;->getTotalResults()I

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    const-string v3, "ShoppingSheetRemark"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/zhangdan/app/api/DataDownloadMagager;->saveApiLastModifyTime(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getTalkList()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public getUserBankList()Z
    .locals 20

    .prologue
    .line 222
    const-string v17, "UserBank"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/zhangdan/app/api/DataDownloadMagager;->getApiLastModifyTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 223
    .local v11, lastModifyTime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/api/DataDownloadMagager;->mToken:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v11}, Lcom/zhangdan/app/api/UserBankApi;->getUserBankJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 224
    .local v10, json:Ljava/lang/String;
    if-nez v10, :cond_0

    .line 225
    const/16 v17, 0x0

    .line 274
    :goto_0
    return v17

    .line 226
    :cond_0
    invoke-static {v10}, Lcom/zhangdan/app/api/UserBankApi;->parseBank(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserBankList;

    move-result-object v16

    .line 227
    .local v16, userBank:Lcom/zhangdan/app/data/model/http/UserBankList;
    if-nez v16, :cond_1

    .line 228
    const/16 v17, 0x0

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/zhangdan/app/data/model/http/UserBankList;->getCode()I

    move-result v17

    if-nez v17, :cond_c

    .line 230
    invoke-virtual/range {v16 .. v16}, Lcom/zhangdan/app/data/model/http/UserBankList;->getUserBanks()Ljava/util/List;

    move-result-object v13

    .line 231
    .local v13, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/UserBank;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/api/DataDownloadMagager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Lcom/zhangdan/app/data/db/util/UserBankDbUtil;->saveUserBankList(Landroid/content/Context;Ljava/util/List;)V

    .line 232
    invoke-virtual/range {v16 .. v16}, Lcom/zhangdan/app/data/model/http/UserBankList;->getTotalResults()I

    move-result v17

    if-eqz v17, :cond_2

    .line 233
    const-string v17, "UserBank"

    invoke-virtual/range {v16 .. v16}, Lcom/zhangdan/app/data/model/http/UserBankList;->getTime()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/app/api/DataDownloadMagager;->saveApiLastModifyTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_2
    invoke-static {v11}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 236
    if-eqz v13, :cond_a

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_a

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/api/DataDownloadMagager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/zhangdan/app/data/db/util/SysMasterDbUtil;->getNewWarnKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 238
    .local v14, savedUbIds:Ljava/lang/String;
    const/4 v9, 0x0

    .line 239
    .local v9, ids:[Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 240
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 242
    :cond_3
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 243
    .local v15, sb:Ljava/lang/StringBuffer;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/data/model/http/UserBank;

    .line 244
    .local v4, data:Lcom/zhangdan/app/data/model/http/UserBank;
    const/4 v5, 0x0

    .line 245
    .local v5, flag:Z
    if-eqz v9, :cond_5

    .line 246
    move-object v3, v9

    .local v3, arr$:[Ljava/lang/String;
    array-length v12, v3

    .local v12, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v12, :cond_5

    aget-object v8, v3, v7

    .line 247
    .local v8, id:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/http/UserBank;->getUb_id()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 248
    const/4 v5, 0x1

    .line 253
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #id:Ljava/lang/String;
    .end local v12           #len$:I
    :cond_5
    if-nez v5, :cond_4

    .line 255
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/http/UserBank;->getUb_id()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 246
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v8       #id:Ljava/lang/String;
    .restart local v12       #len$:I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 258
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #data:Lcom/zhangdan/app/data/model/http/UserBank;
    .end local v5           #flag:Z
    .end local v7           #i$:I
    .end local v8           #id:Ljava/lang/String;
    .end local v12           #len$:I
    :cond_7
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    if-lez v17, :cond_8

    .line 259
    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 260
    :cond_8
    if-eqz v14, :cond_9

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 261
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    if-lez v17, :cond_b

    .line 262
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/api/DataDownloadMagager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/zhangdan/app/data/db/util/SysMasterDbUtil;->saveNewWarnKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .end local v9           #ids:[Ljava/lang/String;
    .end local v14           #savedUbIds:Ljava/lang/String;
    .end local v15           #sb:Ljava/lang/StringBuffer;
    :cond_a
    if-eqz v13, :cond_c

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_c

    .line 272
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 264
    .restart local v9       #ids:[Ljava/lang/String;
    .restart local v14       #savedUbIds:Ljava/lang/String;
    .restart local v15       #sb:Ljava/lang/StringBuffer;
    :cond_b
    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 274
    .end local v9           #ids:[Ljava/lang/String;
    .end local v13           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/UserBank;>;"
    .end local v14           #savedUbIds:Ljava/lang/String;
    .end local v15           #sb:Ljava/lang/StringBuffer;
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public getUserCardList()V
    .locals 5

    .prologue
    .line 200
    const-string v3, "UserCard"

    invoke-direct {p0, v3}, Lcom/zhangdan/app/api/DataDownloadMagager;->getApiLastModifyTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, lastModifyTime:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    iget-object v4, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mToken:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/zhangdan/app/api/CreditCardApi;->getCreditCardJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, json:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-static {v1}, Lcom/zhangdan/app/api/CreditCardApi;->parseCreditCard(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/CreditCardList;

    move-result-object v0

    .line 205
    .local v0, cardList:Lcom/zhangdan/app/data/model/http/CreditCardList;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/CreditCardList;->getCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 208
    iget-object v3, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/CreditCardList;->getCreditCards()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/data/db/util/UserCardDbUtil;->saveUserCardList(Landroid/content/Context;Ljava/util/List;)V

    .line 209
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/CreditCardList;->getTotalResults()I

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    const-string v3, "UserCard"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/CreditCardList;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/zhangdan/app/api/DataDownloadMagager;->saveApiLastModifyTime(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUserInfoExt()V
    .locals 4

    .prologue
    .line 303
    iget-object v2, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    iget-object v3, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/zhangdan/app/api/UserInfoApi;->getUserInfoJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, json:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-static {v0}, Lcom/zhangdan/app/api/UserInfoApi;->parseUserInfoExtJson(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserInfoExt;

    move-result-object v1

    .line 308
    .local v1, userInfo:Lcom/zhangdan/app/data/model/http/UserInfoExt;
    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/UserInfoExt;->getCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/zhangdan/app/data/db/util/UserInfoExtDbUtil;->saveUserInfoExt(Landroid/content/Context;Lcom/zhangdan/app/data/model/http/UserInfoExt;)V

    goto :goto_0
.end method

.method public getUserMailAccount()V
    .locals 5

    .prologue
    .line 362
    const-string v3, "MailAccount"

    invoke-direct {p0, v3}, Lcom/zhangdan/app/api/DataDownloadMagager;->getApiLastModifyTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, lastModifyTime:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    iget-object v4, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mToken:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/zhangdan/app/api/UserMailAccountApi;->getUserMailAccountJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, json:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    invoke-static {v0}, Lcom/zhangdan/app/api/UserMailAccountApi;->parseMailAccountListInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailAccountList;

    move-result-object v2

    .line 367
    .local v2, mailAccountList:Lcom/zhangdan/app/data/model/http/MailAccountList;
    if-eqz v2, :cond_0

    .line 369
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/MailAccountList;->getCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 370
    iget-object v3, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/MailAccountList;->getMailList()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/data/db/util/MailAccountDbUtil;->saveMailAccountList(Landroid/content/Context;Ljava/util/List;)V

    .line 371
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/MailAccountList;->getTotalResults()I

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    const-string v3, "MailAccount"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/MailAccountList;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/zhangdan/app/api/DataDownloadMagager;->saveApiLastModifyTime(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUserStatisticData()V
    .locals 5

    .prologue
    .line 400
    const-string v3, "Chart"

    invoke-direct {p0, v3}, Lcom/zhangdan/app/api/DataDownloadMagager;->getApiLastModifyTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, lastModifyTime:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    iget-object v4, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mToken:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/zhangdan/app/api/ChartApi;->getUserStatisticData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/ChartList;

    move-result-object v0

    .line 402
    .local v0, chartListInfo:Lcom/zhangdan/app/data/model/http/ChartList;
    if-nez v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/ChartList;->getCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/ChartList;->getChartList()Ljava/util/List;

    move-result-object v2

    .line 406
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ChartInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 407
    iget-object v3, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/zhangdan/app/api/DataDownloadMagager;->mUserId:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/zhangdan/app/data/db/util/ChartDbUtil;->saveChartList(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 408
    const-string v3, "Chart"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/ChartList;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/zhangdan/app/api/DataDownloadMagager;->saveApiLastModifyTime(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
