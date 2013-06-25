.class public Lcom/zhangdan/app/data/db/util/ConsumeCategoryDbUtil;
.super Ljava/lang/Object;
.source "ConsumeCategoryDbUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructValues(Lcom/zhangdan/app/data/model/http/Category;)Landroid/content/ContentValues;
    .locals 3
    .parameter "data"

    .prologue
    .line 95
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "category_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Category;->getCategoryId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v1, "parent_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Category;->getParntId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v1, "category_name"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Category;->getCategotyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "is_delete"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Category;->getIsdelete()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    return-object v0
.end method

.method public static getCategory(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Category;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 104
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v8, categoryList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Category;>;"
    if-nez p0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-object v8

    .line 107
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zhangdan/app/data/db/table/ShoppingCategoryField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "category_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "category_name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "parent_id"

    aput-object v5, v2, v4

    const-string v5, "category_id asc"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 110
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    :cond_2
    new-instance v7, Lcom/zhangdan/app/data/model/http/Category;

    invoke-direct {v7}, Lcom/zhangdan/app/data/model/http/Category;-><init>()V

    .line 113
    .local v7, category:Lcom/zhangdan/app/data/model/http/Category;
    const-string v0, "category_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 114
    .local v9, id:I
    const-string v0, "category_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 115
    .local v10, name:Ljava/lang/String;
    const-string v0, "parent_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 116
    .local v11, parentId:I
    invoke-virtual {v7, v9}, Lcom/zhangdan/app/data/model/http/Category;->setCategoryId(I)V

    .line 117
    invoke-virtual {v7, v10}, Lcom/zhangdan/app/data/model/http/Category;->setCategotyName(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v7, v11}, Lcom/zhangdan/app/data/model/http/Category;->setParntId(I)V

    .line 119
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 123
    .end local v7           #category:Lcom/zhangdan/app/data/model/http/Category;
    .end local v9           #id:I
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #parentId:I
    :cond_3
    if-eqz v6, :cond_0

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static queryCategory(Landroid/content/Context;I)Lcom/zhangdan/app/data/model/http/Category;
    .locals 11
    .parameter "context"
    .parameter "categoryId"

    .prologue
    const/4 v2, 0x0

    .line 156
    if-nez p0, :cond_0

    .line 177
    :goto_0
    return-object v2

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 159
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/ShoppingCategoryField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "category_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 162
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    new-instance v7, Lcom/zhangdan/app/data/model/http/Category;

    invoke-direct {v7}, Lcom/zhangdan/app/data/model/http/Category;-><init>()V

    .line 164
    .local v7, category:Lcom/zhangdan/app/data/model/http/Category;
    const-string v1, "category_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 165
    .local v8, id:I
    const-string v1, "category_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 166
    .local v9, name:Ljava/lang/String;
    const-string v1, "parent_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 167
    .local v10, parentId:I
    invoke-virtual {v7, v8}, Lcom/zhangdan/app/data/model/http/Category;->setCategoryId(I)V

    .line 168
    invoke-virtual {v7, v9}, Lcom/zhangdan/app/data/model/http/Category;->setCategotyName(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v7, v10}, Lcom/zhangdan/app/data/model/http/Category;->setParntId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    if-eqz v6, :cond_1

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_1
    const/4 v6, 0x0

    move-object v2, v7

    goto :goto_0

    .line 173
    .end local v7           #category:Lcom/zhangdan/app/data/model/http/Category;
    .end local v8           #id:I
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #parentId:I
    :cond_2
    if-eqz v6, :cond_3

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_3
    const/4 v6, 0x0

    .line 176
    goto :goto_0

    .line 173
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_4
    const/4 v6, 0x0

    throw v1
.end method

.method public static queryCategoryByParentId(Landroid/content/Context;I)Ljava/util/List;
    .locals 8
    .parameter "context"
    .parameter "parentId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 181
    if-nez p0, :cond_0

    .line 197
    :goto_0
    return-object v4

    .line 183
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 185
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/ShoppingCategoryField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "category_id"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parent_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 188
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 194
    :cond_2
    if-eqz v6, :cond_3

    .line 195
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v4, v7

    .line 197
    goto :goto_0

    .line 194
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 195
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static queryCategoryName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "categoryId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 130
    if-nez p0, :cond_0

    .line 145
    :goto_0
    return-object v4

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/ShoppingCategoryField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "category_name"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "category_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 136
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 141
    .local v7, name:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_1
    const/4 v6, 0x0

    move-object v4, v7

    goto :goto_0

    .line 141
    .end local v7           #name:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_3
    const/4 v6, 0x0

    .line 144
    goto :goto_0

    .line 141
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_4
    const/4 v6, 0x0

    throw v1
.end method

.method public static saveCategoryList(Landroid/content/Context;Ljava/util/List;)V
    .locals 20
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Category;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v17, opsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 39
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v12, existIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 41
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    .local v18, sb:Ljava/lang/StringBuffer;
    const-string v2, "category_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " in("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zhangdan/app/data/model/http/Category;

    .line 44
    .local v10, data:Lcom/zhangdan/app/data/model/http/Category;
    invoke-virtual {v10}, Lcom/zhangdan/app/data/model/http/Category;->getCategoryId()I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 46
    .end local v10           #data:Lcom/zhangdan/app/data/model/http/Category;
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 47
    const-string v2, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    sget-object v2, Lcom/zhangdan/app/data/db/table/ShoppingCategoryField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "category_id"

    aput-object v5, v3, v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 51
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 53
    :cond_3
    const-string v2, "category_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 54
    .local v16, id:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 58
    .end local v16           #id:I
    :cond_4
    if-eqz v8, :cond_5

    .line 59
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 64
    .end local v8           #c:Landroid/database/Cursor;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v18           #sb:Ljava/lang/StringBuffer;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zhangdan/app/data/model/http/Category;

    .line 65
    .restart local v10       #data:Lcom/zhangdan/app/data/model/http/Category;
    invoke-static {v10}, Lcom/zhangdan/app/data/db/util/ConsumeCategoryDbUtil;->constructValues(Lcom/zhangdan/app/data/model/http/Category;)Landroid/content/ContentValues;

    move-result-object v19

    .line 66
    .local v19, values:Landroid/content/ContentValues;
    invoke-virtual {v10}, Lcom/zhangdan/app/data/model/http/Category;->getCategoryId()I

    move-result v9

    .line 67
    .local v9, categoryId:I
    const/4 v13, 0x0

    .line 68
    .local v13, flag:Z
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 69
    .restart local v16       #id:I
    move/from16 v0, v16

    if-ne v9, v0, :cond_6

    .line 70
    const/4 v13, 0x1

    .line 74
    .end local v16           #id:I
    :cond_7
    const/4 v7, 0x0

    .line 75
    .local v7, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v13, :cond_9

    .line 76
    sget-object v2, Lcom/zhangdan/app/data/db/table/ShoppingCategoryField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "category_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 82
    :goto_3
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 58
    .end local v7           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v9           #categoryId:I
    .end local v10           #data:Lcom/zhangdan/app/data/model/http/Category;
    .end local v13           #flag:Z
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v19           #values:Landroid/content/ContentValues;
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v18       #sb:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_8

    .line 59
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 78
    .end local v8           #c:Landroid/database/Cursor;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v18           #sb:Ljava/lang/StringBuffer;
    .restart local v7       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v9       #categoryId:I
    .restart local v10       #data:Lcom/zhangdan/app/data/model/http/Category;
    .restart local v13       #flag:Z
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v19       #values:Landroid/content/ContentValues;
    :cond_9
    sget-object v2, Lcom/zhangdan/app/data/db/table/ShoppingCategoryField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    goto :goto_3

    .line 86
    .end local v7           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v9           #categoryId:I
    .end local v10           #data:Lcom/zhangdan/app/data/model/http/Category;
    .end local v13           #flag:Z
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_a
    :try_start_1
    const-string v2, "com.zhangdan.app"

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 87
    :catch_0
    move-exception v11

    .line 88
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 89
    .end local v11           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    .line 90
    .local v11, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v11}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method
