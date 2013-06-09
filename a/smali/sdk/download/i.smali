.class final Lsdk/download/i;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lsdk/download/DownloadService;


# direct methods
.method public constructor <init>(Lsdk/download/DownloadService;)V
    .locals 1

    iput-object p1, p0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    const-string v0, "Download Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v3, 0x0

    const-wide v1, 0x7fffffffffffffffL

    move-wide v7, v1

    move v9, v3

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    monitor-enter v2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1}, Lsdk/download/DownloadService;->d(Lsdk/download/DownloadService;)Lsdk/download/i;

    move-result-object v1

    move-object/from16 v0, p0

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "multiple UpdateThreads in DownloadService"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1}, Lsdk/download/DownloadService;->e(Lsdk/download/DownloadService;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1}, Lsdk/download/DownloadService;->f(Lsdk/download/DownloadService;)Lsdk/download/i;

    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-virtual {v1}, Lsdk/download/DownloadService;->stopSelf()V

    :cond_1
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v7, v3

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Lsdk/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    if-nez v1, :cond_4

    const-string v1, "GexinSdkDownloadService"

    const-string v3, "couldn\'t get alarm manager"

    invoke-static {v1, v3}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1}, Lsdk/download/DownloadService;->g(Lsdk/download/DownloadService;)Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1}, Lsdk/download/DownloadService;->h(Lsdk/download/DownloadService;)Landroid/database/CharArrayBuffer;

    monitor-exit v2

    :cond_3
    :goto_2
    return-void

    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.GTDOWNLOAD_WAKEUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-virtual {v4}, Lsdk/download/DownloadService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lsdk/download/DownloadReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    const/4 v8, 0x0

    const/high16 v9, 0x4000

    invoke-static {v7, v8, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1}, Lsdk/download/DownloadService;->i(Lsdk/download/DownloadService;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1}, Lsdk/download/l;->b(Landroid/content/Context;)Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1}, Lsdk/download/l;->c(Landroid/content/Context;)Z

    move-result v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v10, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-virtual {v1}, Lsdk/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lsdk/download/k;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    if-nez v2, :cond_6

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_6
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v3, 0x0

    const/4 v10, 0x0

    const-wide v8, 0x7fffffffffffffffL

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move v4, v1

    :goto_3
    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1}, Lsdk/download/DownloadService;->j(Lsdk/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_16

    :cond_7
    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1, v3}, Lsdk/download/DownloadService;->a(Lsdk/download/DownloadService;I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1, v3}, Lsdk/download/DownloadService;->b(Lsdk/download/DownloadService;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v5, v2

    move v3, v10

    move-wide v1, v8

    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v5, :cond_19

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-wide v7, v1

    move v9, v3

    goto/16 :goto_0

    :cond_8
    :try_start_6
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1}, Lsdk/download/DownloadService;->j(Lsdk/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v3, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    move v4, v11

    move v5, v12

    move-wide v6, v13

    invoke-static/range {v1 .. v7}, Lsdk/download/DownloadService;->a(Lsdk/download/DownloadService;Landroid/database/Cursor;IZZJ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1, v3}, Lsdk/download/DownloadService;->a(Lsdk/download/DownloadService;I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1, v3}, Lsdk/download/DownloadService;->c(Lsdk/download/DownloadService;I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v10, 0x1

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1, v3, v13, v14}, Lsdk/download/DownloadService;->a(Lsdk/download/DownloadService;IJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_b

    const/4 v10, 0x1

    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    move v4, v1

    goto :goto_3

    :cond_b
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_a

    cmp-long v1, v4, v8

    if-gez v1, :cond_a

    move-wide v8, v4

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1}, Lsdk/download/DownloadService;->j(Lsdk/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsdk/download/d;

    iget v1, v1, Lsdk/download/d;->a:I

    if-ge v1, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1, v3}, Lsdk/download/DownloadService;->a(Lsdk/download/DownloadService;I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1, v3}, Lsdk/download/DownloadService;->b(Lsdk/download/DownloadService;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    :catchall_1
    move-exception v1

    :goto_6
    if-eqz v2, :cond_d

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v1

    :cond_e
    if-ne v1, v5, :cond_12

    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    move v4, v11

    move v5, v12

    move-wide v6, v13

    invoke-static/range {v1 .. v7}, Lsdk/download/DownloadService;->b(Lsdk/download/DownloadService;Landroid/database/Cursor;IZZJ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1, v3}, Lsdk/download/DownloadService;->a(Lsdk/download/DownloadService;I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1, v3}, Lsdk/download/DownloadService;->c(Lsdk/download/DownloadService;I)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v10, 0x1

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1, v3, v13, v14}, Lsdk/download/DownloadService;->a(Lsdk/download/DownloadService;IJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_11

    const/4 v10, 0x1

    :cond_10
    :goto_7
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    move v4, v1

    goto/16 :goto_3

    :cond_11
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_10

    cmp-long v1, v4, v8

    if-gez v1, :cond_10

    move-wide v8, v4

    goto :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    move v4, v11

    move v5, v12

    move-wide v6, v13

    invoke-static/range {v1 .. v7}, Lsdk/download/DownloadService;->a(Lsdk/download/DownloadService;Landroid/database/Cursor;IZZJ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1, v3}, Lsdk/download/DownloadService;->a(Lsdk/download/DownloadService;I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1, v3}, Lsdk/download/DownloadService;->c(Lsdk/download/DownloadService;I)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v10, 0x1

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1, v3, v13, v14}, Lsdk/download/DownloadService;->a(Lsdk/download/DownloadService;IJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_15

    const/4 v10, 0x1

    :cond_14
    :goto_8
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    move v4, v1

    goto/16 :goto_3

    :cond_15
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_14

    cmp-long v1, v4, v8

    if-gez v1, :cond_14

    move-wide v8, v4

    goto :goto_8

    :cond_16
    sget-object v1, Lsdk/download/o;->b:Lsdk/download/o;

    if-eqz v1, :cond_17

    sget-object v1, Lsdk/download/o;->b:Lsdk/download/o;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v3}, Lsdk/download/DownloadService;->j(Lsdk/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsdk/download/o;->a(Ljava/util/Collection;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    sget-object v3, Lsdk/download/o;->b:Lsdk/download/o;

    iget-object v3, v3, Lsdk/download/o;->d:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/download/i;->a:Lsdk/download/DownloadService;

    invoke-static {v1}, Lsdk/download/DownloadService;->k(Lsdk/download/DownloadService;)Lsdk/download/h;

    move-result-object v1

    invoke-virtual {v1}, Lsdk/download/h;->a()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v2, :cond_18

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-wide/from16 v16, v8

    move-wide/from16 v7, v16

    move v9, v10

    goto/16 :goto_0

    :cond_18
    move-wide v1, v8

    move v3, v10

    :cond_19
    move-wide v7, v1

    move v9, v3

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    move-object v2, v10

    goto/16 :goto_6

    :catchall_3
    move-exception v1

    move-object v2, v5

    goto/16 :goto_6

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v5, v10

    move v3, v9

    move-wide v1, v7

    goto/16 :goto_4

    :catch_2
    move-exception v1

    move-object v4, v1

    move-object v5, v2

    move v3, v9

    move-wide v1, v7

    goto/16 :goto_4
.end method
