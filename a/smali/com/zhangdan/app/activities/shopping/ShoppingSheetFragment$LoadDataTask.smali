.class Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "ShoppingSheetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/zhangdan/app/data/model/ShoppingSheetInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 225
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 33
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/ShoppingSheetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .line 237
    .local v3, userId:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v30

    .line 238
    .local v30, start:I
    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 239
    .local v5, limit:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #calls: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getApplication()Lcom/zhangdan/app/ZhangdanApplication;
    invoke-static {v4}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$200(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v2

    .line 240
    .local v2, app:Lcom/zhangdan/app/ZhangdanApplication;
    if-nez v2, :cond_1

    .line 241
    const/16 v27, 0x0

    .line 318
    :cond_0
    return-object v27

    .line 242
    :cond_1
    mul-int/lit8 v4, v30, 0x32

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mStartDate:Ljava/lang/String;
    invoke-static {v6}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$300(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mEndDate:Ljava/lang/String;
    invoke-static {v7}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$400(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mCategoryIdList:Ljava/util/List;
    invoke-static {v8}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$500(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mBillIdList:Ljava/util/List;
    invoke-static {v9}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$600(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Ljava/util/List;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/zhangdan/app/data/db/util/ShoppingSheetDbUtil;->queryShoppingSheet(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v27

    .line 243
    .local v27, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/ShoppingSheetInfo;>;"
    new-instance v21, Ljava/text/DecimalFormat;

    const-string v4, "#0.00"

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 244
    .local v21, decimalFormat:Ljava/text/DecimalFormat;
    if-eqz v27, :cond_0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 245
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v29, shoppingSheetIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Lcom/zhangdan/app/ZhangdanApplication;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v20

    .line 247
    .local v20, dataMgr:Lcom/zhangdan/app/global/DataManager;
    invoke-virtual/range {v20 .. v20}, Lcom/zhangdan/app/global/DataManager;->getBankMap()Ljava/util/Map;

    move-result-object v14

    .line 248
    .local v14, bankMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/zhangdan/app/data/model/BankInfo;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 249
    .local v19, data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAutoId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    if-eqz v14, :cond_2

    .line 251
    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getBankId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/zhangdan/app/data/model/BankInfo;

    .line 252
    .local v13, bankInfo:Lcom/zhangdan/app/data/model/BankInfo;
    if-eqz v13, :cond_2

    .line 253
    invoke-virtual {v13}, Lcom/zhangdan/app/data/model/BankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setBankName(Ljava/lang/String;)V

    .line 256
    .end local v13           #bankInfo:Lcom/zhangdan/app/data/model/BankInfo;
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getBankName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 257
    const-string v4, "--"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setBankName(Ljava/lang/String;)V

    .line 260
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAmountMoney()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 262
    .local v12, amountStr:Ljava/lang/String;
    :try_start_0
    invoke-static {v12}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 263
    .local v10, amount:D
    const-wide v6, 0x40b3880000000000L

    cmpl-double v4, v10, v6

    if-gtz v4, :cond_4

    const-wide/16 v6, 0x0

    cmpg-double v4, v10, v6

    if-gez v4, :cond_7

    .line 264
    :cond_4
    const/4 v4, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setStartLevel(I)V

    .line 274
    :goto_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 280
    .end local v10           #amount:D
    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setAmountMoney(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCurrencyType()I

    move-result v4

    invoke-static {v4}, Lcom/zhangdan/app/util/CurrencyUtil;->getCurrencySymbol(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setCurrencySymbol(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCategoryId()I

    move-result v16

    .line 283
    .local v16, categoryId:I
    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCustomCategoryId()I

    move-result v18

    .line 284
    .local v18, customCategoryId:I
    if-eqz v18, :cond_b

    move/from16 v17, v18

    .line 285
    .local v17, currCategoryId:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mCategoryList:Ljava/util/List;
    invoke-static {v4}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$700(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v26

    .line 286
    .local v26, len:I
    const/16 v28, 0x0

    .line 287
    .local v28, parentId:I
    const/16 v25, 0x0

    .local v25, j:I
    :goto_4
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mCategoryList:Ljava/util/List;
    invoke-static {v4}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$700(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Ljava/util/List;

    move-result-object v4

    move/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/zhangdan/app/data/model/http/Category;

    .line 289
    .local v15, category:Lcom/zhangdan/app/data/model/http/Category;
    invoke-virtual {v15}, Lcom/zhangdan/app/data/model/http/Category;->getCategoryId()I

    move-result v4

    move/from16 v0, v17

    if-ne v0, v4, :cond_c

    .line 290
    invoke-virtual {v15}, Lcom/zhangdan/app/data/model/http/Category;->getCategotyName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setCategoryName(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v15}, Lcom/zhangdan/app/data/model/http/Category;->getParntId()I

    move-result v28

    .line 292
    const/4 v4, -0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_5

    .line 294
    invoke-virtual {v15}, Lcom/zhangdan/app/data/model/http/Category;->getCategoryId()I

    move-result v28

    .line 299
    .end local v15           #category:Lcom/zhangdan/app/data/model/http/Category;
    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    const v6, 0x7f070117

    invoke-virtual {v4, v6}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setCategoryName(Ljava/lang/String;)V

    .line 302
    :cond_6
    invoke-static/range {v28 .. v28}, Lcom/zhangdan/app/data/CategoryIconRes;->getIconByParentId(I)I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setCategoryIconResId(I)V

    goto/16 :goto_0

    .line 265
    .end local v16           #categoryId:I
    .end local v17           #currCategoryId:I
    .end local v18           #customCategoryId:I
    .end local v25           #j:I
    .end local v26           #len:I
    .end local v28           #parentId:I
    .restart local v10       #amount:D
    :cond_7
    const-wide v6, 0x409f400000000000L

    cmpl-double v4, v10, v6

    if-lez v4, :cond_8

    .line 266
    const/4 v4, 0x4

    :try_start_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setStartLevel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 275
    .end local v10           #amount:D
    :catch_0
    move-exception v22

    .line 276
    .local v22, e:Ljava/lang/Exception;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    const-string v12, "0.00"

    .line 278
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setStartLevel(I)V

    goto/16 :goto_2

    .line 267
    .end local v22           #e:Ljava/lang/Exception;
    .restart local v10       #amount:D
    :cond_8
    const-wide v6, 0x407f400000000000L

    cmpl-double v4, v10, v6

    if-lez v4, :cond_9

    .line 268
    const/4 v4, 0x3

    :try_start_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setStartLevel(I)V

    goto/16 :goto_1

    .line 269
    :cond_9
    const-wide/high16 v6, 0x4059

    cmpl-double v4, v10, v6

    if-lez v4, :cond_a

    .line 270
    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setStartLevel(I)V

    goto/16 :goto_1

    .line 272
    :cond_a
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setStartLevel(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .end local v10           #amount:D
    .restart local v16       #categoryId:I
    .restart local v18       #customCategoryId:I
    :cond_b
    move/from16 v17, v16

    .line 284
    goto/16 :goto_3

    .line 287
    .restart local v15       #category:Lcom/zhangdan/app/data/model/http/Category;
    .restart local v17       #currCategoryId:I
    .restart local v25       #j:I
    .restart local v26       #len:I
    .restart local v28       #parentId:I
    :cond_c
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_4

    .line 305
    .end local v12           #amountStr:Ljava/lang/String;
    .end local v15           #category:Lcom/zhangdan/app/data/model/http/Category;
    .end local v16           #categoryId:I
    .end local v17           #currCategoryId:I
    .end local v18           #customCategoryId:I
    .end local v19           #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .end local v25           #j:I
    .end local v26           #len:I
    .end local v28           #parentId:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Lcom/zhangdan/app/data/db/util/WeatherDbUtil;->queryWeatherInfo(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v32

    .line 306
    .local v32, weatherList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/WeatherInfo;>;"
    if-eqz v32, :cond_0

    .line 307
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .end local v23           #i$:Ljava/util/Iterator;
    :cond_e
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 308
    .restart local v19       #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/zhangdan/app/data/model/WeatherInfo;

    .line 309
    .local v31, weather:Lcom/zhangdan/app/data/model/WeatherInfo;
    invoke-virtual/range {v31 .. v31}, Lcom/zhangdan/app/data/model/WeatherInfo;->getId()J

    move-result-wide v6

    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAutoId()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_f

    .line 310
    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setWeatherInfo(Lcom/zhangdan/app/data/model/WeatherInfo;)V

    .line 311
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 225
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/ShoppingSheetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/ShoppingSheetInfo;>;"
    const v4, 0x7f0902e1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 323
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 324
    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #setter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mLoading:Z
    invoke-static {v2, v5}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$102(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;Z)Z

    .line 325
    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mFooterView:Landroid/view/View;
    invoke-static {v2}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$000(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f070118

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 326
    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mPageNo:I
    invoke-static {v2}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$800(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x32

    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mTotalCount:I
    invoke-static {v3}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$900(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 327
    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mFooterView:Landroid/view/View;
    invoke-static {v2}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$000(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f07011a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 329
    :cond_0
    if-eqz p1, :cond_1

    .line 330
    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mShoppingSheetAdapter:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;
    invoke-static {v2}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$1000(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->addShoppingSheetList(Ljava/util/List;)V

    .line 331
    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mCurrCity:Ljava/lang/String;
    invoke-static {v2}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$1100(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 332
    new-instance v0, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mCurrCity:Ljava/lang/String;
    invoke-static {v2}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$1100(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, task:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;
    new-array v2, v6, [Ljava/util/List;

    aput-object p1, v2, v5

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 334
    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->setOnSearchDiscountListener(Lcom/zhangdan/app/activities/remark/SearchDiscountTask$OnSearchDiscountListener;)V

    .line 336
    new-instance v1, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;

    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #calls: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getApplication()Lcom/zhangdan/app/ZhangdanApplication;
    invoke-static {v2}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$1200(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mCurrCity:Ljava/lang/String;
    invoke-static {v3}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$1100(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mIsRefreshWeather:Z
    invoke-static {v4}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$1300(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Z

    move-result v4

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V

    .line 337
    .local v1, weatherTask:Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;
    new-array v3, v6, [Ljava/lang/Void;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Void;

    aput-object v2, v3, v5

    invoke-virtual {v1, v3}, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 338
    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->setOnGetWeatherListener(Lcom/zhangdan/app/activities/shopping/QueryWeatherTask$OnGetWeatherListener;)V

    .line 341
    .end local v0           #task:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;
    .end local v1           #weatherTask:Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;
    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPreExecute()V

    .line 230
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mFooterView:Landroid/view/View;
    invoke-static {v0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$000(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070119

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 231
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    const/4 v1, 0x1

    #setter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mLoading:Z
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->access$102(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;Z)Z

    .line 232
    return-void
.end method
