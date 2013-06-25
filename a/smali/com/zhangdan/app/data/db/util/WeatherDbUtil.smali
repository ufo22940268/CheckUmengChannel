.class public Lcom/zhangdan/app/data/db/util/WeatherDbUtil;
.super Ljava/lang/Object;
.source "WeatherDbUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructValues(Lcom/zhangdan/app/data/model/WeatherInfo;)Landroid/content/ContentValues;
    .locals 4
    .parameter "data"

    .prologue
    .line 91
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "shopping_sheet_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/WeatherInfo;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    const-string v1, "max_temperature"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/WeatherInfo;->getMaxTemperature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "min_temperature"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/WeatherInfo;->getMinTemperature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "situation"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/WeatherInfo;->getSituation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "wind_direction"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/WeatherInfo;->getWindDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "wind_force"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/WeatherInfo;->getWindForce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "image"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/WeatherInfo;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object v0
.end method

.method private static parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/WeatherInfo;
    .locals 3
    .parameter "c"

    .prologue
    .line 142
    new-instance v0, Lcom/zhangdan/app/data/model/WeatherInfo;

    invoke-direct {v0}, Lcom/zhangdan/app/data/model/WeatherInfo;-><init>()V

    .line 143
    .local v0, data:Lcom/zhangdan/app/data/model/WeatherInfo;
    const-string v1, "shopping_sheet_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/data/model/WeatherInfo;->setId(J)V

    .line 144
    const-string v1, "max_temperature"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/WeatherInfo;->setMaxTemperature(Ljava/lang/String;)V

    .line 145
    const-string v1, "min_temperature"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/WeatherInfo;->setMinTemperature(Ljava/lang/String;)V

    .line 146
    const-string v1, "situation"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/WeatherInfo;->setSituation(Ljava/lang/String;)V

    .line 147
    const-string v1, "wind_direction"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/WeatherInfo;->setWindDirection(Ljava/lang/String;)V

    .line 148
    const-string v1, "wind_force"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/WeatherInfo;->setWindForce(Ljava/lang/String;)V

    .line 149
    const-string v1, "image"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/WeatherInfo;->setImage(Ljava/lang/String;)V

    .line 150
    return-object v0
.end method

.method public static queryWeatherInfo(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/WeatherInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, shoppingSheetIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 108
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-object v2

    .line 110
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 111
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    .line 114
    .local v11, size:I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v10, sb:Ljava/lang/StringBuffer;
    const-string v1, "shopping_sheet_id"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " in ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v11, :cond_3

    .line 117
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 118
    add-int/lit8 v1, v11, -0x1

    if-ge v8, v1, :cond_2

    .line 119
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 121
    :cond_3
    const-string v1, ")"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    sget-object v1, Lcom/zhangdan/app/data/db/table/WeatherField;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 124
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 125
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/WeatherInfo;>;"
    :cond_4
    invoke-static {v6}, Lcom/zhangdan/app/data/db/util/WeatherDbUtil;->parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/WeatherInfo;

    move-result-object v7

    .line 128
    .local v7, data:Lcom/zhangdan/app/data/model/WeatherInfo;
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 133
    if-eqz v6, :cond_5

    .line 134
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 135
    const/4 v6, 0x0

    :cond_5
    move-object v2, v9

    goto :goto_0

    .line 133
    .end local v7           #data:Lcom/zhangdan/app/data/model/WeatherInfo;
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/WeatherInfo;>;"
    :cond_6
    if-eqz v6, :cond_0

    .line 134
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 135
    const/4 v6, 0x0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_7

    .line 134
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 135
    const/4 v6, 0x0

    :cond_7
    throw v1
.end method

.method public static saveWeatherInfo(Landroid/content/Context;Ljava/util/List;)V
    .locals 23
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/WeatherInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/WeatherInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 35
    .local v2, cr:Landroid/content/ContentResolver;
    if-eqz v2, :cond_0

    .line 37
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v18, opsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v12, existIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 40
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .local v19, sb:Ljava/lang/StringBuffer;
    const-string v3, "shopping_sheet_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " in("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zhangdan/app/data/model/WeatherInfo;

    .line 43
    .local v10, data:Lcom/zhangdan/app/data/model/WeatherInfo;
    invoke-virtual {v10}, Lcom/zhangdan/app/data/model/WeatherInfo;->getId()J

    move-result-wide v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 45
    .end local v10           #data:Lcom/zhangdan/app/data/model/WeatherInfo;
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 46
    const-string v3, ")"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    sget-object v3, Lcom/zhangdan/app/data/db/table/WeatherField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "shopping_sheet_id"

    aput-object v6, v4, v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 50
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 52
    :cond_3
    const-string v3, "shopping_sheet_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 53
    .local v20, shoppingSheetId:J
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 57
    .end local v20           #shoppingSheetId:J
    :cond_4
    if-eqz v9, :cond_5

    .line 58
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 62
    .end local v9           #c:Landroid/database/Cursor;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v19           #sb:Ljava/lang/StringBuffer;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zhangdan/app/data/model/WeatherInfo;

    .line 63
    .restart local v10       #data:Lcom/zhangdan/app/data/model/WeatherInfo;
    invoke-static {v10}, Lcom/zhangdan/app/data/db/util/WeatherDbUtil;->constructValues(Lcom/zhangdan/app/data/model/WeatherInfo;)Landroid/content/ContentValues;

    move-result-object v22

    .line 64
    .local v22, values:Landroid/content/ContentValues;
    invoke-virtual {v10}, Lcom/zhangdan/app/data/model/WeatherInfo;->getId()J

    move-result-wide v20

    .line 65
    .restart local v20       #shoppingSheetId:J
    const/4 v13, 0x0

    .line 66
    .local v13, flag:Z
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 67
    .local v16, id:J
    cmp-long v3, v20, v16

    if-nez v3, :cond_6

    .line 68
    const/4 v13, 0x1

    .line 72
    .end local v16           #id:J
    :cond_7
    const/4 v8, 0x0

    .line 73
    .local v8, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v13, :cond_9

    .line 74
    sget-object v3, Lcom/zhangdan/app/data/db/table/WeatherField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shopping_sheet_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 78
    :goto_3
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 57
    .end local v8           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #data:Lcom/zhangdan/app/data/model/WeatherInfo;
    .end local v13           #flag:Z
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #shoppingSheetId:J
    .end local v22           #values:Landroid/content/ContentValues;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v19       #sb:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_8

    .line 58
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    .line 76
    .end local v9           #c:Landroid/database/Cursor;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v19           #sb:Ljava/lang/StringBuffer;
    .restart local v8       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v10       #data:Lcom/zhangdan/app/data/model/WeatherInfo;
    .restart local v13       #flag:Z
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v20       #shoppingSheetId:J
    .restart local v22       #values:Landroid/content/ContentValues;
    :cond_9
    sget-object v3, Lcom/zhangdan/app/data/db/table/WeatherField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    goto :goto_3

    .line 82
    .end local v8           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #data:Lcom/zhangdan/app/data/model/WeatherInfo;
    .end local v13           #flag:Z
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #shoppingSheetId:J
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_a
    :try_start_1
    const-string v3, "com.zhangdan.app"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 83
    :catch_0
    move-exception v11

    .line 84
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 85
    .end local v11           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    .line 86
    .local v11, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v11}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method
