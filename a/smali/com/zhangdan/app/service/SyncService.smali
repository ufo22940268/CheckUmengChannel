.class public Lcom/zhangdan/app/service/SyncService;
.super Landroid/app/IntentService;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "SyncService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zhangdan/app/data/db/b/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "list.size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/i;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/zhangdan/app/data/db/b/d;->b(Landroid/content/Context;I)Lcom/zhangdan/app/data/model/http/af;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/af;->d()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/af;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p2, p1}, Lcom/zhangdan/app/b/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/v;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/http/v;->a()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/i;->a()I

    move-result v0

    invoke-static {v5, v0}, Lcom/zhangdan/app/data/db/b/m;->a(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/zhangdan/app/data/db/b/d;->a(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/af;->d()J

    move-result-wide v2

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/http/v;->c()D

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/zhangdan/app/data/db/b/c;->a(Landroid/content/Context;JD)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zhangdan/app/data/db/b/m;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/i;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/i;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {p1, p2, v2, v3}, Lcom/zhangdan/app/b/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/k;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/k;->a()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/i;->a()I

    move-result v0

    invoke-static {v2, v0}, Lcom/zhangdan/app/data/db/b/m;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zhangdan/app/data/db/b/m;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/i;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/zhangdan/app/data/db/b/k;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/ak;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p1, p2, v2}, Lcom/zhangdan/app/b/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/zhangdan/app/data/model/http/ak;)Lcom/zhangdan/app/data/model/http/an;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/an;->a()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/i;->a()I

    move-result v0

    invoke-static {v3, v0}, Lcom/zhangdan/app/data/db/b/m;->a(Landroid/content/Context;I)V

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/an;->c()Lcom/zhangdan/app/data/model/http/ak;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/zhangdan/app/data/db/b/k;->a(Landroid/content/Context;Lcom/zhangdan/app/data/model/http/ak;)V

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/data/db/b/m;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, v5, v6}, Lcom/zhangdan/app/service/SyncService;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5, v6}, Lcom/zhangdan/app/service/SyncService;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5, v6}, Lcom/zhangdan/app/service/SyncService;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/i;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_3

    if-ne v4, v2, :cond_4

    :cond_3
    invoke-static {v5, v6, v1, v4}, Lcom/zhangdan/app/b/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "\u5df2\u8fd8\u3001\u672a\u8fd8\u7684\u540c\u6b65\u7ed3\u679c\uff1a"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/i;->a()I

    move-result v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/data/db/b/m;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    const/4 v8, 0x2

    if-ne v4, v8, :cond_2

    :try_start_1
    invoke-static {v5, v6, v1, v4}, Lcom/zhangdan/app/b/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "\u8fd8\u90e8\u5206\u540c\u6b65\uff1a\u8bbe\u7f6e\u72b6\u6001"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/i;->d()Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_7

    const-string v4, "0"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/zhangdan/app/data/db/b/d;->a(Landroid/content/Context;Ljava/lang/String;)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v4, v10, v12

    if-lez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v1, v4}, Lcom/zhangdan/app/b/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/ah;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v1, "\u8fd8\u90e8\u5206\u7684\u91d1\u989d\u540c\u6b65\u7ed3\u679c\uff1a"

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_5

    const-string v1, "null"

    :goto_2
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/http/ah;->a()I

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/http/ah;->b()J

    move-result-wide v10

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "auto_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v10, Lcom/zhangdan/app/data/db/a/e;->a:Landroid/net/Uri;

    const-string v11, "local_id = ?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    invoke-virtual {v1, v10, v4, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v1, v2

    :goto_3
    if-eqz v8, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/i;->a()I

    move-result v0

    invoke-static {v1, v0}, Lcom/zhangdan/app/data/db/b/m;->a(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_5
    move-object v1, v4

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_3

    :cond_7
    move v1, v3

    goto :goto_3
.end method
