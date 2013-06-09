.class final Lcom/igexin/sdk/s;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v8, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x2af8

    if-ne v2, v6, :cond_1

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/igexin/sdk/SdkMainService;->a(Landroid/content/Intent;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x2af9

    if-ne v2, v6, :cond_17

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v6, "GexinMainService"

    const-string v7, "receive action."

    invoke-static {v6, v7}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "a new apk installed "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v8, :cond_0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    iget-object v0, v5, Lcom/igexin/sdk/SdkMainService;->y:Lsdk/b/a/a/c/e;

    const-string v2, "table_message2"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "key"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "APPINSTALL_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v0, v2, v7, v8, v9}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-eqz v0, :cond_1a

    :try_start_1
    const-string v0, "info"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v0

    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "true"

    const-string v7, "is_autostart"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-result v0

    :goto_1
    :try_start_3
    const-string v2, "appid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "messageid"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "taskid"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lsdk/b/a/a/b/o;

    invoke-direct {v9}, Lsdk/b/a/a/b/o;-><init>()V

    invoke-virtual {v9, v2}, Lsdk/b/a/a/b/o;->a(Ljava/lang/String;)V

    sget-object v2, Lsdk/b/a/a/c/d;->n:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lsdk/b/a/a/b/o;->f(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Lsdk/b/a/a/b/o;->c(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Lsdk/b/a/a/b/o;->d(Ljava/lang/String;)V

    const-string v2, "17258000"

    invoke-virtual {v9, v2}, Lsdk/b/a/a/b/o;->e(Ljava/lang/String;)V

    const-string v2, "10080"

    invoke-static {v9, v2}, Lcom/igexin/sdk/SdkMainService;->a(Lsdk/b/a/a/b/o;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lcom/igexin/sdk/SdkMainService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "10090"

    invoke-static {v9, v2}, Lcom/igexin/sdk/SdkMainService;->a(Lsdk/b/a/a/b/o;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/igexin/sdk/SdkMainService;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/high16 v7, 0x800

    invoke-static {v5, v2, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v0

    :try_start_4
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    move v2, v3

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_3
    if-eqz v2, :cond_0

    iget-object v0, v5, Lcom/igexin/sdk/SdkMainService;->y:Lsdk/b/a/a/c/e;

    const-string v1, "table_message2"

    new-array v2, v3, [Ljava/lang/String;

    const-string v5, "key"

    aput-object v5, v2, v4

    new-array v3, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "APPINSTALL_"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v4

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    move v2, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v5, v0}, Lcom/igexin/sdk/SdkMainService;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    :cond_4
    move v2, v3

    goto :goto_2

    :catch_2
    move-exception v0

    move v2, v4

    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v8, :cond_7

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/sdk/SdkMainService;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v5, v1}, Lcom/igexin/sdk/SdkMainService;->a(Lcom/igexin/sdk/SdkMainService;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "------- an app unbind ------"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    :cond_7
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "an apk uninstalled "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    goto/16 :goto_0

    :cond_8
    const-string v1, "GexinMainService"

    const-string v2, "appid is null when unbind"

    invoke-static {v1, v2}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const-string v3, "com.gexin.action.bind"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "appID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_7
    iget-object v2, v5, Lcom/igexin/sdk/SdkMainService;->y:Lsdk/b/a/a/c/e;

    const-string v3, "table_appinfo"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "appid"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v6, v7}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_a

    invoke-static {v5, v0}, Lcom/igexin/sdk/SdkMainService;->b(Lcom/igexin/sdk/SdkMainService;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_a
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    :cond_c
    const-string v3, "com.gexin.action.unbind"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "appID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_9
    iget-object v2, v5, Lcom/igexin/sdk/SdkMainService;->y:Lsdk/b/a/a/c/e;

    const-string v3, "table_appinfo"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "appid"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v6, v7}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_d

    invoke-static {v5, v0}, Lcom/igexin/sdk/SdkMainService;->a(Lcom/igexin/sdk/SdkMainService;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_d
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    if-eqz v1, :cond_e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v0

    :cond_f
    invoke-virtual {v5}, Lcom/igexin/sdk/SdkMainService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "groupId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nextActionId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "notifID"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v6, "jsonobjstr"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "notification"

    invoke-virtual {v5, v0}, Lcom/igexin/sdk/SdkMainService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    :try_start_b
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v1, v0, v6}, Lcom/igexin/sdk/SdkMainService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    :cond_10
    const-string v3, "com.igexin.sdk.action.INSTALL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lsdk/b/a/a/c/d;->m:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "appKey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "messageId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "taskId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "msgAddress"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lsdk/b/a/a/b/o;

    invoke-direct {v7}, Lsdk/b/a/a/b/o;-><init>()V

    invoke-virtual {v7, v1}, Lsdk/b/a/a/b/o;->a(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lsdk/b/a/a/b/o;->f(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lsdk/b/a/a/b/o;->c(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lsdk/b/a/a/b/o;->d(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lsdk/b/a/a/b/o;->e(Ljava/lang/String;)V

    const-string v1, "10070"

    invoke-static {v7, v1}, Lcom/igexin/sdk/SdkMainService;->a(Lsdk/b/a/a/b/o;Ljava/lang/String;)V

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v5, v1}, Lcom/igexin/sdk/SdkMainService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_11
    const-string v3, "com.igexin.sdk.action.mmssms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "notifID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "notification"

    invoke-virtual {v5, v0}, Lcom/igexin/sdk/SdkMainService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x3400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v0}, Lcom/igexin/sdk/SdkMainService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_12
    const-string v3, "com.igexin.sdk.action.execute"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "taskid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "messageid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "appid"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pkgname"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "jsonobjstr"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ActionReceiver action:com.igexin.sdk.action.execute taskid:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " msgid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pkgname:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    if-eqz v5, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "EXEC_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "taskid"

    invoke-virtual {v9, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "appid"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "key"

    invoke-virtual {v9, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    const-string v10, "createtime"

    invoke-virtual {v6}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v6

    const/16 v11, 0x8

    invoke-virtual {v6, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_c
    iget-object v4, v5, Lcom/igexin/sdk/SdkMainService;->y:Lsdk/b/a/a/c/e;

    const-string v6, "table_message2"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "key"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v10, v11, v8}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, v5, Lcom/igexin/sdk/SdkMainService;->y:Lsdk/b/a/a/c/e;

    const-string v6, "table_message2"

    invoke-virtual {v4, v6, v9}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    invoke-virtual {v5}, Lcom/igexin/sdk/SdkMainService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    move-result v4

    if-eqz v4, :cond_15

    if-eqz v3, :cond_13

    if-nez v2, :cond_14

    :cond_13
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_14
    :try_start_d
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {v5}, Lcom/igexin/sdk/SdkMainService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/igexin/sdk/SdkMainService;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "action"

    const-string v7, "com.igexin.sdk.action.execute"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "taskid"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "messageid"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "jsonobjstr"

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5}, Lcom/igexin/sdk/SdkMainService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    :cond_15
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_6
    move-exception v0

    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v0

    :cond_17
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2afa

    if-ne v0, v1, :cond_19

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsdk/b/a/a/e/d/a;->a()Lsdk/b/a/a/e/d/a;

    move-result-object v0

    sget-object v1, Lsdk/b/a/a/e/d/c;->d:Lsdk/b/a/a/e/d/c;

    invoke-virtual {v0, v1}, Lsdk/b/a/a/e/d/a;->a(Lsdk/b/a/a/e/d/c;)V

    const-string v0, "ConnectivityChangeReceiver"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lsdk/b/a/a/c/h;->y:Z

    if-nez v0, :cond_18

    const-wide/16 v0, 0x0

    sput-wide v0, Lsdk/b/a/a/a/b;->c:J

    const-string v0, "ConnectivityChangeReceiver"

    const-string v1, "onReceive is not Online"

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->b()Lsdk/c/a/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    new-instance v1, Lsdk/b/a/a/e/d;

    invoke-direct {v1}, Lsdk/b/a/a/e/d;-><init>()V

    invoke-virtual {v0, v1}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lsdk/c/a/b/d;->d()V

    const-string v0, "ConnectivityChangeReceiver"

    const-string v1, "onReceive ReconnectNotifyType"

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lsdk/b/a/a/c/h;->E:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lsdk/b/a/a/c/h;->E:J

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->b()Lsdk/c/a/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    sget-object v1, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->b()Lsdk/c/a/b/c;

    move-result-object v2

    new-instance v3, Lsdk/a/a/a/a/a/e;

    invoke-direct {v3}, Lsdk/a/a/a/a/a/e;-><init>()V

    new-instance v5, Lsdk/b/a/a/e/b;

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v6

    invoke-direct {v5, v6}, Lsdk/b/a/a/e/b;-><init>(Lcom/igexin/sdk/SdkMainService;)V

    invoke-virtual/range {v0 .. v5}, Lsdk/c/a/b/d;->a(Ljava/lang/String;Lsdk/c/a/b/c;Ljava/lang/Object;ZLsdk/c/a/e/a/g;)Lsdk/c/a/b/f;

    goto/16 :goto_0

    :cond_19
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2afb

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/igexin/sdk/e;

    invoke-direct {v0, v5}, Lcom/igexin/sdk/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :catch_7
    move-exception v0

    move v2, v3

    goto/16 :goto_4

    :cond_1a
    move v2, v4

    goto/16 :goto_2
.end method
