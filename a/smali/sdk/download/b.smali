.class public Lsdk/download/b;
.super Ljava/lang/Object;

# interfaces
.implements Lsdk/download/n;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/igexin/sdk/SdkMainService;

.field private c:J

.field private d:Ljava/util/Map;

.field private e:Ljava/util/Map;

.field private f:Ljava/util/Map;

.field private g:Ljava/util/List;

.field private h:Ljava/util/Timer;

.field private i:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/igexin/sdk/SdkMainService;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lsdk/download/b;->c:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsdk/download/b;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsdk/download/b;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsdk/download/b;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsdk/download/b;->g:Ljava/util/List;

    iput-object v2, p0, Lsdk/download/b;->h:Ljava/util/Timer;

    iput-object v2, p0, Lsdk/download/b;->i:Ljava/util/Collection;

    iput-object p1, p0, Lsdk/download/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lsdk/download/b;->b:Lcom/igexin/sdk/SdkMainService;

    return-void
.end method

.method private a(Landroid/app/NotificationManager;Lsdk/download/d;)Landroid/app/Notification;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p2, Lsdk/download/d;->M:Z

    iget-object v0, p0, Lsdk/download/b;->a:Landroid/content/Context;

    iget-object v1, p2, Lsdk/download/d;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lsdk/download/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lsdk/download/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lsdk/download/o;->a(Landroid/content/Context;)Lsdk/download/o;

    move-result-object v1

    iget v2, p2, Lsdk/download/d;->a:I

    invoke-virtual {v1, v2}, Lsdk/download/o;->a(I)Z

    iget v1, p2, Lsdk/download/d;->a:I

    invoke-static {v1}, Lsdk/download/q;->a(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-object v0
.end method

.method static synthetic a(Lsdk/download/b;Landroid/app/NotificationManager;Lsdk/download/d;)Landroid/app/Notification;
    .locals 1

    invoke-direct {p0, p1, p2}, Lsdk/download/b;->a(Landroid/app/NotificationManager;Lsdk/download/d;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private a(Lsdk/download/d;Lsdk/b/a/a/b/b;Landroid/app/NotificationManager;)Landroid/app/Notification;
    .locals 7

    const/4 v0, 0x0

    iget-boolean v1, p1, Lsdk/download/d;->M:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p1, Lsdk/download/d;->M:Z

    invoke-virtual {p2}, Lsdk/b/a/a/b/b;->e()Lsdk/b/a/a/b/o;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "messageid"

    invoke-virtual {v2}, Lsdk/b/a/a/b/o;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "taskid"

    invoke-virtual {v2}, Lsdk/b/a/a/b/o;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appid"

    invoke-virtual {v2}, Lsdk/b/a/a/b/o;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APPINSTALL_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lsdk/b/a/a/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "is_autostart"

    invoke-virtual {p2}, Lsdk/b/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "info"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    const-string v4, "createtime"

    invoke-virtual {v1}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lsdk/download/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v1, v1, Lcom/igexin/sdk/SdkMainService;->y:Lsdk/b/a/a/c/e;

    const-string v4, "table_message2"

    invoke-virtual {v1, v4, v3}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    new-instance v1, Ljava/io/File;

    iget-object v3, p1, Lsdk/download/d;->e:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "DownloadHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tend to install app uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.igexin.sdk.action.INSTALL"

    const-string v5, "package:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appId"

    invoke-virtual {v2}, Lsdk/b/a/a/b/o;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appKey"

    invoke-virtual {v2}, Lsdk/b/a/a/b/o;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "messageId"

    invoke-virtual {v2}, Lsdk/b/a/a/b/o;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "taskId"

    invoke-virtual {v2}, Lsdk/b/a/a/b/o;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msgAddress"

    invoke-virtual {v2}, Lsdk/b/a/a/b/o;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget v1, p1, Lsdk/download/d;->a:I

    invoke-static {v1}, Lsdk/download/q;->a(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v1, p0, Lsdk/download/b;->e:Ljava/util/Map;

    iget v4, p1, Lsdk/download/d;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lsdk/download/b;->b:Lcom/igexin/sdk/SdkMainService;

    const-string v4, "10060"

    invoke-virtual {v1, v2, v4}, Lcom/igexin/sdk/SdkMainService;->a(Lsdk/b/a/a/b/o;Ljava/lang/String;)V

    invoke-virtual {p2}, Lsdk/b/a/a/b/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsdk/download/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lsdk/download/b;->a:Landroid/content/Context;

    invoke-static {v0, p1, v3}, Lsdk/download/q;->a(Landroid/content/Context;Lsdk/download/d;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lsdk/download/b;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lsdk/download/b;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lsdk/download/b;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lsdk/download/b;->h:Ljava/util/Timer;

    return-object p1
.end method

.method private a(I)Lsdk/download/d;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lsdk/download/b;->i:Ljava/util/Collection;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsdk/download/b;->i:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/download/d;

    iget v3, v0, Lsdk/download/d;->a:I

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lsdk/download/b;I)Lsdk/download/d;
    .locals 1

    invoke-direct {p0, p1}, Lsdk/download/b;->a(I)Lsdk/download/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lsdk/download/b;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lsdk/download/b;->h:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic c(Lsdk/download/b;)J
    .locals 2

    iget-wide v0, p0, Lsdk/download/b;->c:J

    return-wide v0
.end method

.method static synthetic d(Lsdk/download/b;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lsdk/download/b;->g:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(ILsdk/b/a/a/b/b;)V
    .locals 2

    iget-object v0, p0, Lsdk/download/b;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/b;->a:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/app/NotificationManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lsdk/download/b;->i:Ljava/util/Collection;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lsdk/download/d;

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/b;->d:Ljava/util/Map;

    iget v3, v9, Lsdk/download/d;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lsdk/b/a/a/b/b;

    if-nez v10, :cond_6

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPDOWN_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lsdk/download/d;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "key"

    aput-object v3, v4, v2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v2, v2, Lcom/igexin/sdk/SdkMainService;->y:Lsdk/b/a/a/c/e;

    const-string v3, "table_message2"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    if-eqz v13, :cond_13

    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_13

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "taskid"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "messageid"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "info"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget-object v2, Lcom/igexin/sdk/SdkMainService;->B:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lsdk/b/a/a/b/o;

    move-object v11, v0

    if-nez v11, :cond_12

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "key"

    aput-object v3, v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v2, v2, Lcom/igexin/sdk/SdkMainService;->y:Lsdk/b/a/a/c/e;

    const-string v3, "table_message2"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "info"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v11, Lsdk/b/a/a/b/o;

    invoke-direct {v11}, Lsdk/b/a/a/b/o;-><init>()V

    const-string v2, "appid"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lsdk/b/a/a/b/o;->a(Ljava/lang/String;)V

    const-string v2, "messageid"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lsdk/b/a/a/b/o;->c(Ljava/lang/String;)V

    const-string v2, "taskid"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lsdk/b/a/a/b/o;->d(Ljava/lang/String;)V

    const-string v2, "id"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lsdk/b/a/a/b/o;->b(Ljava/lang/String;)V

    const-string v2, "appkey"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lsdk/b/a/a/b/o;->f(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lsdk/b/a/a/b/o;->a(I)V

    const-string v2, "17258000"

    invoke-virtual {v11, v2}, Lsdk/b/a/a/b/o;->e(Ljava/lang/String;)V

    invoke-static {v4, v11}, Lsdk/b/a/a/a/b;->a(Lorg/json/JSONObject;Lsdk/b/a/a/b/o;)Z

    sget-object v2, Lcom/igexin/sdk/SdkMainService;->B:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    new-instance v2, Lsdk/b/a/a/b/a;

    invoke-direct {v2}, Lsdk/b/a/a/b/a;-><init>()V

    const-string v4, "11"

    invoke-virtual {v2, v4}, Lsdk/b/a/a/b/a;->j(Ljava/lang/String;)V

    const-string v4, "actionid"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsdk/b/a/a/b/a;->i(Ljava/lang/String;)V

    const-string v4, "do"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsdk/b/a/a/b/a;->k(Ljava/lang/String;)V

    const-string v4, "pkgname"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsdk/b/a/a/b/a;->e(Ljava/lang/String;)V

    const-string v4, "is_autoinstall"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsdk/b/a/a/b/a;->f(Ljava/lang/String;)V

    const-string v4, "is_autostart"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsdk/b/a/a/b/a;->l(Ljava/lang/String;)V

    const-string v4, "is_showprogress"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsdk/b/a/a/b/a;->m(Ljava/lang/String;)V

    const-string v4, "name"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsdk/b/a/a/b/a;->b(Ljava/lang/String;)V

    const-string v4, "logo"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsdk/b/a/a/b/a;->d(Ljava/lang/String;)V

    const-string v4, "pkgname"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsdk/b/a/a/b/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v4

    const-string v5, "logo"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/igexin/sdk/SdkMainService;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v4}, Lsdk/b/a/a/b/a;->h(Ljava/lang/String;)V

    :cond_2
    new-instance v4, Lsdk/b/a/a/b/b;

    invoke-direct {v4, v2}, Lsdk/b/a/a/b/b;-><init>(Lsdk/b/a/a/b/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v4, v11}, Lsdk/b/a/a/b/b;->a(Lsdk/b/a/a/b/o;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    move-object v10, v4

    :goto_2
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/b;->d:Ljava/util/Map;

    iget v3, v9, Lsdk/download/d;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const/4 v11, 0x0

    invoke-virtual {v9}, Lsdk/download/d;->a()V

    iget v2, v9, Lsdk/download/d;->j:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/b;->f:Ljava/util/Map;

    iget v3, v9, Lsdk/download/d;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/b;->h:Ljava/util/Timer;

    if-nez v2, :cond_8

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lsdk/download/b;->h:Ljava/util/Timer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/b;->h:Ljava/util/Timer;

    new-instance v3, Lsdk/download/c;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lsdk/download/c;-><init>(Lsdk/download/b;Landroid/app/NotificationManager;)V

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x1388

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_8
    invoke-virtual {v10}, Lsdk/b/a/a/b/b;->d()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v10}, Lsdk/b/a/a/b/b;->l()Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lsdk/b/a/a/b/b;->a(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/b;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6b63\u5728\u4e0b\u8f7d  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Lsdk/download/d;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    move-object v3, v12

    move-object v4, v11

    :goto_5
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v4, :cond_9

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    move-object v3, v12

    move-object v13, v11

    :goto_6
    if-eqz v13, :cond_a

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v3, :cond_b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/b;->f:Ljava/util/Map;

    iget v3, v9, Lsdk/download/d;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/b;->f:Ljava/util/Map;

    iget v3, v9, Lsdk/download/d;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-wide v2, v9, Lsdk/download/d;->t:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/b;->f:Ljava/util/Map;

    iget v3, v9, Lsdk/download/d;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_e
    iget v2, v9, Lsdk/download/d;->j:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v8}, Lsdk/download/b;->a(Lsdk/download/d;Lsdk/b/a/a/b/b;Landroid/app/NotificationManager;)Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v9, Lsdk/download/d;->a:I

    invoke-static {v3}, Lsdk/download/q;->a(I)I

    move-result v3

    invoke-virtual {v8, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_f
    const-string v2, "GexinSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info.mId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Lsdk/download/d;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and info.mStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Lsdk/download/d;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v9, Lsdk/download/d;->j:I

    sparse-switch v2, :sswitch_data_0

    iget-boolean v2, v9, Lsdk/download/d;->M:Z

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lsdk/download/b;->a(Landroid/app/NotificationManager;Lsdk/download/d;)Landroid/app/Notification;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/b;->d:Ljava/util/Map;

    iget v4, v9, Lsdk/download/d;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/b;->f:Ljava/util/Map;

    iget v4, v9, Lsdk/download/d;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/b;->e:Ljava/util/Map;

    iget v4, v9, Lsdk/download/d;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v9, Lsdk/download/d;->a:I

    invoke-static {v3}, Lsdk/download/q;->a(I)I

    move-result v3

    invoke-virtual {v8, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/b;->e:Ljava/util/Map;

    iget v3, v9, Lsdk/download/d;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/b;->a:Landroid/content/Context;

    invoke-virtual {v10}, Lsdk/b/a/a/b/b;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lsdk/b/a/a/b/b;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lsdk/b/a/a/b/b;->m()Ljava/lang/String;

    move-result-object v7

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Lsdk/download/q;->a(Landroid/content/Context;Landroid/app/Notification;Lsdk/download/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v2

    goto :goto_7

    :sswitch_1
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v8}, Lsdk/download/b;->a(Lsdk/download/d;Lsdk/b/a/a/b/b;Landroid/app/NotificationManager;)Landroid/app/Notification;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/b;->a:Landroid/content/Context;

    invoke-static {v3}, Lsdk/download/o;->a(Landroid/content/Context;)Lsdk/download/o;

    move-result-object v3

    iget v4, v9, Lsdk/download/d;->a:I

    invoke-virtual {v3, v4}, Lsdk/download/o;->a(I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/b;->d:Ljava/util/Map;

    iget v4, v9, Lsdk/download/d;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :sswitch_2
    iget v2, v9, Lsdk/download/d;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    iget v2, v9, Lsdk/download/d;->a:I

    invoke-static {v2}, Lsdk/download/q;->a(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/app/NotificationManager;->cancel(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/b;->e:Ljava/util/Map;

    iget v3, v9, Lsdk/download/d;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v11

    goto :goto_7

    :cond_10
    return-void

    :catchall_1
    move-exception v2

    move-object v3, v12

    goto/16 :goto_6

    :catchall_2
    move-exception v2

    goto/16 :goto_6

    :catchall_3
    move-exception v2

    move-object v13, v4

    goto/16 :goto_6

    :catch_1
    move-exception v2

    move-object v3, v12

    move-object v4, v13

    goto/16 :goto_5

    :catch_2
    move-exception v2

    move-object v4, v13

    goto/16 :goto_5

    :catch_3
    move-exception v2

    move-object v10, v4

    move-object v4, v13

    goto/16 :goto_5

    :cond_11
    move-object v2, v11

    goto/16 :goto_7

    :cond_12
    move-object v3, v12

    goto/16 :goto_1

    :cond_13
    move-object v3, v12

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_2
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
