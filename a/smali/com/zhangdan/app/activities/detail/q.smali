.class final Lcom/zhangdan/app/activities/detail/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

.field private final synthetic b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/PartPaidActivity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/q;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/detail/q;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/q;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/q;->b:Landroid/os/Bundle;

    const-string v1, "position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/q;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->b(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)Lcom/zhangdan/app/activities/detail/s;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/q;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->b(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)Lcom/zhangdan/app/activities/detail/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/detail/s;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/zhangdan/app/data/model/http/af;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/q;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/q;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->c(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)D

    move-result-wide v2

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/http/af;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->a(Lcom/zhangdan/app/activities/detail/PartPaidActivity;D)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/q;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/q;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->d(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)I

    move-result v3

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/q;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->d(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/q;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->e(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)J

    move-result-wide v1

    :goto_1
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/q;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-static {v4}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->c(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)D

    move-result-wide v4

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/http/af;->a()I

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/http/af;->i()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/zhangdan/app/data/db/b/d;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/af;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/http/af;->a()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/zhangdan/app/data/model/http/af;->a(I)V

    :cond_2
    if-nez v3, :cond_4

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/http/af;->a()I

    move-result v3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "saveDelReturnRecordTask "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "task"

    const-string v11, "del_return_record"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "key"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "val"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "last_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lcom/zhangdan/app/data/db/a/o;->a:Landroid/net/Uri;

    invoke-virtual {v8, v3, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/http/af;->a()I

    move-result v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "deleteReturnRecord "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "is_delete"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v9, Lcom/zhangdan/app/data/db/a/e;->a:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "_id = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v8, v3, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {v0, v1, v2, v4, v5}, Lcom/zhangdan/app/data/db/b/c;->a(Landroid/content/Context;JD)V

    :goto_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/q;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->b(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)Lcom/zhangdan/app/activities/detail/s;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/activities/detail/s;->b(Lcom/zhangdan/app/data/model/http/af;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/q;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->b(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)Lcom/zhangdan/app/activities/detail/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/s;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/q;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->g(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/q;->a:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->f(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)J

    move-result-wide v1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/http/af;->a()I

    move-result v3

    invoke-static {v0, v3}, Lcom/zhangdan/app/data/db/b/d;->a(Landroid/content/Context;I)V

    const/4 v3, 0x2

    invoke-static/range {v0 .. v5}, Lcom/zhangdan/app/data/db/b/l;->a(Landroid/content/Context;JID)V

    goto :goto_2
.end method
