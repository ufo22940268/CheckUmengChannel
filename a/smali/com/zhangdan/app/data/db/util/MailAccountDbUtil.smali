.class public Lcom/zhangdan/app/data/db/util/MailAccountDbUtil;
.super Ljava/lang/Object;
.source "MailAccountDbUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructValues(Lcom/zhangdan/app/data/model/http/MailAccount;)Landroid/content/ContentValues;
    .locals 4
    .parameter "data"

    .prologue
    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "auto_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getAutoId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v1, "mail_account"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getMailAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "pop_state"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getPopState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    const-string v1, "last_pop_msg"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getLastPopMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "last_pop_time"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getLastPopTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "web_login_state"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getWebLoginState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v1, "last_web_access_msg"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getLastWebAccessMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "last_web_access_time"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getLastWebAccessTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "trans_setting_state"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getTransSettingState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string v1, "is_deleted"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getIsDeleted()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    return-object v0
.end method

.method public static deleteMailAccountInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "userId"
    .parameter "mailAccount"

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 245
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/MailAccountField;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "user_id = ? and mail_account = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method public static getMailCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "userId"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    .local v7, sb:Ljava/lang/StringBuffer;
    const-string v1, "select count(*) from "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string v1, "MailAccount"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string v1, " where "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "user_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    sget-object v1, Lcom/zhangdan/app/data/db/DataProvider;->CONTENT_RAW_QUERY_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 140
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 144
    if-eqz v6, :cond_0

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    if-eqz v6, :cond_2

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v1, v8

    .line 147
    goto :goto_0

    .line 144
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static loadAllMailAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/MailAccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 159
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/MailAccountField;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "user_id = ? and is_deleted = 0"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 161
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/MailAccountInfo;>;"
    :cond_0
    new-instance v7, Lcom/zhangdan/app/data/model/MailAccountInfo;

    invoke-direct {v7}, Lcom/zhangdan/app/data/model/MailAccountInfo;-><init>()V

    .line 165
    .local v7, data:Lcom/zhangdan/app/data/model/MailAccountInfo;
    const-string v1, "user_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/zhangdan/app/data/model/MailAccountInfo;->setUserId(Ljava/lang/String;)V

    .line 166
    const-string v1, "auto_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Lcom/zhangdan/app/data/model/MailAccountInfo;->setAutoId(J)V

    .line 167
    const-string v1, "mail_account"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/zhangdan/app/data/model/MailAccountInfo;->setMailAccount(Ljava/lang/String;)V

    .line 168
    const-string v1, "local_pw"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/zhangdan/app/data/model/MailAccountInfo;->setLocalPwd(Ljava/lang/String;)V

    .line 169
    const-string v1, "local_special_pw"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/zhangdan/app/data/model/MailAccountInfo;->setLocalSpecialPwd(Ljava/lang/String;)V

    .line 170
    const-string v1, "local_times"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/zhangdan/app/data/model/MailAccountInfo;->setLocalTimes(Ljava/lang/String;)V

    .line 171
    const-string v1, "last_web_access_time"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/zhangdan/app/data/model/MailAccountInfo;->setLastWebAccessTime(Ljava/lang/String;)V

    .line 172
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 177
    if-eqz v6, :cond_1

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 179
    const/4 v6, 0x0

    .line 182
    .end local v7           #data:Lcom/zhangdan/app/data/model/MailAccountInfo;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/MailAccountInfo;>;"
    :cond_1
    :goto_0
    return-object v8

    .line 177
    :cond_2
    if-eqz v6, :cond_3

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 179
    const/4 v6, 0x0

    :cond_3
    move-object v8, v2

    .line 182
    goto :goto_0

    .line 177
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 179
    const/4 v6, 0x0

    :cond_4
    throw v1
.end method

