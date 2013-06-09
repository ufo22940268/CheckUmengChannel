.class public Lcom/zhangdan/app/receiver/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->b()Lcom/zhangdan/app/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/c/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/zhangdan/app/data/db/b/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/b/a;->a(Ljava/lang/String;)Lcom/zhangdan/app/data/model/l;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/ZhangdanApplication;->a(Lcom/zhangdan/app/data/model/l;)V

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/zhangdan/app/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
