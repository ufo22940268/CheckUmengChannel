.class final Lcom/zhangdan/app/activities/account/f;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

.field private b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/account/f;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/f;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-static {v2, v0, v1}, Lcom/zhangdan/app/b/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/ae;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 3

    invoke-super {p0}, Lcom/a/a/a/e/a/a;->a()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/f;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/f;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v2, 0x7f080028

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/f;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/f;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/f;->b:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/f;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/zhangdan/app/data/model/http/ae;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/f;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/f;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/f;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v2, 0x7f080022

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-static {v1, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ae;->a()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/f;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/f;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v2, 0x7f08002c

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/zhangdan/app/activities/account/e;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/f;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/account/e;-><init>(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ae;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ae;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/account/e;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ae;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/f;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/f;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v2, 0x7f08002b

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
