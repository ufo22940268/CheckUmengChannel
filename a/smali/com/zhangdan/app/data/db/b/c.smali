.class public final Lcom/zhangdan/app/data/db/b/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;J)Lcom/zhangdan/app/data/model/c;
    .locals 30

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/zhangdan/app/data/db/a/d;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bill_id = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "bill_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v2, "ub_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v2, "bank_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v2, "mail_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v2, "bill_start_date"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v2, "bill_date"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v2, "payment_due_date"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v2, "credit_limit"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v14

    const-string v2, "cash_limit"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v15

    const-string v2, "new_charges"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v16

    const-string v2, "usd_new_charges"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v17

    const-string v2, "min_payment"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v18

    const-string v2, "usd_min_payment"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v19

    const-string v2, "new_balance"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v20

    const-string v2, "usd_new_balance"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v21

    const-string v2, "last_balance"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v22

    const-string v2, "last_payment"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v23

    const-string v2, "is_return"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const-string v2, "card_nums"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const-string v2, "return_amount"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v26

    const-string v2, "integral"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const-string v2, "mail_sender"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    const-string v2, "create_time"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    new-instance v2, Lcom/zhangdan/app/data/model/c;

    invoke-direct {v2}, Lcom/zhangdan/app/data/model/c;-><init>()V

    invoke-virtual {v2, v4, v5}, Lcom/zhangdan/app/data/model/c;->a(J)V

    invoke-virtual {v2, v6, v7}, Lcom/zhangdan/app/data/model/c;->b(J)V

    invoke-virtual {v2, v8}, Lcom/zhangdan/app/data/model/c;->a(I)V

    invoke-virtual {v2, v9, v10}, Lcom/zhangdan/app/data/model/c;->c(J)V

    invoke-virtual {v2, v11}, Lcom/zhangdan/app/data/model/c;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lcom/zhangdan/app/data/model/c;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Lcom/zhangdan/app/data/model/c;->c(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Lcom/zhangdan/app/data/model/c;->a(F)V

    invoke-virtual {v2, v15}, Lcom/zhangdan/app/data/model/c;->b(F)V

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/c;->c(F)V

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/c;->d(F)V

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/c;->e(F)V

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/c;->f(F)V

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/c;->g(F)V

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/c;->h(F)V

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/c;->i(F)V

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/c;->j(F)V

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/c;->b(I)V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/c;->d(Ljava/lang/String;)V

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/c;->k(F)V

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/c;->c(I)V

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/c;->e(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/c;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2

    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zhangdan/app/data/db/a/d;->a:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "bill_id"

    aput-object v3, v2, v6

    const-string v3, "ub_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v5

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JD)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "return_amount"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    sget-object v2, Lcom/zhangdan/app/data/db/a/d;->a:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bill_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static a(Landroid/content/Context;JID)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "is_return"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    const-string v2, "return_amount"

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    sget-object v2, Lcom/zhangdan/app/data/db/a/d;->a:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bill_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 14

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "bill_id in("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/zhangdan/app/data/db/a/d;->a:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v5, "bill_id"

    aput-object v5, v2, v7

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "bill_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    :try_start_1
    const-string v1, "com.zhangdan.app"

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/http/l;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->b()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/http/l;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "bill_id"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->b()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "bank_id"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->a()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "user_id"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->c()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "mail_id"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->d()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "bill_start_date"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "bill_date"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "name_on_card"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "payment_due_date"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "credit_limit"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->i()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "cash_limit"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->j()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "new_charges"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->k()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "usd_new_charges"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->l()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "min_payment"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->m()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "usd_min_payment"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->n()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "new_balance"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "usd_new_balance"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->p()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "adjustment"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->q()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "interest"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->u()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "integral"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->r()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "integral_valid_until"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->s()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "integral_valid_date"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->t()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "last_balance"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->v()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "last_payment"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->w()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "is_return"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->x()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "card_nums"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->y()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ub_id"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->z()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "mail_sender"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->A()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "last_modify_time"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->B()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "create_time"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->D()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "return_amount"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->C()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/l;->b()J

    move-result-wide v10

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v7

    :goto_3
    if-eqz v1, :cond_a

    sget-object v1, Lcom/zhangdan/app/data/db/a/d;->a:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "bill_id = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    :goto_4
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v1, v10, v12

    if-nez v1, :cond_8

    move v1, v6

    goto :goto_3

    :cond_a
    sget-object v1, Lcom/zhangdan/app/data/db/a/d;->a:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;J)Ljava/util/List;
    .locals 20

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/zhangdan/app/data/db/a/d;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ub_id = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "payment_due_date desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "bill_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v2, "bank_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v6, "bill_start_date"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "bill_date"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "payment_due_date"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "new_charges"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getFloat(I)F

    move-result v10

    const-string v11, "usd_new_charges"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    const-string v12, "new_balance"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v12

    const-string v13, "usd_new_balance"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getFloat(I)F

    move-result v13

    const-string v14, "last_balance"

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getFloat(I)F

    move-result v14

    const-string v15, "last_payment"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v15

    const-string v16, "is_return"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const-string v17, "card_nums"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "mail_sender"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    new-instance v19, Lcom/zhangdan/app/data/model/c;

    invoke-direct/range {v19 .. v19}, Lcom/zhangdan/app/data/model/c;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lcom/zhangdan/app/data/model/c;->a(J)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/data/model/c;->a(I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/c;->a(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/zhangdan/app/data/model/c;->b(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/zhangdan/app/data/model/c;->c(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/zhangdan/app/data/model/c;->c(F)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/zhangdan/app/data/model/c;->d(F)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/zhangdan/app/data/model/c;->g(F)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/data/model/c;->h(F)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/zhangdan/app/data/model/c;->i(F)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/zhangdan/app/data/model/c;->j(F)V

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/c;->b(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/c;->d(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/c;->e(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v8

    :catchall_0
    move-exception v2

    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zhangdan/app/data/db/a/d;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "bill_id"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "name_on_card = \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
