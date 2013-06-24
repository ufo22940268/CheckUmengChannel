.class public Lcom/zhangdan/app/receiver/RepaymentNotifyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RepaymentNotifyReceiver.java"


# static fields
.field public static final EXTRA_ALARM_CONTENT:Ljava/lang/String; = "alarm_content"

.field public static final EXTRA_BANK_ID:Ljava/lang/String; = "bank_id"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "alarm_title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private showNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "bankId"
    .parameter "title"
    .parameter "content"

    .prologue
    .line 43
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 44
    .local v4, nm:Landroid/app/NotificationManager;
    invoke-static {p2}, Lcom/zhangdan/app/data/BankIconRes;->getBankIconResId(I)I

    move-result v2

    .line 45
    .local v2, iconResId:I
    const v5, 0x7f0200a9

    if-ne v2, v5, :cond_0

    .line 46
    const v2, 0x7f02021d

    .line 47
    :cond_0
    new-instance v3, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v2, p3, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 48
    .local v3, n:Landroid/app/Notification;
    const/16 v5, 0x10

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 50
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v1, i:Landroid/content/Intent;
    sget v5, Lcom/zhangdan/app/activities/MainFragmentActivity;->INSTANCE_FLAG:I

    if-nez v5, :cond_1

    .line 52
    const-class v5, Lcom/zhangdan/app/activities/SplashActivity;

    invoke-virtual {v1, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 57
    :goto_0
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const/high16 v5, 0x1020

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    const v5, 0x7f070002

    const/high16 v6, 0x800

    invoke-static {p1, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 65
    .local v0, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v3, p1, p3, p4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 71
    const/4 v5, 0x3

    iput v5, v3, Landroid/app/Notification;->defaults:I

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 73
    return-void

    .line 54
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    :cond_1
    const-class v5, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v1, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 28
    const-string v3, "alarm_content"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, content:Ljava/lang/String;
    const-string v3, "bank_id"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 30
    .local v0, bankId:I
    const-string v3, "alarm_title"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, title:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u8fd8\u6b3e\u63d0\u9192"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/zhangdan/app/receiver/RepaymentNotifyReceiver;->showNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method
