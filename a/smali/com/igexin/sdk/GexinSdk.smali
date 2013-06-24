.class public Lcom/igexin/sdk/GexinSdk;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:J

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/igexin/sdk/GexinSdk;->a:Landroid/content/Context;

    sput-object v0, Lcom/igexin/sdk/GexinSdk;->b:Ljava/lang/String;

    sput-wide v1, Lcom/igexin/sdk/GexinSdk;->c:J

    sput-wide v1, Lcom/igexin/sdk/GexinSdk;->d:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([Lcom/igexin/sdk/Tag;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    array-length v1, p0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/igexin/sdk/Tag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final addTag([Lcom/igexin/sdk/Tag;)V
    .locals 8

    const-string v0, "addtag"

    invoke-static {p0, v0}, Lcom/igexin/sdk/GexinSdk;->a([Lcom/igexin/sdk/Tag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"action\":\"set_tag\",\"id\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", \"appid\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lsdk/b/a/a/c/d;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", \"tags\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lsdk/b/a/a/c/o;->a()Lsdk/b/a/a/c/o;

    move-result-object v7

    if-eqz v7, :cond_1

    new-instance v0, Lsdk/b/a/a/b/q;

    const/4 v4, 0x2

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lsdk/b/a/a/b/q;-><init>(JLjava/lang/String;BJ)V

    invoke-virtual {v7, v0}, Lsdk/b/a/a/c/o;->b(Lsdk/b/a/a/b/q;)V

    :cond_1
    const-string v0, "GexinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add tag :--> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "settag"

    invoke-static {v0}, Lsdk/c/a/c/a;->a(Ljava/lang/String;)V

    new-instance v4, Lsdk/a/a/a/a/a/a;

    invoke-direct {v4}, Lsdk/a/a/a/a/a/a;-><init>()V

    invoke-virtual {v4}, Lsdk/a/a/a/a/a/a;->a()V

    const-string v0, "17258000"

    iput-object v0, v4, Lsdk/a/a/a/a/a/a;->d:Ljava/lang/String;

    iput-object v3, v4, Lsdk/a/a/a/a/a/a;->e:Ljava/lang/Object;

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    sget-object v1, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->e()Lsdk/c/a/b/c;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsdk/c/a/b/d;->a(Ljava/lang/String;ILsdk/c/a/b/c;Ljava/lang/Object;Z)Lsdk/c/a/b/f;

    goto :goto_0
.end method

.method public static final bindPhoneAddress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final bindService(Ljava/lang/String;)V
    .locals 3

    const-string v0, "package:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.gexin.action.bind"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appID"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v0, Lcom/igexin/sdk/GexinSdk;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final ensureInstall()V
    .locals 0

    return-void
.end method

.method public static final feedbackAction(Ljava/lang/String;ILjava/lang/String;)V
    .locals 12

    const/4 v6, 0x0

    new-instance v0, Lsdk/b/a/a/c/e;

    sget-object v1, Lcom/igexin/sdk/GexinSdk;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsdk/b/a/a/c/e;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x2710

    if-lt p1, v1, :cond_3

    const/16 v1, 0x4e20

    if-gt p1, v1, :cond_3

    :try_start_0
    const-string v1, "table_message2"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    if-eqz v11, :cond_1

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    :goto_0
    sget-object v5, Lsdk/b/a/a/c/d;->n:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{\"action\":\"pushmessage_feedback\",\"appid\":\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\", \"id\":\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\", \"appkey\":\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", \"messageid\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\",\"taskid\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\",\"actionid\": \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\",\"result\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\",\"timestamp\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\"}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lsdk/b/a/a/c/o;->a()Lsdk/b/a/a/c/o;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v1, Lsdk/b/a/a/b/q;

    const/4 v5, 0x3

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lsdk/b/a/a/b/q;-><init>(JLjava/lang/String;BJ)V

    invoke-virtual {v8, v1}, Lsdk/b/a/a/c/o;->b(Lsdk/b/a/a/b/q;)V

    :cond_0
    new-instance v9, Lsdk/a/a/a/a/a/a;

    invoke-direct {v9}, Lsdk/a/a/a/a/a/a;-><init>()V

    invoke-virtual {v9}, Lsdk/a/a/a/a/a/a;->a()V

    const-string v1, "17258000"

    iput-object v1, v9, Lsdk/a/a/a/a/a/a;->d:Ljava/lang/String;

    iput-object v4, v9, Lsdk/a/a/a/a/a/a;->e:Ljava/lang/Object;

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v5

    sget-object v6, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->e()Lsdk/c/a/b/c;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lsdk/c/a/b/d;->a(Ljava/lang/String;ILsdk/c/a/b/c;Ljava/lang/Object;Z)Lsdk/c/a/b/f;

    const-string v1, "GexinSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feedback :--> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lsdk/b/a/a/c/e;->close()V

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v1

    move-object v2, v6

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lsdk/b/a/a/c/e;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v11, v6

    :goto_3
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lsdk/b/a/a/c/e;->close()V

    :cond_6
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v11, v2

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v11

    goto :goto_2

    :cond_7
    move-object v1, v6

    move-object v4, v6

    goto/16 :goto_0
.end method

.method public static final getNetstat(Lcom/igexin/sdk/GexinSdkNetstat;)V
    .locals 2

    invoke-static {}, Lcom/igexin/b/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/sdk/GexinSdkNetstat;->inboundBytes:J

    invoke-static {}, Lcom/igexin/b/c;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/sdk/GexinSdkNetstat;->outboundBytes:J

    return-void
.end method

.method public static final getPayload(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/igexin/sdk/GexinSdk;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/igexin/sdk/GexinSdk;->b:Ljava/lang/String;

    sget-object v2, Lcom/igexin/sdk/GexinSdk;->a:Landroid/content/Context;

    invoke-static {v1, p0, v2}, Lcom/igexin/sdk/SdkMainService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final getPhoneAddress()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static final getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1.18.2"

    return-object v0
.end method

.method public static final getcontext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/igexin/sdk/GexinSdk;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static final initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sput-object p0, Lcom/igexin/sdk/GexinSdk;->a:Landroid/content/Context;

    sput-object p3, Lcom/igexin/sdk/GexinSdk;->b:Ljava/lang/String;

    sput-object p3, Lsdk/b/a/a/c/d;->m:Ljava/lang/String;

    sput-object p1, Lsdk/b/a/a/c/d;->n:Ljava/lang/String;

    sput-object p2, Lsdk/b/a/a/c/d;->o:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/igexin/sdk/SdkMainService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "appid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "action"

    const-string v2, "com.igexin.action.initialize"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static final refreshNet()V
    .locals 5

    const-string v0, "package:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.gexin.action.server"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "cmd"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "cmd"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "bundle"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/igexin/sdk/GexinSdk;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final removeTag([Lcom/igexin/sdk/Tag;)V
    .locals 8

    const-string v0, "rmtag"

    invoke-static {p0, v0}, Lcom/igexin/sdk/GexinSdk;->a([Lcom/igexin/sdk/Tag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"action\":\"remove_tag\",\"id\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", \"appid\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lsdk/b/a/a/c/d;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", \"tags\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lsdk/b/a/a/c/o;->a()Lsdk/b/a/a/c/o;

    move-result-object v7

    if-eqz v7, :cond_1

    new-instance v0, Lsdk/b/a/a/b/q;

    const/4 v4, 0x2

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lsdk/b/a/a/b/q;-><init>(JLjava/lang/String;BJ)V

    invoke-virtual {v7, v0}, Lsdk/b/a/a/c/o;->b(Lsdk/b/a/a/b/q;)V

    :cond_1
    const-string v0, "GexinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove tag :--> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lsdk/a/a/a/a/a/a;

    invoke-direct {v4}, Lsdk/a/a/a/a/a/a;-><init>()V

    invoke-virtual {v4}, Lsdk/a/a/a/a/a/a;->a()V

    const-string v0, "17258000"

    iput-object v0, v4, Lsdk/a/a/a/a/a/a;->d:Ljava/lang/String;

    iput-object v3, v4, Lsdk/a/a/a/a/a/a;->e:Ljava/lang/Object;

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    sget-object v1, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->e()Lsdk/c/a/b/c;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsdk/c/a/b/d;->a(Ljava/lang/String;ILsdk/c/a/b/c;Ljava/lang/Object;Z)Lsdk/c/a/b/f;

    goto :goto_0
.end method

.method public static final sendMessage(Ljava/lang/String;[B)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p1, :cond_0

    array-length v3, p1

    const/16 v4, 0x1000

    if-gt v3, v4, :cond_0

    sget-wide v3, Lcom/igexin/sdk/GexinSdk;->c:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcom/igexin/sdk/SdkMainService;->a(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_0

    sput-wide v1, Lcom/igexin/sdk/GexinSdk;->c:J

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final setHeartbeatInterval(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    const/16 v1, 0xf0

    if-lt p0, v1, :cond_1

    const v1, 0x15180

    if-gt p0, v1, :cond_1

    :cond_0
    sput p0, Lsdk/b/a/a/c/h;->q:I

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->i:Lsdk/b/a/a/c/h;

    invoke-virtual {v0}, Lsdk/b/a/a/c/h;->d()V

    const-string v0, "GexinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6e\u5fc3\u8df3\u95f4\u9694 interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static final setLogEnable(Z)V
    .locals 0

    return-void
.end method

.method public static final setSilentTime(IILjava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ltz p0, :cond_0

    const/16 v1, 0x18

    if-ge p0, v1, :cond_0

    if-ltz p1, :cond_0

    const/16 v1, 0x17

    if-le p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sput p0, Lsdk/b/a/a/c/h;->o:I

    sput p1, Lsdk/b/a/a/c/h;->p:I

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v1

    iget-object v1, v1, Lcom/igexin/sdk/SdkMainService;->i:Lsdk/b/a/a/c/h;

    invoke-virtual {v1}, Lsdk/b/a/a/c/h;->d()V

    const-string v1, "GexinSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bbe\u7f6e\u9759\u9ed8\u65f6\u95f4\u6bb5 begin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lsdk/b/a/a/c/h;->c(J)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v1

    sget-object v2, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    const-string v3, "socket"

    const-string v4, "disConnect"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lsdk/c/a/b/d;->a(Ljava/lang/String;ILsdk/c/a/b/c;)Lsdk/c/a/b/f;

    const-string v0, "GexinSdk"

    const-string v1, "\u5f53\u524d\u5904\u5728\u9759\u9ed8\u65f6\u95f4\u6bb5\u5185\uff01"

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    new-instance v1, Lsdk/b/a/a/e/d;

    invoke-direct {v1}, Lsdk/b/a/a/e/d;-><init>()V

    invoke-virtual {v0, v1}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    invoke-virtual {v0}, Lsdk/c/a/b/d;->d()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final setTag([Lcom/igexin/sdk/Tag;)I
    .locals 9

    const/4 v8, 0x0

    array-length v0, p0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    const-string v0, "tag"

    const-string v1, "tag\u6570\u91cf\u8d85\u8fc7200"

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x4e21

    :goto_0
    return v8

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/igexin/sdk/GexinSdk;->d:J

    const-wide/32 v5, 0x36ee80

    sub-long v5, v1, v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bfb\u53d6\u8fc7\u5feb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/igexin/sdk/GexinSdk;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x4e22

    goto :goto_0

    :cond_1
    const-string v0, "addtag"

    invoke-static {p0, v0}, Lcom/igexin/sdk/GexinSdk;->a([Lcom/igexin/sdk/Tag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"action\":\"set_tag\",\"id\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", \"appid\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lsdk/b/a/a/c/d;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", \"tags\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lsdk/b/a/a/c/o;->a()Lsdk/b/a/a/c/o;

    move-result-object v7

    if-eqz v7, :cond_2

    new-instance v0, Lsdk/b/a/a/b/q;

    const/4 v4, 0x2

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lsdk/b/a/a/b/q;-><init>(JLjava/lang/String;BJ)V

    invoke-virtual {v7, v0}, Lsdk/b/a/a/c/o;->b(Lsdk/b/a/a/b/q;)V

    :cond_2
    const-string v0, "GexinSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add tag :--> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lsdk/a/a/a/a/a/a;

    invoke-direct {v7}, Lsdk/a/a/a/a/a/a;-><init>()V

    invoke-virtual {v7}, Lsdk/a/a/a/a/a/a;->a()V

    const-string v0, "17258000"

    iput-object v0, v7, Lsdk/a/a/a/a/a/a;->d:Ljava/lang/String;

    iput-object v3, v7, Lsdk/a/a/a/a/a/a;->e:Ljava/lang/Object;

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v3

    sget-object v4, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->e()Lsdk/c/a/b/c;

    move-result-object v6

    invoke-virtual/range {v3 .. v8}, Lsdk/c/a/b/d;->a(Ljava/lang/String;ILsdk/c/a/b/c;Ljava/lang/Object;Z)Lsdk/c/a/b/f;

    sput-wide v1, Lcom/igexin/sdk/GexinSdk;->d:J

    goto/16 :goto_0
.end method

.method public static final setcontext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/igexin/sdk/GexinSdk;->a:Landroid/content/Context;

    return-void
.end method

.method public static final stopService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "GexinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopService GexinMainService.getInstance() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " op_app = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    sget-object v1, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    const-string v2, "socket"

    const-string v3, "disConnect"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lsdk/c/a/b/d;->a(Ljava/lang/String;ILsdk/c/a/b/c;)Lsdk/c/a/b/f;

    new-instance v0, Lcom/igexin/sdk/b;

    invoke-direct {v0, p0}, Lcom/igexin/sdk/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/b;->b()V

    return-void
.end method

.method public static final unbindService(Ljava/lang/String;)V
    .locals 3

    const-string v0, "package:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.gexin.action.unbind"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appID"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v0, Lcom/igexin/sdk/GexinSdk;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
