.class final Lcom/zhangdan/app/activities/mailimport/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/mailimport/a/e;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/mailimport/a/e;I)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/a/f;->a:Lcom/zhangdan/app/activities/mailimport/a/e;

    iput p2, p0, Lcom/zhangdan/app/activities/mailimport/a/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/f;->a:Lcom/zhangdan/app/activities/mailimport/a/e;

    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/a/e;->a(Lcom/zhangdan/app/activities/mailimport/a/e;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/f;->a:Lcom/zhangdan/app/activities/mailimport/a/e;

    iget v1, p0, Lcom/zhangdan/app/activities/mailimport/a/f;->b:I

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/mailimport/a/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/g;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/a/f;->a:Lcom/zhangdan/app/activities/mailimport/a/e;

    invoke-static {v1}, Lcom/zhangdan/app/activities/mailimport/a/e;->b(Lcom/zhangdan/app/activities/mailimport/a/e;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/g;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/g;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "task"

    const-string v6, "mail_account"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "key"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "val"

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "last_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/zhangdan/app/data/db/a/o;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/a/f;->a:Lcom/zhangdan/app/activities/mailimport/a/e;

    invoke-static {v1}, Lcom/zhangdan/app/activities/mailimport/a/e;->b(Lcom/zhangdan/app/activities/mailimport/a/e;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/zhangdan/app/data/db/a/h;->a:Landroid/net/Uri;

    const-string v5, "user_id = ? and mail_account = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v7

    aput-object v3, v6, v8

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/a/f;->a:Lcom/zhangdan/app/activities/mailimport/a/e;

    invoke-static {v1}, Lcom/zhangdan/app/activities/mailimport/a/e;->b(Lcom/zhangdan/app/activities/mailimport/a/e;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/zhangdan/app/data/db/a/j;->a:Landroid/net/Uri;

    const-string v3, "email_name = ?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object v0, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zhangdan.app.mail_account_update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/a/f;->a:Lcom/zhangdan/app/activities/mailimport/a/e;

    invoke-static {v1}, Lcom/zhangdan/app/activities/mailimport/a/e;->b(Lcom/zhangdan/app/activities/mailimport/a/e;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
