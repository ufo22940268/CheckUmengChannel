.class public Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "QueryWeatherTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/shopping/QueryWeatherTask$OnGetWeatherListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private city:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private onGetWeatherListener:Lcom/zhangdan/app/activities/shopping/QueryWeatherTask$OnGetWeatherListener;

.field private shoppingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/ShoppingSheetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .parameter "context"
    .parameter "city"
    .parameter
    .parameter "isRefresh"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/ShoppingSheetInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/ShoppingSheetInfo;>;"
    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->city:Ljava/lang/String;

    .line 45
    if-eqz p4, :cond_1

    .line 46
    iput-object p3, p0, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->shoppingList:Ljava/util/List;

    .line 56
    :cond_0
    return-void

    .line 48
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->shoppingList:Ljava/util/List;

    .line 49
    if-eqz p3, :cond_0

    .line 50
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 51
    .local v0, data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getWeatherInfo()Lcom/zhangdan/app/data/model/WeatherInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 52
    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->shoppingList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 13
    .parameter "params"

    .prologue
    .line 60
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/WeatherRequest;>;"
    iget-object v9, p0, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->shoppingList:Ljava/util/List;

    if-eqz v9, :cond_1

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 63
    .local v0, cal:Ljava/util/Calendar;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd"

    invoke-direct {v6, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 64
    .local v6, sdf:Ljava/text/SimpleDateFormat;
    iget-object v9, p0, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->shoppingList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 65
    .local v1, data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    new-instance v5, Lcom/zhangdan/app/data/model/WeatherRequest;

    invoke-direct {v5}, Lcom/zhangdan/app/data/model/WeatherRequest;-><init>()V

    .line 66
    .local v5, req:Lcom/zhangdan/app/data/model/WeatherRequest;
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAutoId()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/zhangdan/app/data/model/WeatherRequest;->setId(J)V

    .line 67
    iget-object v9, p0, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->city:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/zhangdan/app/data/model/WeatherRequest;->setCity(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getStoreName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDesciption()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-virtual {v5, v9}, Lcom/zhangdan/app/data/model/WeatherRequest;->setSentence(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getYear()I

    move-result v9

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getMonth()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDay()I

    move-result v11

    invoke-virtual {v0, v9, v10, v11}, Ljava/util/Calendar;->set(III)V

    .line 70
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/zhangdan/app/data/model/WeatherRequest;->setDate(Ljava/lang/String;)V

    .line 71
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getStoreName()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 74
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #req:Lcom/zhangdan/app/data/model/WeatherRequest;
    .end local v6           #sdf:Ljava/text/SimpleDateFormat;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 75
    invoke-static {v4}, Lcom/zhangdan/app/api/GetWeatherApi;->getMultiWeather(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 76
    .local v8, weatherList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/WeatherInfo;>;"
    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 77
    iget-object v9, p0, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->context:Landroid/content/Context;

    invoke-static {v9, v8}, Lcom/zhangdan/app/data/db/util/WeatherDbUtil;->saveWeatherInfo(Landroid/content/Context;Ljava/util/List;)V

    .line 79
    iget-object v9, p0, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->shoppingList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 80
    .restart local v1       #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zhangdan/app/data/model/WeatherInfo;

    .line 81
    .local v7, weather:Lcom/zhangdan/app/data/model/WeatherInfo;
    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/WeatherInfo;->getId()J

    move-result-wide v9

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAutoId()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    .line 82
    invoke-virtual {v1, v7}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setWeatherInfo(Lcom/zhangdan/app/data/model/WeatherInfo;)V

    .line 83
    invoke-interface {v8, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 89
    .end local v1           #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #weather:Lcom/zhangdan/app/data/model/WeatherInfo;
    :cond_4
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 92
    .end local v8           #weatherList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/WeatherInfo;>;"
    :goto_3
    return-object v9

    :cond_5
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->onGetWeatherListener:Lcom/zhangdan/app/activities/shopping/QueryWeatherTask$OnGetWeatherListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->onGetWeatherListener:Lcom/zhangdan/app/activities/shopping/QueryWeatherTask$OnGetWeatherListener;

    invoke-interface {v0}, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask$OnGetWeatherListener;->OnGetWeather()V

    .line 101
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public setOnGetWeatherListener(Lcom/zhangdan/app/activities/shopping/QueryWeatherTask$OnGetWeatherListener;)V
    .locals 0
    .parameter "onGetWeatherListener"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->onGetWeatherListener:Lcom/zhangdan/app/activities/shopping/QueryWeatherTask$OnGetWeatherListener;

    .line 33
    return-void
.end method
