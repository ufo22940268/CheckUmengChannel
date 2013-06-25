.class public Lcom/zhangdan/app/activities/remark/SearchDiscountTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "SearchDiscountTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/remark/SearchDiscountTask$OnSearchDiscountListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/zhangdan/app/data/model/ShoppingSheetInfo;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final RESULT_ERROR:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1


# instance fields
.field private mCurrCity:Ljava/lang/String;

.field private mOnSearchDiscountListener:Lcom/zhangdan/app/activities/remark/SearchDiscountTask$OnSearchDiscountListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->mCurrCity:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Integer;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/ShoppingSheetInfo;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, params:[Ljava/util/List;,"[Ljava/util/List<Lcom/zhangdan/app/data/model/ShoppingSheetInfo;>;"
    const/4 v10, 0x0

    aget-object v8, p1, v10

    .line 43
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/ShoppingSheetInfo;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 44
    :cond_0
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 73
    :goto_0
    return-object v10

    .line 45
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 47
    .local v2, dataObj:Lorg/json/JSONObject;
    :try_start_0
    const-string v10, "city"

    iget-object v11, p0, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->mCurrCity:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v10, "sn"

    const-string v11, "zhangdan"

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 50
    .local v0, arr:Lorg/json/JSONArray;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 51
    .local v1, data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v9, obj:Lorg/json/JSONObject;
    const-string v10, "id"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAutoId()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 53
    const-string v11, "input"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getStoreName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDesciption()Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 57
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 58
    .local v5, e:Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 60
    .end local v5           #e:Lorg/json/JSONException;
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/zhangdan/app/api/YouhuiApi;->searchDiscount(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 61
    .local v4, discountList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/DiscountResult;>;"
    if-nez v4, :cond_4

    .line 62
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_0

    .line 53
    .end local v4           #discountList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/DiscountResult;>;"
    .restart local v0       #arr:Lorg/json/JSONArray;
    .restart local v1       #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #obj:Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getStoreName()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 56
    .end local v1           #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .end local v9           #obj:Lorg/json/JSONObject;
    :cond_3
    const-string v10, "items"

    invoke-virtual {v2, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 63
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v6           #i$:Ljava/util/Iterator;
    .restart local v4       #discountList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/DiscountResult;>;"
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 64
    .restart local v1       #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setDiscount(I)V

    .line 65
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/data/model/http/DiscountResult;

    .line 66
    .local v3, discount:Lcom/zhangdan/app/data/model/http/DiscountResult;
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAutoId()J

    move-result-wide v10

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/DiscountResult;->getId()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_6

    .line 67
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/DiscountResult;->getDiscount()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setDiscount(I)V

    .line 68
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/DiscountResult;->getWords()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setDiscountKeyword(Ljava/lang/String;)V

    goto :goto_4

    .line 73
    .end local v1           #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .end local v3           #discount:Lcom/zhangdan/app/data/model/http/DiscountResult;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_7
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, [Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->doInBackground([Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->mOnSearchDiscountListener:Lcom/zhangdan/app/activities/remark/SearchDiscountTask$OnSearchDiscountListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->mOnSearchDiscountListener:Lcom/zhangdan/app/activities/remark/SearchDiscountTask$OnSearchDiscountListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask$OnSearchDiscountListener;->onSearchDiscount(I)V

    .line 82
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public setOnSearchDiscountListener(Lcom/zhangdan/app/activities/remark/SearchDiscountTask$OnSearchDiscountListener;)V
    .locals 0
    .parameter "onSearchDiscountListener"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->mOnSearchDiscountListener:Lcom/zhangdan/app/activities/remark/SearchDiscountTask$OnSearchDiscountListener;

    .line 38
    return-void
.end method
