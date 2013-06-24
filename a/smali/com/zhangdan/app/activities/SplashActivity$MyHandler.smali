.class Lcom/zhangdan/app/activities/SplashActivity$MyHandler;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyHandler"
.end annotation


# instance fields
.field mWeakReferenceActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/zhangdan/app/activities/SplashActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/SplashActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/SplashActivity$MyHandler;->mWeakReferenceActivity:Ljava/lang/ref/WeakReference;

    .line 63
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 68
    iget-object v4, p0, Lcom/zhangdan/app/activities/SplashActivity$MyHandler;->mWeakReferenceActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/SplashActivity;

    .line 69
    .local v0, activity:Lcom/zhangdan/app/activities/SplashActivity;
    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 73
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    .local v2, obj:Ljava/lang/Object;
    const-string v3, "0"

    .line 75
    .local v3, userId:Ljava/lang/String;
    if-eqz v2, :cond_2

    move-object v1, v2

    .line 76
    check-cast v1, Lcom/zhangdan/app/data/model/UserInfo;

    .line 77
    .local v1, info:Lcom/zhangdan/app/data/model/UserInfo;
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 78
    new-instance v4, Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v0, v5, v3}, Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;-><init>(Lcom/zhangdan/app/activities/SplashActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;->start()V

    .line 79
    #calls: Lcom/zhangdan/app/activities/SplashActivity;->jump2MainPage()V
    invoke-static {v0}, Lcom/zhangdan/app/activities/SplashActivity;->access$000(Lcom/zhangdan/app/activities/SplashActivity;)V

    goto :goto_0

    .line 81
    .end local v1           #info:Lcom/zhangdan/app/data/model/UserInfo;
    :cond_2
    new-instance v4, Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v0, v5, v3}, Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;-><init>(Lcom/zhangdan/app/activities/SplashActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;->start()V

    .line 82
    #calls: Lcom/zhangdan/app/activities/SplashActivity;->jump2NewImportPage()V
    invoke-static {v0}, Lcom/zhangdan/app/activities/SplashActivity;->access$100(Lcom/zhangdan/app/activities/SplashActivity;)V

    goto :goto_0

    .line 84
    .end local v2           #obj:Ljava/lang/Object;
    .end local v3           #userId:Ljava/lang/String;
    :cond_3
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 85
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    .restart local v2       #obj:Ljava/lang/Object;
    const-string v3, "0"

    .line 87
    .restart local v3       #userId:Ljava/lang/String;
    if-eqz v2, :cond_4

    move-object v1, v2

    .line 88
    check-cast v1, Lcom/zhangdan/app/data/model/UserInfo;

    .line 89
    .restart local v1       #info:Lcom/zhangdan/app/data/model/UserInfo;
    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/SplashActivity;->setCurrUserInfo(Lcom/zhangdan/app/data/model/UserInfo;)V

    .line 90
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 91
    new-instance v4, Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v0, v5, v3}, Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;-><init>(Lcom/zhangdan/app/activities/SplashActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;->start()V

    .line 92
    #calls: Lcom/zhangdan/app/activities/SplashActivity;->jump2LoadingPage()V
    invoke-static {v0}, Lcom/zhangdan/app/activities/SplashActivity;->access$200(Lcom/zhangdan/app/activities/SplashActivity;)V

    goto :goto_0

    .line 94
    .end local v1           #info:Lcom/zhangdan/app/data/model/UserInfo;
    :cond_4
    new-instance v4, Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v0, v5, v3}, Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;-><init>(Lcom/zhangdan/app/activities/SplashActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;->start()V

    .line 95
    #calls: Lcom/zhangdan/app/activities/SplashActivity;->jump2NewImportPage()V
    invoke-static {v0}, Lcom/zhangdan/app/activities/SplashActivity;->access$100(Lcom/zhangdan/app/activities/SplashActivity;)V

    goto :goto_0
.end method
