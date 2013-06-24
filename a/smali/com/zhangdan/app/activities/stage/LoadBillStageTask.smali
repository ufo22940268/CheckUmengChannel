.class public Lcom/zhangdan/app/activities/stage/LoadBillStageTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "LoadBillStageTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/stage/LoadBillStageTask$OnProcessListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/zhangdan/app/data/model/BillStageInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnProcessListener:Lcom/zhangdan/app/activities/stage/LoadBillStageTask$OnProcessListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/zhangdan/app/activities/stage/LoadBillStageTask;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/stage/LoadBillStageTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 36
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BillStageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/LoadBillStageTask;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    if-nez v32, :cond_1

    .line 58
    const/16 v26, 0x0

    .line 138
    :cond_0
    :goto_0
    return-object v26

    .line 59
    :cond_1
    const/16 v32, 0x0

    aget-object v30, p1, v32

    .line 60
    .local v30, userId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/LoadBillStageTask;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/db/util/BillStageDbUtil;->loadAllBillStages(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    .line 61
    .local v22, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BillStages;>;"
    if-eqz v22, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_3

    .line 62
    :cond_2
    const/16 v26, 0x0

    goto :goto_0

    .line 63
    :cond_3
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v26, stageList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BillStageInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/LoadBillStageTask;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    check-cast v32, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual/range {v32 .. v32}, Lcom/zhangdan/app/ZhangdanApplication;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v8

    .line 65
    .local v8, dataMgr:Lcom/zhangdan/app/global/DataManager;
    invoke-virtual {v8}, Lcom/zhangdan/app/global/DataManager;->getUserBankInfoList()Ljava/util/List;

    move-result-object v29

    .line 66
    .local v29, userBankList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zhangdan/app/data/model/http/BillStages;

    .line 67
    .local v7, data:Lcom/zhangdan/app/data/model/http/BillStages;
    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/http/BillStages;->getStages()Ljava/lang/String;

    move-result-object v21

    .line 68
    .local v21, json:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_4

    .line 71
    new-instance v25, Lcom/zhangdan/app/data/model/BillStageInfo;

    invoke-direct/range {v25 .. v25}, Lcom/zhangdan/app/data/model/BillStageInfo;-><init>()V

    .line 72
    .local v25, stageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;
    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/http/BillStages;->getUserId()J

    move-result-wide v32

    move-object/from16 v0, v25

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/data/model/BillStageInfo;->setUserId(J)V

    .line 73
    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/http/BillStages;->getBankId()I

    move-result v32

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillStageInfo;->setBankId(I)V

    .line 74
    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/http/BillStages;->getBillId()J

    move-result-wide v32

    move-object/from16 v0, v25

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/data/model/BillStageInfo;->setBillId(J)V

    .line 75
    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/http/BillStages;->getUbId()J

    move-result-wide v32

    move-object/from16 v0, v25

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/data/model/BillStageInfo;->setUbId(J)V

    .line 76
    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/http/BillStages;->getBillDate()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillStageInfo;->setBillDate(Ljava/lang/String;)V

    .line 78
    if-eqz v29, :cond_6

    invoke-virtual {v8}, Lcom/zhangdan/app/global/DataManager;->isFakeData()Z

    move-result v32

    if-nez v32, :cond_6

    .line 79
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 80
    .local v28, userBank:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual/range {v28 .. v28}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v32

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/http/BillStages;->getUbId()J

    move-result-wide v34

    cmp-long v32, v32, v34

    if-nez v32, :cond_5

    .line 81
    invoke-virtual/range {v28 .. v28}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillStageInfo;->setBankName(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {v28 .. v28}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillStageInfo;->setCardNo(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {v28 .. v28}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillStageInfo;->setNameOnBill(Ljava/lang/String;)V

    .line 90
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v28           #userBank:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_6
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 91
    .local v5, arr:Lorg/json/JSONArray;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v32

    if-lez v32, :cond_4

    .line 92
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v12, groupList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BillStageGroup;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v32

    move/from16 v0, v32

    if-ge v13, v0, :cond_9

    .line 94
    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v27

    .line 95
    .local v27, stageObj:Lorg/json/JSONObject;
    const-string v32, "Description"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, desc:Ljava/lang/String;
    const-string v32, "CardNo"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, cardNo:Ljava/lang/String;
    new-instance v11, Lcom/zhangdan/app/data/model/BillStageGroup;

    invoke-direct {v11}, Lcom/zhangdan/app/data/model/BillStageGroup;-><init>()V

    .line 99
    .local v11, group:Lcom/zhangdan/app/data/model/BillStageGroup;
    invoke-virtual {v11, v9}, Lcom/zhangdan/app/data/model/BillStageGroup;->setDesc(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v11, v6}, Lcom/zhangdan/app/data/model/BillStageGroup;->setCardNo(Ljava/lang/String;)V

    .line 102
    const-string v32, "BillStageList"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 103
    .local v17, itemArr:Lorg/json/JSONArray;
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v32

    if-lez v32, :cond_8

    .line 104
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v18, itemList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BillStageItem;>;"
    const/16 v20, 0x0

    .local v20, j:I
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v32

    move/from16 v0, v20

    move/from16 v1, v32

    if-ge v0, v1, :cond_7

    .line 106
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 107
    .local v19, itemObj:Lorg/json/JSONObject;
    const-string v32, "Year"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    .line 108
    .local v31, year:I
    const-string v32, "Month"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 109
    .local v23, month:I
    const-string v32, "Amount"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 110
    .local v3, amount:D
    const-string v32, "Sn"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 111
    .local v24, sn:I
    new-instance v16, Lcom/zhangdan/app/data/model/BillStageItem;

    invoke-direct/range {v16 .. v16}, Lcom/zhangdan/app/data/model/BillStageItem;-><init>()V

    .line 112
    .local v16, item:Lcom/zhangdan/app/data/model/BillStageItem;
    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillStageItem;->setYear(I)V

    .line 113
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillStageItem;->setMonth(I)V

    .line 114
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/zhangdan/app/data/model/BillStageItem;->setAmount(D)V

    .line 115
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillStageItem;->setSn(I)V

    .line 116
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 118
    .end local v3           #amount:D
    .end local v16           #item:Lcom/zhangdan/app/data/model/BillStageItem;
    .end local v19           #itemObj:Lorg/json/JSONObject;
    .end local v23           #month:I
    .end local v24           #sn:I
    .end local v31           #year:I
    :cond_7
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/zhangdan/app/data/model/BillStageGroup;->setStageList(Ljava/util/List;)V

    .line 120
    .end local v18           #itemList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BillStageItem;>;"
    .end local v20           #j:I
    :cond_8
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 122
    .end local v6           #cardNo:Ljava/lang/String;
    .end local v9           #desc:Ljava/lang/String;
    .end local v11           #group:Lcom/zhangdan/app/data/model/BillStageGroup;
    .end local v17           #itemArr:Lorg/json/JSONArray;
    .end local v27           #stageObj:Lorg/json/JSONObject;
    :cond_9
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_4

    .line 124
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lcom/zhangdan/app/data/model/BillStageInfo;->setStageList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 128
    .end local v5           #arr:Lorg/json/JSONArray;
    .end local v12           #groupList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BillStageGroup;>;"
    .end local v13           #i:I
    :catch_0
    move-exception v10

    .line 129
    .local v10, e:Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 135
    .end local v7           #data:Lcom/zhangdan/app/data/model/http/BillStages;
    .end local v10           #e:Lorg/json/JSONException;
    .end local v21           #json:Ljava/lang/String;
    .end local v25           #stageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;
    :cond_a
    if-eqz v26, :cond_0

    .line 136
    new-instance v32, Lcom/zhangdan/app/activities/stage/BillStageComparator;

    invoke-direct/range {v32 .. v32}, Lcom/zhangdan/app/activities/stage/BillStageComparator;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/stage/LoadBillStageTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BillStageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BillStageInfo;>;"
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/LoadBillStageTask;->mOnProcessListener:Lcom/zhangdan/app/activities/stage/LoadBillStageTask$OnProcessListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/LoadBillStageTask;->mOnProcessListener:Lcom/zhangdan/app/activities/stage/LoadBillStageTask$OnProcessListener;

    invoke-interface {v0, p1}, Lcom/zhangdan/app/activities/stage/LoadBillStageTask$OnProcessListener;->onPostExecute(Ljava/util/List;)V

    .line 146
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPreExecute()V

    .line 51
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/LoadBillStageTask;->mOnProcessListener:Lcom/zhangdan/app/activities/stage/LoadBillStageTask$OnProcessListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/LoadBillStageTask;->mOnProcessListener:Lcom/zhangdan/app/activities/stage/LoadBillStageTask$OnProcessListener;

    invoke-interface {v0}, Lcom/zhangdan/app/activities/stage/LoadBillStageTask$OnProcessListener;->onPreExecute()V

    .line 53
    :cond_0
    return-void
.end method

.method public setOnProcessListener(Lcom/zhangdan/app/activities/stage/LoadBillStageTask$OnProcessListener;)V
    .locals 0
    .parameter "onProcessListener"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/zhangdan/app/activities/stage/LoadBillStageTask;->mOnProcessListener:Lcom/zhangdan/app/activities/stage/LoadBillStageTask$OnProcessListener;

    .line 46
    return-void
.end method
