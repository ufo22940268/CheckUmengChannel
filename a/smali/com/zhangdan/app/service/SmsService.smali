.class public Lcom/zhangdan/app/service/SmsService;
.super Landroid/app/IntentService;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/ArrayList;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "SmsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/service/SmsService;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/service/SmsService;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/service/SmsService;->c:Z

    return-void
.end method

.method private declared-synchronized a(Z)Z
    .locals 12

    const-wide/16 v1, 0x0

    const/4 v7, 0x1

    const/16 v10, 0x1f4

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "51zhangdan"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "id"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    move-wide v3, v1

    :goto_0
    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v2, v5

    const/4 v5, 0x1

    const-string v8, "address"

    aput-object v8, v2, v5

    const/4 v5, 0x2

    const-string v8, "body"

    aput-object v8, v2, v5

    const/4 v5, 0x3

    const-string v8, "date"

    aput-object v8, v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "date >"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date asc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v3

    if-eqz v3, :cond_7

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v6

    move v2, v6

    :goto_1
    new-instance v0, Lcom/zhangdan/app/sms/j;

    invoke-direct {v0}, Lcom/zhangdan/app/sms/j;-><init>()V

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "address"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "body"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "date"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8}, Lcom/zhangdan/app/sms/j;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/zhangdan/app/sms/j;->a(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/zhangdan/app/sms/j;->a(J)V

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/zhangdan/app/sms/j;->b(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/service/SmsService;->a:Ljava/util/List;

    iget-object v8, p0, Lcom/zhangdan/app/service/SmsService;->b:Ljava/util/ArrayList;

    invoke-static {v4, v0, v5, v8}, Lcom/zhangdan/app/sms/h;->a(Landroid/content/Context;Lcom/zhangdan/app/sms/j;Ljava/util/List;Ljava/util/List;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    move v0, v7

    :goto_2
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "update_sms"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "sms_list"

    iget-object v5, p0, Lcom/zhangdan/app/service/SmsService;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/service/SmsService;->sendBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v1, v2, 0x1

    if-ne v1, v10, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/service/SmsService;->a:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/zhangdan/app/sms/d;->a(Landroid/content/Context;Ljava/util/List;)V

    iget-object v1, p0, Lcom/zhangdan/app/service/SmsService;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v6

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/zhangdan/app/h/i;->a(Landroid/content/Context;J)V

    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    if-nez v2, :cond_5

    :goto_4
    if-eqz v3, :cond_1

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/service/SmsService;->a:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/zhangdan/app/sms/d;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "update_sms"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "sms_list"

    iget-object v5, p0, Lcom/zhangdan/app/service/SmsService;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/service/SmsService;->sendBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v0, v2, 0x1

    if-ne v0, v10, :cond_2

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/app/service/SmsService;->a:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/zhangdan/app/sms/d;->a(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/app/service/SmsService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v6

    :cond_2
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/zhangdan/app/h/i;->a(Landroid/content/Context;J)V

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_3

    :catchall_0
    move-exception v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "update_sms"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "sms_list"

    iget-object v5, p0, Lcom/zhangdan/app/service/SmsService;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/service/SmsService;->sendBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v1, v2, 0x1

    if-ne v1, v10, :cond_3

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/service/SmsService;->a:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/zhangdan/app/sms/d;->a(Landroid/content/Context;Ljava/util/List;)V

    iget-object v1, p0, Lcom/zhangdan/app/service/SmsService;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_3
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/zhangdan/app/h/i;->a(Landroid/content/Context;J)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v3, :cond_4

    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/service/SmsService;->a:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/zhangdan/app/sms/d;->a(Landroid/content/Context;Ljava/util/List;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move v2, v1

    move v1, v0

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_2

    :cond_7
    move v0, v6

    goto/16 :goto_4

    :cond_8
    move-wide v3, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "scan_finish"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/service/SmsService;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/service/SmsService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zhangdan/app/service/SmsService;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/zhangdan/app/service/SmsService;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/service/SmsService;->c:Z

    const-string v0, "is_scan_all"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/sms/d;->a(Landroid/content/Context;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "scan_start"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/service/SmsService;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, v0}, Lcom/zhangdan/app/service/SmsService;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/service/ReadLocalDataService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/service/SmsService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SmsService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->b()Lcom/zhangdan/app/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zhangdan/app/c/a;->a(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method