.method public static saveMailAccount(Landroid/content/Context;Lcom/zhangdan/app/data/model/MailAccountInfo;)V
    .locals 12
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 193
    .local v7, isExists:Z
    const-string v3, "user_id = ? and auto_id = ?"

    .line 194
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/MailAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/MailAccountInfo;->getAutoId()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 195
    .local v4, selArgs:[Ljava/lang/String;
    sget-object v1, Lcom/zhangdan/app/data/db/table/MailAccountField;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 197
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const/4 v7, 0x1

    .line 201
    :cond_0
    if-eqz v6, :cond_1

    .line 202
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 203
    const/4 v6, 0x0

    .line 206
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 207
    .local v8, values:Landroid/content/ContentValues;
    const-string v1, "auto_id"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/MailAccountInfo;->getAutoId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 208
    const-string v1, "user_id"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/MailAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "mail_account"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/MailAccountInfo;->getMailAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v1, "last_web_access_time"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/MailAccountInfo;->getLastWebAccessTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "local_pw"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/MailAccountInfo;->getLocalPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "local_special_pw"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/MailAccountInfo;->getLocalSpecialPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "local_times"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/MailAccountInfo;->getLocalTimes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eqz v7, :cond_3

    .line 215
    sget-object v1, Lcom/zhangdan/app/data/db/table/MailAccountField;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 201
    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 202
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 203
    const/4 v6, 0x0

    :cond_2
    throw v1

    .line 217
    .restart local v8       #values:Landroid/content/ContentValues;
    :cond_3
    sget-object v1, Lcom/zhangdan/app/data/db/table/MailAccountField;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public static saveMailAccountList(Landroid/content/Context;Ljava/util/List;)V
    .locals 22
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/MailAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/MailAccount;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v19, opsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 42
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v13, existIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 45
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v20, sb:Ljava/lang/StringBuffer;
    const-string v2, "auto_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " in("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/app/data/model/http/MailAccount;

    .line 48
    .local v11, data:Lcom/zhangdan/app/data/model/http/MailAccount;
    invoke-virtual {v11}, Lcom/zhangdan/app/data/model/http/MailAccount;->getAutoId()J

    move-result-wide v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 50
    .end local v11           #data:Lcom/zhangdan/app/data/model/http/MailAccount;
    :cond_2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 51
    const-string v2, ")"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    sget-object v2, Lcom/zhangdan/app/data/db/table/MailAccountField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "auto_id"

    aput-object v5, v3, v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 57
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_4

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    :cond_3
    const-string v2, "auto_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 61
    .local v17, id:J
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 65
    .end local v17           #id:J
    :cond_4
    if-eqz v10, :cond_5

    .line 66
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 71
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #sb:Ljava/lang/StringBuffer;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/app/data/model/http/MailAccount;

    .line 72
    .restart local v11       #data:Lcom/zhangdan/app/data/model/http/MailAccount;
    invoke-static {v11}, Lcom/zhangdan/app/data/db/util/MailAccountDbUtil;->constructValues(Lcom/zhangdan/app/data/model/http/MailAccount;)Landroid/content/ContentValues;

    move-result-object v21

    .line 73
    .local v21, values:Landroid/content/ContentValues;
    invoke-virtual {v11}, Lcom/zhangdan/app/data/model/http/MailAccount;->getAutoId()J

    move-result-wide v7

    .line 74
    .local v7, autoId:J
    const/4 v14, 0x0

    .line 75
    .local v14, flag:Z
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 76
    .restart local v17       #id:J
    cmp-long v2, v7, v17

    if-nez v2, :cond_6

    .line 77
    const/4 v14, 0x1

    .line 81
    .end local v17           #id:J
    :cond_7
    const/4 v9, 0x0

    .line 82
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v14, :cond_9

    .line 83
    sget-object v2, Lcom/zhangdan/app/data/db/table/MailAccountField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v21

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

    move-result-object v9

    .line 93
    :goto_3
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 65
    .end local v7           #autoId:J
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #data:Lcom/zhangdan/app/data/model/http/MailAccount;
    .end local v14           #flag:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #values:Landroid/content/ContentValues;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v20       #sb:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_8

    .line 66
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 89
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #sb:Ljava/lang/StringBuffer;
    .restart local v7       #autoId:J
    .restart local v9       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v11       #data:Lcom/zhangdan/app/data/model/http/MailAccount;
    .restart local v14       #flag:Z
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v21       #values:Landroid/content/ContentValues;
    :cond_9
    sget-object v2, Lcom/zhangdan/app/data/db/table/MailAccountField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    goto :goto_3

    .line 97
    .end local v7           #autoId:J
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #data:Lcom/zhangdan/app/data/model/http/MailAccount;
    .end local v14           #flag:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #values:Landroid/content/ContentValues;
    :cond_a
    :try_start_1
    const-string v2, "com.zhangdan.app"

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 98
    :catch_0
    move-exception v12

    .line 99
    .local v12, e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 100
    .end local v12           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v12

    .line 101
    .local v12, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v12}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static updateMailAccessTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "time"
    .parameter "userId"
    .parameter "emailName"

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 231
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "last_web_access_time"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v2, Lcom/zhangdan/app/data/db/table/MailAccountField;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "mail_account = ? and user_id = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 234
    return-void
.end method
