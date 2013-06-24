.class public Lcom/zhangdan/app/data/db/util/BankServiceDbUtil;
.super Ljava/lang/Object;
.source "BankServiceDbUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructValues(Lcom/zhangdan/app/data/model/http/BankService;)Landroid/content/ContentValues;
    .locals 4
    .parameter "data"

    .prologue
    .line 96
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "auto_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/BankService;->getAuto_id()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    const-string v1, "bank_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/BankService;->getBank_id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v1, "service_content"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/BankService;->getServiceContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "service_type"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/BankService;->getServiceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v1, "ord"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/BankService;->getOrd()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    return-object v0
.end method

.method public static getBankServiceList(Landroid/content/Context;II)Ljava/util/List;
    .locals 11
    .parameter "context"
    .parameter "bankid"
    .parameter "typeid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BankService;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 106
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v7, bankServiceList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zhangdan/app/data/db/table/BankServiceField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "service_content"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "service_type"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bank_id= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "service_type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 110
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    new-instance v6, Lcom/zhangdan/app/data/model/http/BankService;

    invoke-direct {v6}, Lcom/zhangdan/app/data/model/http/BankService;-><init>()V

    .line 113
    .local v6, bank:Lcom/zhangdan/app/data/model/http/BankService;
    const-string v0, "service_content"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, content:Ljava/lang/String;
    const-string v0, "service_type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 115
    .local v10, type:I
    invoke-virtual {v6, v10}, Lcom/zhangdan/app/data/model/http/BankService;->setServiceType(I)V

    .line 116
    invoke-virtual {v6, v9}, Lcom/zhangdan/app/data/model/http/BankService;->setServiceContent(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/http/BankService;->decode()V

    .line 118
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 122
    .end local v6           #bank:Lcom/zhangdan/app/data/model/http/BankService;
    .end local v9           #content:Ljava/lang/String;
    .end local v10           #type:I
    :cond_1
    if-eqz v8, :cond_2

    .line 123
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_2
    return-object v7

    .line 122
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 123
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/http/BankService;
    .locals 5
    .parameter "c"

    .prologue
    .line 214
    new-instance v0, Lcom/zhangdan/app/data/model/http/BankService;

    invoke-direct {v0}, Lcom/zhangdan/app/data/model/http/BankService;-><init>()V

    .line 215
    .local v0, bank:Lcom/zhangdan/app/data/model/http/BankService;
    const-string v4, "service_content"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, content:Ljava/lang/String;
    const-string v4, "service_type"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 217
    .local v3, type:I
    const-string v4, "bank_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 218
    .local v1, bankId:I
    invoke-virtual {v0, v3}, Lcom/zhangdan/app/data/model/http/BankService;->setServiceType(I)V

    .line 219
    invoke-virtual {v0, v2}, Lcom/zhangdan/app/data/model/http/BankService;->setServiceContent(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/BankService;->setBank_id(I)V

    .line 221
    return-object v0
.end method

.method public static queryBankServiceByServiceType(Landroid/content/Context;II)Ljava/util/List;
    .locals 9
    .parameter "context"
    .parameter "bankId"
    .parameter "serviceType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BankService;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/BankServiceField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bank_id= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "service_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 140
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    :cond_0
    invoke-static {v6}, Lcom/zhangdan/app/data/db/util/BankServiceDbUtil;->parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/http/BankService;

    move-result-object v7

    .line 144
    .local v7, data:Lcom/zhangdan/app/data/model/http/BankService;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 149
    if-eqz v6, :cond_1

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 152
    .end local v7           #data:Lcom/zhangdan/app/data/model/http/BankService;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    :cond_1
    :goto_0
    return-object v8

    .line 149
    :cond_2
    if-eqz v6, :cond_3

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, v2

    .line 152
    goto :goto_0

    .line 149
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static querySmsBankService(Landroid/content/Context;I)Ljava/util/List;
    .locals 10
    .parameter "context"
    .parameter "bankId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BankService;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 194
    .local v9, sb:Ljava/lang/StringBuffer;
    const-string v1, "bank_id"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const-string v1, "service_type"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " in(\'3\', \'5\', \'6\', \'7\', \'8\', \'9\', \'10\', \'11\', \'12\', \'13\', \'14\', \'15\', \'16\', \'18\', \'19\')"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    sget-object v1, Lcom/zhangdan/app/data/db/table/BankServiceField;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "auto_id asc"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 198
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    :cond_0
    invoke-static {v6}, Lcom/zhangdan/app/data/db/util/BankServiceDbUtil;->parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/http/BankService;

    move-result-object v7

    .line 202
    .local v7, data:Lcom/zhangdan/app/data/model/http/BankService;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 207
    if-eqz v6, :cond_1

    .line 208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 210
    .end local v7           #data:Lcom/zhangdan/app/data/model/http/BankService;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    :cond_1
    :goto_0
    return-object v8

    .line 207
    :cond_2
    if-eqz v6, :cond_3

    .line 208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, v2

    .line 210
    goto :goto_0

    .line 207
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static queryTelBankService(Landroid/content/Context;I)Ljava/util/List;
    .locals 10
    .parameter "context"
    .parameter "bankId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BankService;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 164
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v9, sb:Ljava/lang/StringBuffer;
    const-string v1, "bank_id"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    const-string v1, "service_type"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " in(\'0\', \'1\', \'2\')"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    sget-object v1, Lcom/zhangdan/app/data/db/table/BankServiceField;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "service_type asc"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 169
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    :cond_0
    invoke-static {v6}, Lcom/zhangdan/app/data/db/util/BankServiceDbUtil;->parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/http/BankService;

    move-result-object v7

    .line 173
    .local v7, data:Lcom/zhangdan/app/data/model/http/BankService;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 178
    if-eqz v6, :cond_1

    .line 179
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 181
    .end local v7           #data:Lcom/zhangdan/app/data/model/http/BankService;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    :cond_1
    :goto_0
    return-object v8

    .line 178
    :cond_2
    if-eqz v6, :cond_3

    .line 179
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, v2

    .line 181
    goto :goto_0

    .line 178
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 179
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static saveBankServiceList(Landroid/content/Context;Ljava/util/List;)V
    .locals 23
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BankService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v20, opsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 42
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v14, existIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 44
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .local v21, sb:Ljava/lang/StringBuffer;
    const-string v2, "auto_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " in("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zhangdan/app/data/model/http/BankService;

    .line 47
    .local v9, bankService:Lcom/zhangdan/app/data/model/http/BankService;
    invoke-virtual {v9}, Lcom/zhangdan/app/data/model/http/BankService;->getAuto_id()J

    move-result-wide v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 49
    .end local v9           #bankService:Lcom/zhangdan/app/data/model/http/BankService;
    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 50
    const-string v2, ")"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    sget-object v2, Lcom/zhangdan/app/data/db/table/BankServiceField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "auto_id"

    aput-object v5, v3, v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 54
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_4

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    :cond_3
    const-string v2, "auto_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 57
    .local v7, autoId:J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 61
    .end local v7           #autoId:J
    :cond_4
    if-eqz v11, :cond_5

    .line 62
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 67
    .end local v11           #c:Landroid/database/Cursor;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #sb:Ljava/lang/StringBuffer;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/zhangdan/app/data/model/http/BankService;

    .line 68
    .local v12, data:Lcom/zhangdan/app/data/model/http/BankService;
    invoke-static {v12}, Lcom/zhangdan/app/data/db/util/BankServiceDbUtil;->constructValues(Lcom/zhangdan/app/data/model/http/BankService;)Landroid/content/ContentValues;

    move-result-object v22

    .line 69
    .local v22, values:Landroid/content/ContentValues;
    invoke-virtual {v12}, Lcom/zhangdan/app/data/model/http/BankService;->getAuto_id()J

    move-result-wide v7

    .line 70
    .restart local v7       #autoId:J
    const/4 v15, 0x0

    .line 71
    .local v15, flag:Z
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 72
    .local v18, id:J
    cmp-long v2, v7, v18

    if-nez v2, :cond_6

    .line 73
    const/4 v15, 0x1

    .line 77
    .end local v18           #id:J
    :cond_7
    const/4 v10, 0x0

    .line 78
    .local v10, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v15, :cond_9

    .line 79
    sget-object v2, Lcom/zhangdan/app/data/db/table/BankServiceField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 83
    :goto_3
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 61
    .end local v7           #autoId:J
    .end local v10           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v12           #data:Lcom/zhangdan/app/data/model/http/BankService;
    .end local v15           #flag:Z
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v22           #values:Landroid/content/ContentValues;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v21       #sb:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_8

    .line 62
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 81
    .end local v11           #c:Landroid/database/Cursor;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #sb:Ljava/lang/StringBuffer;
    .restart local v7       #autoId:J
    .restart local v10       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v12       #data:Lcom/zhangdan/app/data/model/http/BankService;
    .restart local v15       #flag:Z
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v22       #values:Landroid/content/ContentValues;
    :cond_9
    sget-object v2, Lcom/zhangdan/app/data/db/table/BankServiceField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    goto :goto_3

    .line 87
    .end local v7           #autoId:J
    .end local v10           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v12           #data:Lcom/zhangdan/app/data/model/http/BankService;
    .end local v15           #flag:Z
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_a
    :try_start_1
    const-string v2, "com.zhangdan.app"

    move-object/from16 v0, v20

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 88
    :catch_0
    move-exception v13

    .line 89
    .local v13, e:Landroid/os/RemoteException;
    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 90
    .end local v13           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v13

    .line 91
    .local v13, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v13}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method
