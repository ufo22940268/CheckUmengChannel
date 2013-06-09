.class final Lcom/igexin/sdk/coordinator/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/igexin/sdk/coordinator/SdkMsgService;


# direct methods
.method constructor <init>(Lcom/igexin/sdk/coordinator/SdkMsgService;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/coordinator/f;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msg.what = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pkgname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/sdk/coordinator/b;->a()Lcom/igexin/sdk/coordinator/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/sdk/coordinator/b;->a(Ljava/lang/String;)Lcom/igexin/sdk/coordinator/a;

    move-result-object v6

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lsdk/b/a/a/c/a;->a()Lsdk/b/a/a/c/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lsdk/b/a/a/c/a;->a(Ljava/lang/String;)Lcom/igexin/sdk/coordinator/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/igexin/sdk/coordinator/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/igexin/sdk/coordinator/c;->c()J

    move-result-wide v4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "MSG_CA_CONNECTED accessToken = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "MSG_CA_CONNECTED expireTime = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "MSG_CA_CONNECTED currentTime = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    cmp-long v8, v1, v4

    if-lez v8, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsdk/b/a/a/e/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/32 v4, 0x240c8400

    add-long/2addr v4, v1

    invoke-virtual {v7, v3}, Lcom/igexin/sdk/coordinator/c;->b(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Lcom/igexin/sdk/coordinator/c;->a(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new accessToken = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new expireTime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    :cond_1
    invoke-static {}, Lsdk/b/a/a/c/a;->a()Lsdk/b/a/a/c/a;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Lsdk/b/a/a/c/a;->a(Ljava/lang/String;Lcom/igexin/sdk/coordinator/c;)V

    :try_start_0
    invoke-virtual {v6}, Lcom/igexin/sdk/coordinator/a;->b()Lcom/igexin/sdk/aidl/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Lcom/igexin/sdk/coordinator/a;->b()Lcom/igexin/sdk/aidl/d;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/sdk/coordinator/f;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    invoke-static {v1}, Lcom/igexin/sdk/coordinator/SdkMsgService;->a(Lcom/igexin/sdk/coordinator/SdkMsgService;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/igexin/sdk/coordinator/SdkMsgService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {v0 .. v5}, Lcom/igexin/sdk/aidl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Lcom/igexin/sdk/coordinator/a;->b()Lcom/igexin/sdk/aidl/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/coordinator/f;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    invoke-virtual {v6}, Lcom/igexin/sdk/coordinator/a;->a()Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/coordinator/SdkMsgService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    :try_start_2
    invoke-virtual {v6}, Lcom/igexin/sdk/coordinator/a;->b()Lcom/igexin/sdk/aidl/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/coordinator/f;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    invoke-virtual {v6}, Lcom/igexin/sdk/coordinator/a;->a()Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/coordinator/SdkMsgService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
