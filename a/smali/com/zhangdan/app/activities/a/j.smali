.class public final Lcom/zhangdan/app/activities/a/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;ILjava/lang/String;JDD)J
    .locals 8

    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    cmpl-double v0, p5, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0, p5, p6}, Lcom/zhangdan/app/data/db/b/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;D)J

    move-result-wide v0

    move-wide v6, v0

    :goto_0
    const/4 v3, 0x2

    move-object v0, p0

    move-wide v1, p3

    move-wide v4, p7

    invoke-static/range {v0 .. v5}, Lcom/zhangdan/app/data/db/b/c;->a(Landroid/content/Context;JID)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/db/b/m;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    :goto_1
    return-wide v6

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    cmpl-double v0, p5, v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0, p5, p6}, Lcom/zhangdan/app/data/db/b/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;D)J

    move-result-wide v0

    move-wide v6, v0

    :goto_2
    const/4 v3, 0x2

    move-object v0, p0

    move-wide v1, p3

    move-wide v4, p7

    invoke-static/range {v0 .. v5}, Lcom/zhangdan/app/data/db/b/l;->a(Landroid/content/Context;JID)V

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->d()J

    move-result-wide v1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/zhangdan/app/data/db/b/c;->a(Landroid/content/Context;JID)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v3, v1}, Lcom/zhangdan/app/data/db/b/m;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zhangdan.app.user_bank_changed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ub_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user_bank_type"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v6

    :cond_2
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "status"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {p0, p1}, Lcom/zhangdan/app/a/a;->a(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/zhangdan/app/data/db/b/l;->a(Landroid/content/Context;JID)V

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->d()J

    move-result-wide v1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/zhangdan/app/data/db/b/c;->a(Landroid/content/Context;JID)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v3, v1}, Lcom/zhangdan/app/data/db/b/m;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zhangdan.app.user_bank_changed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ub_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "status"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "user_bank_type"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {p0, p1}, Lcom/zhangdan/app/a/a;->b(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/zhangdan/app/data/db/b/l;->a(Landroid/content/Context;JID)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    goto :goto_2
.end method
