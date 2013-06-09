.class public Lcom/zhangdan/app/activities/SplashActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;


# instance fields
.field private a:Lcom/zhangdan/app/activities/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    new-instance v0, Lcom/zhangdan/app/activities/g;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/g;-><init>(Lcom/zhangdan/app/activities/SplashActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/SplashActivity;->a:Lcom/zhangdan/app/activities/g;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/SplashActivity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "launch_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-class v1, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/SplashActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/SplashActivity;->finish()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/service/SyncService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "token"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/SplashActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/SplashActivity;)V
    .locals 2

    invoke-static {p0}, Lcom/zhangdan/app/data/a/b;->f(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-nez v0, :cond_0

    const-class v0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/SplashActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/SplashActivity;->finish()V

    return-void

    :cond_0
    const-class v0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/SplashActivity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/SplashActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/SplashActivity;->finish()V

    return-void
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/SplashActivity;)Lcom/zhangdan/app/data/model/l;
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/SplashActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/SplashActivity;->c()Lcom/zhangdan/app/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/c/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/zhangdan/app/activities/SplashActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/c/a;->g()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/zhangdan/app/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/zhangdan/app/data/db/b/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/b/a;->a(Ljava/lang/String;)Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/SplashActivity;->a(Lcom/zhangdan/app/data/model/l;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/SplashActivity;->c()Lcom/zhangdan/app/c/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/zhangdan/app/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/zhangdan/app/activities/SplashActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/SplashActivity;)Lcom/zhangdan/app/activities/g;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/SplashActivity;->a:Lcom/zhangdan/app/activities/g;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/SplashActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/a/a;->c(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zhangdan/app/activities/f;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/f;-><init>(Lcom/zhangdan/app/activities/SplashActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onDestroy()V

    return-void
.end method
