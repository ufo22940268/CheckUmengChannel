.class public final Lcom/zhangdan/app/activities/setting/h;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->c()Lcom/zhangdan/app/data/model/l;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/l;->l()Ljava/lang/String;

    move-result-object v2

    const-string v5, "card"

    const-string v6, "account_type"

    invoke-static {v1, v5, v6, v2}, Lcom/zhangdan/app/data/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/igexin/c/a;->a()Lcom/igexin/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/igexin/c/a;->b(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->b()Lcom/zhangdan/app/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/c/a;->c()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/zhangdan/app/data/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_avatar"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "card"

    invoke-static {v2, v5, v4, v1}, Lcom/zhangdan/app/data/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/zhangdan/app/data/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/zhangdan/app/data/a/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Lcom/zhangdan/app/data/a/b;->a(Landroid/content/Context;J)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/zhangdan/app/data/a/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    const-string v2, "bank_service"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    const-string v2, "51zhangdan"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/zhangdan/app/data/db/a/p;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/zhangdan/app/data/db/a/o;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/zhangdan/app/data/db/a/d;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/zhangdan/app/data/db/a/e;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/zhangdan/app/data/db/a/h;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/zhangdan/app/data/db/a/j;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/zhangdan/app/data/db/a/l;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/zhangdan/app/data/db/a/m;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/zhangdan/app/data/db/a/s;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/zhangdan/app/data/db/a/r;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/zhangdan/app/data/db/a/g;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/zhangdan/app/data/db/a/f;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/zhangdan/app/data/db/a/n;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/zhangdan/app/sms/f;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/zhangdan/app/data/db/a/v;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->e()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/service/DownloadDataService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    return-object v7

    :cond_3
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/j;

    invoke-static {v6, v1}, Lcom/zhangdan/app/a/a;->a(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0
.end method

.method protected final a()V
    .locals 2

    invoke-super {p0}, Lcom/a/a/a/e/a/a;->a()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    const-string v1, "\u6b63\u5728\u6ce8\u9500\uff0c\u8bf7\u7a0d\u540e..."

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/h;->a:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/h;->a:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/h;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/h;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/h;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/SplashActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zhangdan.app.log_off"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/h;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
