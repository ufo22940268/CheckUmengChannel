.class Lcom/zhangdan/app/activities/SplashActivity$InitTask;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/SplashActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/zhangdan/app/activities/SplashActivity$InitTask;->this$0:Lcom/zhangdan/app/activities/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x3e8

    .line 106
    iget-object v3, p0, Lcom/zhangdan/app/activities/SplashActivity$InitTask;->this$0:Lcom/zhangdan/app/activities/SplashActivity;

    #calls: Lcom/zhangdan/app/activities/SplashActivity;->initUserInfo()Lcom/zhangdan/app/data/model/UserInfo;
    invoke-static {v3}, Lcom/zhangdan/app/activities/SplashActivity;->access$300(Lcom/zhangdan/app/activities/SplashActivity;)Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v2

    .line 107
    .local v2, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-nez v2, :cond_1

    .line 108
    new-instance v1, Lcom/zhangdan/app/data/db/util/UpgradeMgr;

    iget-object v3, p0, Lcom/zhangdan/app/activities/SplashActivity$InitTask;->this$0:Lcom/zhangdan/app/activities/SplashActivity;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/zhangdan/app/data/db/util/UpgradeMgr;-><init>(Landroid/content/Context;)V

    .line 110
    .local v1, upgradeMgr:Lcom/zhangdan/app/data/db/util/UpgradeMgr;
    :try_start_0
    invoke-virtual {v1}, Lcom/zhangdan/app/data/db/util/UpgradeMgr;->readOldUserInfo()Lcom/zhangdan/app/data/model/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 112
    invoke-virtual {v1}, Lcom/zhangdan/app/data/db/util/UpgradeMgr;->release()V

    .line 113
    const/4 v1, 0x0

    .line 115
    if-eqz v2, :cond_0

    .line 116
    iget-object v3, p0, Lcom/zhangdan/app/activities/SplashActivity$InitTask;->this$0:Lcom/zhangdan/app/activities/SplashActivity;

    invoke-virtual {v3, v2}, Lcom/zhangdan/app/activities/SplashActivity;->setCurrUserInfo(Lcom/zhangdan/app/data/model/UserInfo;)V

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/zhangdan/app/activities/SplashActivity$InitTask;->this$0:Lcom/zhangdan/app/activities/SplashActivity;

    #getter for: Lcom/zhangdan/app/activities/SplashActivity;->mMyHandler:Lcom/zhangdan/app/activities/SplashActivity$MyHandler;
    invoke-static {v3}, Lcom/zhangdan/app/activities/SplashActivity;->access$400(Lcom/zhangdan/app/activities/SplashActivity;)Lcom/zhangdan/app/activities/SplashActivity$MyHandler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/SplashActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 119
    .local v0, msg:Landroid/os/Message;
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    iget-object v3, p0, Lcom/zhangdan/app/activities/SplashActivity$InitTask;->this$0:Lcom/zhangdan/app/activities/SplashActivity;

    #getter for: Lcom/zhangdan/app/activities/SplashActivity;->mMyHandler:Lcom/zhangdan/app/activities/SplashActivity$MyHandler;
    invoke-static {v3}, Lcom/zhangdan/app/activities/SplashActivity;->access$400(Lcom/zhangdan/app/activities/SplashActivity;)Lcom/zhangdan/app/activities/SplashActivity$MyHandler;

    move-result-object v3

    invoke-virtual {v3, v0, v5, v6}, Lcom/zhangdan/app/activities/SplashActivity$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 126
    .end local v1           #upgradeMgr:Lcom/zhangdan/app/data/db/util/UpgradeMgr;
    :goto_0
    return-void

    .line 112
    .end local v0           #msg:Landroid/os/Message;
    .restart local v1       #upgradeMgr:Lcom/zhangdan/app/data/db/util/UpgradeMgr;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Lcom/zhangdan/app/data/db/util/UpgradeMgr;->release()V

    .line 113
    const/4 v1, 0x0

    throw v3

    .line 122
    .end local v1           #upgradeMgr:Lcom/zhangdan/app/data/db/util/UpgradeMgr;
    :cond_1
    iget-object v3, p0, Lcom/zhangdan/app/activities/SplashActivity$InitTask;->this$0:Lcom/zhangdan/app/activities/SplashActivity;

    #getter for: Lcom/zhangdan/app/activities/SplashActivity;->mMyHandler:Lcom/zhangdan/app/activities/SplashActivity$MyHandler;
    invoke-static {v3}, Lcom/zhangdan/app/activities/SplashActivity;->access$400(Lcom/zhangdan/app/activities/SplashActivity;)Lcom/zhangdan/app/activities/SplashActivity$MyHandler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/SplashActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 123
    .restart local v0       #msg:Landroid/os/Message;
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    iget-object v3, p0, Lcom/zhangdan/app/activities/SplashActivity$InitTask;->this$0:Lcom/zhangdan/app/activities/SplashActivity;

    #getter for: Lcom/zhangdan/app/activities/SplashActivity;->mMyHandler:Lcom/zhangdan/app/activities/SplashActivity$MyHandler;
    invoke-static {v3}, Lcom/zhangdan/app/activities/SplashActivity;->access$400(Lcom/zhangdan/app/activities/SplashActivity;)Lcom/zhangdan/app/activities/SplashActivity$MyHandler;

    move-result-object v3

    invoke-virtual {v3, v0, v5, v6}, Lcom/zhangdan/app/activities/SplashActivity$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
