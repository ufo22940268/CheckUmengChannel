.class Lsdk/b/a/a/e/b/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lsdk/b/a/a/e/b/a;


# direct methods
.method constructor <init>(Lsdk/b/a/a/e/b/a;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lsdk/b/a/a/e/b/b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    iget-boolean v0, v0, Lsdk/b/a/a/e/b/a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "chmod"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "705"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    iget-object v2, v2, Lsdk/b/a/a/e/b/a;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "chmod"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "604"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    iget-object v2, v2, Lsdk/b/a/a/e/b/a;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    iget-object v0, v0, Lsdk/b/a/a/e/b/a;->b:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "messageid"

    iget-object v3, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v3}, Lsdk/b/a/a/e/b/a;->a(Lsdk/b/a/a/e/b/a;)Lsdk/b/a/a/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lsdk/b/a/a/b/o;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "taskid"

    iget-object v3, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v3}, Lsdk/b/a/a/e/b/a;->a(Lsdk/b/a/a/e/b/a;)Lsdk/b/a/a/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lsdk/b/a/a/b/o;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appid"

    iget-object v3, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v3}, Lsdk/b/a/a/e/b/a;->b(Lsdk/b/a/a/e/b/a;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "key"

    iget-object v3, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v3}, Lsdk/b/a/a/e/b/a;->c(Lsdk/b/a/a/e/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "msgextra"

    iget-object v3, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v3}, Lsdk/b/a/a/e/b/a;->d(Lsdk/b/a/a/e/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v2, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v2}, Lsdk/b/a/a/e/b/a;->e(Lsdk/b/a/a/e/b/a;)Lcom/igexin/sdk/SdkMainService;

    move-result-object v2

    iget-object v2, v2, Lcom/igexin/sdk/SdkMainService;->y:Lsdk/b/a/a/c/e;

    const-string v3, "table_message2"

    invoke-virtual {v2, v3, v1}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.igexin.sdk.action.INSTALL"

    const-string v3, "package:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v0}, Lsdk/b/a/a/e/b/a;->a(Lsdk/b/a/a/e/b/a;)Lsdk/b/a/a/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lsdk/b/a/a/b/o;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "appId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v0}, Lsdk/b/a/a/e/b/a;->a(Lsdk/b/a/a/e/b/a;)Lsdk/b/a/a/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lsdk/b/a/a/b/o;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "appKey"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v0}, Lsdk/b/a/a/e/b/a;->a(Lsdk/b/a/a/e/b/a;)Lsdk/b/a/a/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lsdk/b/a/a/b/o;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "messageId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v0}, Lsdk/b/a/a/e/b/a;->a(Lsdk/b/a/a/e/b/a;)Lsdk/b/a/a/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lsdk/b/a/a/b/o;->d()Ljava/lang/String;

    move-result-object v0

    const-string v3, "taskId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v0}, Lsdk/b/a/a/e/b/a;->a(Lsdk/b/a/a/e/b/a;)Lsdk/b/a/a/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lsdk/b/a/a/b/o;->e()Ljava/lang/String;

    move-result-object v0

    const-string v3, "msgAddress"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v0}, Lsdk/b/a/a/e/b/a;->f(Lsdk/b/a/a/e/b/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v0}, Lsdk/b/a/a/e/b/a;->g(Lsdk/b/a/a/e/b/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v0}, Lsdk/b/a/a/e/b/a;->i(Lsdk/b/a/a/e/b/a;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v1}, Lsdk/b/a/a/e/b/a;->h(Lsdk/b/a/a/e/b/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v0}, Lsdk/b/a/a/e/b/a;->g(Lsdk/b/a/a/e/b/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v2}, Lsdk/b/a/a/e/b/a;->h(Lsdk/b/a/a/e/b/a;)I

    move-result v2

    invoke-static {v0, v2, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v1}, Lsdk/b/a/a/e/b/a;->j(Lsdk/b/a/a/e/b/a;)Landroid/app/Notification;

    move-result-object v1

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v1}, Lsdk/b/a/a/e/b/a;->j(Lsdk/b/a/a/e/b/a;)Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v2}, Lsdk/b/a/a/e/b/a;->g(Lsdk/b/a/a/e/b/a;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v3}, Lsdk/b/a/a/e/b/a;->k(Lsdk/b/a/a/e/b/a;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u4e0b\u8f7d\u6210\u529f,\u70b9\u51fb\u5b89\u88c5\uff01"

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v0}, Lsdk/b/a/a/e/b/a;->i(Lsdk/b/a/a/e/b/a;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v1}, Lsdk/b/a/a/e/b/a;->h(Lsdk/b/a/a/e/b/a;)I

    move-result v1

    iget-object v2, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v2}, Lsdk/b/a/a/e/b/a;->j(Lsdk/b/a/a/e/b/a;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v0}, Lsdk/b/a/a/e/b/a;->j(Lsdk/b/a/a/e/b/a;)Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v0}, Lsdk/b/a/a/e/b/a;->j(Lsdk/b/a/a/e/b/a;)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v1}, Lsdk/b/a/a/e/b/a;->g(Lsdk/b/a/a/e/b/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v2}, Lsdk/b/a/a/e/b/a;->k(Lsdk/b/a/a/e/b/a;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    iget-object v4, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v4}, Lsdk/b/a/a/e/b/a;->l(Lsdk/b/a/a/e/b/a;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v0}, Lsdk/b/a/a/e/b/a;->i(Lsdk/b/a/a/e/b/a;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v1}, Lsdk/b/a/a/e/b/a;->h(Lsdk/b/a/a/e/b/a;)I

    move-result v1

    iget-object v2, p0, Lsdk/b/a/a/e/b/b;->a:Lsdk/b/a/a/e/b/a;

    invoke-static {v2}, Lsdk/b/a/a/e/b/a;->j(Lsdk/b/a/a/e/b/a;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
