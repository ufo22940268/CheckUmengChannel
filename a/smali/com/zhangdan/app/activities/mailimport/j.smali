.class final Lcom/zhangdan/app/activities/mailimport/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zhangdan/app/activities/mailimport/n;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/zhangdan/app/data/model/http/ac;)V
    .locals 9

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->c(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-static {v0, v3}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-static {v0, v3}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->b(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ac;->a()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ac;->a()I

    move-result v0

    const/16 v1, 0x70

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Lcom/zhangdan/app/widget/f;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Lcom/zhangdan/app/widget/f;

    move-result-object v0

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/f;->a(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Lcom/zhangdan/app/widget/f;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/f;->a(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ac;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ac;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->b(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->d(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-static {v4}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->e(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "last_web_access_time"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/zhangdan/app/data/db/a/h;->a:Landroid/net/Uri;

    const-string v6, "mail_account = ? and user_id = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    aput-object v3, v7, v4

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    const-class v3, Lcom/zhangdan/app/service/MailStatusService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "sid"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ac;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "token"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "user_id"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->c(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ac;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-static {v0, v3}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-static {v0, v3}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->b(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    new-instance v1, Lcom/zhangdan/app/widget/f;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-direct {v1, v2}, Lcom/zhangdan/app/widget/f;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Lcom/zhangdan/app/widget/f;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Lcom/zhangdan/app/widget/f;

    move-result-object v0

    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/f;->a(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Lcom/zhangdan/app/widget/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/f;->setCancelable(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Lcom/zhangdan/app/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/f;->show()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/j;->a:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->b(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)V

    return-void
.end method
