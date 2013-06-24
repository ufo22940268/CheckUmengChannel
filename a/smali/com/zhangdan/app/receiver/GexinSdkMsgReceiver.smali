.class public Lcom/zhangdan/app/receiver/GexinSdkMsgReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GexinSdkMsgReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 28
    .local v1, bundle:Landroid/os/Bundle;
    const-string v10, "GexinSdkDemo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onReceive() action="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "action"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string v10, "action"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 82
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 34
    :pswitch_1
    const-string v10, "payload"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 35
    .local v7, payload:[B
    if-eqz v7, :cond_0

    .line 36
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 37
    .local v4, data:Ljava/lang/String;
    const-string v10, "GexinSdkDemo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Got Payload:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {v4}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 39
    invoke-static {p1, v4}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->savePushData(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    sget v10, Lcom/zhangdan/app/activities/MainFragmentActivity;->INSTANCE_FLAG:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 41
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 42
    .local v6, i:Landroid/content/Intent;
    const-class v10, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v6, p1, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 43
    const/high16 v10, 0x1000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 53
    .end local v4           #data:Ljava/lang/String;
    .end local v6           #i:Landroid/content/Intent;
    .end local v7           #payload:[B
    :pswitch_2
    const-string v10, "clientid"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, cid:Ljava/lang/String;
    const-string v10, "gexin_client_id"

    invoke-static {p1, v10, v3}, Lcom/zhangdan/banka/data/SharedPreferMgr;->setKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v10, "GexinSdkDemo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cliend id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 58
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v9

    .line 59
    .local v9, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-eqz v9, :cond_0

    .line 60
    invoke-virtual {v9}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, userId:Ljava/lang/String;
    const-string v10, "GexinSdkDemo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "user_id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {p1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getGexinPushValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, gexinPushValue:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 65
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 66
    .restart local v6       #i:Landroid/content/Intent;
    const-class v10, Lcom/zhangdan/app/service/AddDeviceService;

    invoke-virtual {v6, p1, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 67
    const-string v10, "cliend_id"

    invoke-virtual {v6, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v10, "user_id"

    invoke-virtual {v6, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p1, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 75
    .end local v0           #app:Lcom/zhangdan/app/ZhangdanApplication;
    .end local v3           #cid:Ljava/lang/String;
    .end local v5           #gexinPushValue:Ljava/lang/String;
    .end local v6           #i:Landroid/content/Intent;
    .end local v8           #userId:Ljava/lang/String;
    .end local v9           #userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    :pswitch_3
    const-string v10, "cell"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, cell:Ljava/lang/String;
    const-string v10, "GexinSdkDemo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BIND_CELL_STATUS:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
