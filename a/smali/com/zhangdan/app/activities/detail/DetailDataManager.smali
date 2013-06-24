.class public Lcom/zhangdan/app/activities/detail/DetailDataManager;
.super Ljava/lang/Object;
.source "DetailDataManager.java"


# static fields
.field private static mFormat:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/activities/detail/DetailDataManager;->mFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentBillMonth(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "billDate"

    .prologue
    const/4 v6, 0x1

    .line 133
    const-string v2, ""

    .line 134
    .local v2, month:Ljava/lang/String;
    move-object v1, p0

    .line 135
    .local v1, billDateStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 146
    .end local v2           #month:Ljava/lang/String;
    .local v3, month:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 137
    .end local v3           #month:Ljava/lang/String;
    .restart local v2       #month:Ljava/lang/String;
    :cond_0
    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    move-object v3, v2

    .line 138
    .end local v2           #month:Ljava/lang/String;
    .restart local v3       #month:Ljava/lang/String;
    goto :goto_0

    .line 139
    .end local v3           #month:Ljava/lang/String;
    .restart local v2       #month:Ljava/lang/String;
    :cond_1
    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, array:[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v4, v0

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    aget-object v4, v0, v6

    if-eqz v4, :cond_2

    .line 141
    aget-object v2, v0, v6

    .line 142
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    const-string v4, "0"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v3, v2

    .line 146
    .end local v2           #month:Ljava/lang/String;
    .restart local v3       #month:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getShoppingSheetInfos(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/List;
    .locals 17
    .parameter "context"
    .parameter "userId"
    .parameter "billId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/ShoppingSheetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static/range {p0 .. p3}, Lcom/zhangdan/app/data/db/util/ShoppingSheetDbUtil;->queryShoppingSheet(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v14

    .line 49
    .local v14, shoppingSheetList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/ShoppingSheetInfo;>;"
    if-eqz v14, :cond_4

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    .line 50
    invoke-static/range {p0 .. p0}, Lcom/zhangdan/app/data/db/util/ConsumeCategoryDbUtil;->getCategory(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 51
    .local v5, categoryList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Category;>;"
    if-eqz v5, :cond_4

    .line 52
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-ge v10, v15, :cond_4

    .line 53
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 55
    .local v8, data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAmountMoney()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, amountStr:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 58
    .local v0, amount:D
    sget-object v15, Lcom/zhangdan/app/activities/detail/DetailDataManager;->mFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v15, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 63
    .end local v0           #amount:D
    :goto_1
    invoke-virtual {v8, v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setAmountMoney(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCurrencyType()I

    move-result v15

    invoke-static {v15}, Lcom/zhangdan/app/util/CurrencyUtil;->getCurrencySymbol(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setCurrencySymbol(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCategoryId()I

    move-result v4

    .line 67
    .local v4, categoryId:I
    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCustomCategoryId()I

    move-result v7

    .line 68
    .local v7, customCategoryId:I
    if-eqz v7, :cond_2

    move v6, v7

    .line 69
    .local v6, currCategoryId:I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    .line 70
    .local v12, len:I
    const/4 v13, 0x0

    .line 71
    .local v13, parentId:I
    const/4 v11, 0x0

    .local v11, j:I
    :goto_3
    if-ge v11, v12, :cond_0

    .line 72
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/data/model/http/Category;

    .line 73
    .local v3, category:Lcom/zhangdan/app/data/model/http/Category;
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/Category;->getCategoryId()I

    move-result v15

    if-ne v6, v15, :cond_3

    .line 74
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/Category;->getCategotyName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setCategoryName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/Category;->getParntId()I

    move-result v13

    .line 76
    const/4 v15, -0x1

    if-ne v13, v15, :cond_0

    .line 78
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/Category;->getCategoryId()I

    move-result v13

    .line 83
    .end local v3           #category:Lcom/zhangdan/app/data/model/http/Category;
    :cond_0
    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070117

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setCategoryName(Ljava/lang/String;)V

    .line 86
    :cond_1
    invoke-static {v13}, Lcom/zhangdan/app/data/CategoryIconRes;->getIconByParentId(I)I

    move-result v15

    invoke-virtual {v8, v15}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setCategoryIconResId(I)V

    .line 52
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 59
    .end local v4           #categoryId:I
    .end local v6           #currCategoryId:I
    .end local v7           #customCategoryId:I
    .end local v11           #j:I
    .end local v12           #len:I
    .end local v13           #parentId:I
    :catch_0
    move-exception v9

    .line 60
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    const-string v2, "0.00"

    goto :goto_1

    .end local v9           #e:Ljava/lang/Exception;
    .restart local v4       #categoryId:I
    .restart local v7       #customCategoryId:I
    :cond_2
    move v6, v4

    .line 68
    goto :goto_2

    .line 71
    .restart local v3       #category:Lcom/zhangdan/app/data/model/http/Category;
    .restart local v6       #currCategoryId:I
    .restart local v11       #j:I
    .restart local v12       #len:I
    .restart local v13       #parentId:I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 90
    .end local v2           #amountStr:Ljava/lang/String;
    .end local v3           #category:Lcom/zhangdan/app/data/model/http/Category;
    .end local v4           #categoryId:I
    .end local v5           #categoryList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Category;>;"
    .end local v6           #currCategoryId:I
    .end local v7           #customCategoryId:I
    .end local v8           #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .end local v10           #i:I
    .end local v11           #j:I
    .end local v12           #len:I
    .end local v13           #parentId:I
    :cond_4
    return-object v14
.end method

.method public static getSmsUnSettledBills(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)Ljava/util/List;
    .locals 11
    .parameter "context"
    .parameter "userBankInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 99
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v7

    .line 100
    .local v7, state:I
    if-nez v7, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-object v6

    .line 103
    :cond_1
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, card:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 106
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillDate()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, billDateStr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 111
    .local v1, cal:Ljava/util/Calendar;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd"

    invoke-direct {v5, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 112
    .local v5, sdf:Ljava/text/SimpleDateFormat;
    const/4 v3, 0x0

    .line 114
    .local v3, date:Ljava/util/Date;
    :try_start_0
    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 118
    :goto_1
    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 121
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 122
    .local v8, time:J
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v10

    invoke-static {p0, v10, v2, v8, v9}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->getUnknowBill(Landroid/content/Context;ILjava/lang/String;J)Ljava/util/List;

    move-result-object v6

    .line 124
    .local v6, smsBillDataList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    goto :goto_0

    .line 115
    .end local v6           #smsBillDataList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    .end local v8           #time:J
    :catch_0
    move-exception v4

    .line 116
    .local v4, e:Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method public static gotoMailActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .parameter "activity"
    .parameter "mailSender"

    .prologue
    .line 173
    move-object v2, p0

    .line 174
    .local v2, mActivity:Landroid/app/Activity;
    if-nez p0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    .line 177
    .local v0, emailName:Ljava/lang/String;
    invoke-static {p1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "{"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 179
    const-string v3, "51zhangdan.com"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    move-object v0, p1

    .line 183
    :cond_1
    if-eqz v0, :cond_2

    .line 184
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 185
    .local v1, intent:Landroid/content/Intent;
    const-class v3, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 186
    const-string v3, "email_name"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 189
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 190
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v3, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 191
    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static parseMailSend(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mailSender"

    .prologue
    .line 157
    const-string v1, ""

    .line 159
    .local v1, mailSend:Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 160
    .local v2, object:Lorg/json/JSONObject;
    const-string v3, "from"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    const-string v3, "from"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 166
    .end local v2           #object:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
