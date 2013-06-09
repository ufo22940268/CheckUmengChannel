.class public final Lcom/zhangdan/app/sms/h;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zhangdan/app/data/db/a/n;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "bank_id"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/zhangdan/app/sms/a;Lcom/zhangdan/app/sms/SmsBillData;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/zhangdan/app/sms/SmsBillData;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/zhangdan/app/sms/SmsBillData;->g()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/sms/SmsBillData;->c(Ljava/lang/String;)V

    const-string v7, "name_on_sms"

    invoke-virtual {v4, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p2, v5}, Lcom/zhangdan/app/sms/SmsBillData;->d(Ljava/lang/String;)V

    const-string v0, "card_no"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_0
    invoke-virtual {p2}, Lcom/zhangdan/app/sms/SmsBillData;->b()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/zhangdan/app/sms/a;->c(I)V

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v6

    if-nez v6, :cond_3

    const-string v0, "new_balance"

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "usd_new_balance"

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->q()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/zhangdan/app/h/g;->a(J)[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->s()I

    move-result v6

    aget v7, v0, v1

    if-ge v6, v7, :cond_2

    aget v0, v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zhangdan/app/sms/a;->h(I)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->s()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->r()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->r()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/zhangdan/app/sms/SmsBillData;->e(Ljava/lang/String;)V

    const-string v2, "payment_due_date"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v1, :cond_1

    sget-object v0, Lcom/zhangdan/app/data/db/a/n;->a:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v4, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    aget v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/zhangdan/app/sms/a;->h(I)V

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto/16 :goto_0
.end method

.method private static a(Lcom/zhangdan/app/sms/SmsBillData;I)V
    .locals 1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/SmsBillData;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/sms/SmsBillData;->g(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/SmsBillData;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/sms/SmsBillData;->b(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/SmsBillData;->j()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/sms/SmsBillData;->e(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/SmsBillData;->k()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/sms/SmsBillData;->f(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/SmsBillData;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/sms/SmsBillData;->c(I)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/zhangdan/app/sms/a;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    const-string v0, "\u5148\u751f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u5148\u751f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "\u5c0a\u656c\u7684"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u5c0a\u656c\u7684"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "\u5973\u58eb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u5973\u58eb"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p1, v0}, Lcom/zhangdan/app/sms/a;->c(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v0, "\u5973\u58eb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u5973\u58eb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v1, "\u5c0a\u656c\u7684"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "\u5c0a\u656c\u7684"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v1, "\u5148\u751f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "\u5148\u751f"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/zhangdan/app/sms/a;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/zhangdan/app/sms/a;Ljava/util/List;)Z
    .locals 13

    const/4 v12, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->i()I

    move-result v6

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eq v0, v12, :cond_16

    invoke-virtual {p1, v2}, Lcom/zhangdan/app/sms/a;->d(I)V

    move v1, v2

    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_1

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p1, p2}, Lcom/zhangdan/app/sms/h;->b(Landroid/content/Context;Lcom/zhangdan/app/sms/a;Ljava/util/List;)V

    move v4, v5

    :cond_0
    :goto_2
    return v4

    :cond_1
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/SmsBillData;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->e()I

    move-result v11

    if-ne v6, v11, :cond_2

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eq v1, v12, :cond_4

    if-ne v1, v2, :cond_5

    :cond_4
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/SmsBillData;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->b()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/zhangdan/app/sms/a;->c(I)V

    invoke-static {v0, v1}, Lcom/zhangdan/app/sms/h;->a(Lcom/zhangdan/app/sms/SmsBillData;I)V

    goto :goto_2

    :cond_5
    move v2, v4

    :goto_3
    if-ge v2, v3, :cond_0

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/SmsBillData;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->b()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/zhangdan/app/sms/a;->c(I)V

    if-nez v1, :cond_6

    invoke-static {v0, v1}, Lcom/zhangdan/app/sms/h;->a(Lcom/zhangdan/app/sms/SmsBillData;I)V

    invoke-static {p0, p1, v0}, Lcom/zhangdan/app/sms/h;->a(Landroid/content/Context;Lcom/zhangdan/app/sms/a;Lcom/zhangdan/app/sms/SmsBillData;)V

    move v4, v5

    goto :goto_2

    :cond_6
    invoke-static {v0, v1}, Lcom/zhangdan/app/sms/h;->a(Lcom/zhangdan/app/sms/SmsBillData;I)V

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    move v2, v4

    :goto_4
    if-lt v2, v3, :cond_9

    if-ne v3, v5, :cond_e

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/SmsBillData;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {p0, p1, p2}, Lcom/zhangdan/app/sms/h;->b(Landroid/content/Context;Lcom/zhangdan/app/sms/a;Ljava/util/List;)V

    move v4, v5

    goto/16 :goto_2

    :cond_9
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/SmsBillData;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->b()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/zhangdan/app/sms/a;->c(I)V

    if-nez v1, :cond_a

    invoke-static {v0, v1}, Lcom/zhangdan/app/sms/h;->a(Lcom/zhangdan/app/sms/SmsBillData;I)V

    invoke-static {p0, p1, v0}, Lcom/zhangdan/app/sms/h;->a(Landroid/content/Context;Lcom/zhangdan/app/sms/a;Lcom/zhangdan/app/sms/SmsBillData;)V

    move v4, v5

    goto/16 :goto_2

    :cond_a
    invoke-static {v0, v1}, Lcom/zhangdan/app/sms/h;->a(Lcom/zhangdan/app/sms/SmsBillData;I)V

    invoke-static {p0, p1, v0}, Lcom/zhangdan/app/sms/h;->a(Landroid/content/Context;Lcom/zhangdan/app/sms/a;Lcom/zhangdan/app/sms/SmsBillData;)V

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_c
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->b()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/zhangdan/app/sms/a;->c(I)V

    if-nez v1, :cond_d

    invoke-static {v0, v1}, Lcom/zhangdan/app/sms/h;->a(Lcom/zhangdan/app/sms/SmsBillData;I)V

    invoke-static {p0, p1, v0}, Lcom/zhangdan/app/sms/h;->a(Landroid/content/Context;Lcom/zhangdan/app/sms/a;Lcom/zhangdan/app/sms/SmsBillData;)V

    move v4, v5

    goto/16 :goto_2

    :cond_d
    invoke-static {v0, v1}, Lcom/zhangdan/app/sms/h;->a(Lcom/zhangdan/app/sms/SmsBillData;I)V

    invoke-static {p0, p1, v0}, Lcom/zhangdan/app/sms/h;->a(Landroid/content/Context;Lcom/zhangdan/app/sms/a;Lcom/zhangdan/app/sms/SmsBillData;)V

    goto/16 :goto_2

    :cond_e
    invoke-static {p0, p1, p2}, Lcom/zhangdan/app/sms/h;->b(Landroid/content/Context;Lcom/zhangdan/app/sms/a;Ljava/util/List;)V

    move v4, v5

    goto/16 :goto_2

    :cond_f
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v4

    :goto_5
    if-lt v2, v3, :cond_10

    if-ne v3, v5, :cond_15

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/SmsBillData;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {p0, p1, p2}, Lcom/zhangdan/app/sms/h;->b(Landroid/content/Context;Lcom/zhangdan/app/sms/a;Ljava/util/List;)V

    move v4, v5

    goto/16 :goto_2

    :cond_10
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/SmsBillData;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->b()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/zhangdan/app/sms/a;->c(I)V

    if-nez v1, :cond_11

    invoke-static {v0, v1}, Lcom/zhangdan/app/sms/h;->a(Lcom/zhangdan/app/sms/SmsBillData;I)V

    invoke-static {p0, p1, v0}, Lcom/zhangdan/app/sms/h;->a(Landroid/content/Context;Lcom/zhangdan/app/sms/a;Lcom/zhangdan/app/sms/SmsBillData;)V

    move v4, v5

    goto/16 :goto_2

    :cond_11
    invoke-static {v0, v1}, Lcom/zhangdan/app/sms/h;->a(Lcom/zhangdan/app/sms/SmsBillData;I)V

    invoke-static {p0, p1, v0}, Lcom/zhangdan/app/sms/h;->a(Landroid/content/Context;Lcom/zhangdan/app/sms/a;Lcom/zhangdan/app/sms/SmsBillData;)V

    goto/16 :goto_2

    :cond_12
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_13
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->b()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/zhangdan/app/sms/a;->c(I)V

    if-nez v1, :cond_14

    invoke-static {v0, v1}, Lcom/zhangdan/app/sms/h;->a(Lcom/zhangdan/app/sms/SmsBillData;I)V

    invoke-static {p0, p1, v0}, Lcom/zhangdan/app/sms/h;->a(Landroid/content/Context;Lcom/zhangdan/app/sms/a;Lcom/zhangdan/app/sms/SmsBillData;)V

    move v4, v5

    goto/16 :goto_2

    :cond_14
    invoke-static {v0, v1}, Lcom/zhangdan/app/sms/h;->a(Lcom/zhangdan/app/sms/SmsBillData;I)V

    invoke-static {p0, p1, v0}, Lcom/zhangdan/app/sms/h;->a(Landroid/content/Context;Lcom/zhangdan/app/sms/a;Lcom/zhangdan/app/sms/SmsBillData;)V

    goto/16 :goto_2

    :cond_15
    invoke-static {p0, p1, p2}, Lcom/zhangdan/app/sms/h;->b(Landroid/content/Context;Lcom/zhangdan/app/sms/a;Ljava/util/List;)V

    move v4, v5

    goto/16 :goto_2

    :cond_16
    move v1, v0

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/zhangdan/app/sms/j;Ljava/util/List;Ljava/util/List;)Z
    .locals 11

    const/4 v9, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/zhangdan/app/sms/b;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/sms/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lcom/zhangdan/app/sms/j;->a:Ljava/lang/String;

    const-string v1, "[0-9]*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/zhangdan/app/sms/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {p0, p1}, Lcom/zhangdan/app/sms/b;->a(Landroid/content/Context;Lcom/zhangdan/app/sms/j;)Lcom/zhangdan/app/sms/a;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v1, p1, Lcom/zhangdan/app/sms/j;->a:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/zhangdan/app/sms/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_f

    new-instance v4, Lcom/zhangdan/app/sms/a;

    invoke-direct {v4}, Lcom/zhangdan/app/sms/a;-><init>()V

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "bank_name"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bank_id"

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/zhangdan/app/sms/a;->e(I)V

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->d(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/zhangdan/app/sms/j;->b:Ljava/lang/String;

    const-string v1, "(\u8d35\u5361|\u60a8\u7684|\u5c3e\u53f7|\u5361\u672b|\u5361\u53f7|\u5c3e\u6570|\u672b\u56db\u4f4d|\u540e4\u4f4d|\u672b5\u4f4d|\u5e10\u6237|\u8d26\u6237|\u8d26\u53f7|\u5e10\u53f7|\u5361\uff08|\u5361\\(|\u5c3e\u53f7\u662f|[\u4e00-\u9fa5]{2,5}\u5361)(\uff1a)?(\u4e3a)?(\\*){0,3}\\d{3,}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\d{3,}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->e(Ljava/lang/String;)V

    :cond_2
    iget-object v6, p1, Lcom/zhangdan/app/sms/j;->b:Ljava/lang/String;

    const-string v0, ""

    const-string v1, ""

    const-string v7, "(\\d{1,2})\u6708"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string v7, "\\d{1,2}"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v7, "(\\d{1,2})(\u65e5|\u53f7)"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    const-string v7, "\\d{1,2}"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "\u8fd8\u6b3e\u65e5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "\u5230\u671f\u8fd8\u6b3e"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "\u8bf7\u4e8e"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "\u8fd8\u6b3e\u5230\u671f"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/zhangdan/app/sms/a;->f(I)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->g(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/zhangdan/app/sms/j;->b:Ljava/lang/String;

    sget-object v1, Lcom/zhangdan/app/sms/b;->i:Lcom/zhangdan/app/sms/c;

    iget-object v1, v1, Lcom/zhangdan/app/sms/c;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/zhangdan/app/sms/b;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2}, Lcom/zhangdan/app/sms/a;->d(I)V

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->f(Ljava/lang/String;)V

    :cond_7
    :goto_2
    iget-object v0, p1, Lcom/zhangdan/app/sms/j;->b:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/zhangdan/app/sms/h;->a(Ljava/lang/String;Lcom/zhangdan/app/sms/a;)V

    iget-object v0, p1, Lcom/zhangdan/app/sms/j;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->g(Ljava/lang/String;)V

    move v0, v2

    move-object v1, v4

    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move v10, v0

    move-object v0, v1

    move v1, v10

    :goto_4
    if-eqz v1, :cond_a

    if-nez v0, :cond_8

    new-instance v0, Lcom/zhangdan/app/sms/a;

    invoke-direct {v0}, Lcom/zhangdan/app/sms/a;-><init>()V

    :cond_8
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_9

    iget-object v1, p1, Lcom/zhangdan/app/sms/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/zhangdan/app/sms/a;->d(I)V

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/sms/a;->g(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->s()I

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0, v9}, Lcom/zhangdan/app/sms/a;->d(I)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/sms/a;->e(Ljava/lang/String;)V

    :cond_a
    if-eqz v0, :cond_0

    iget-wide v4, p1, Lcom/zhangdan/app/sms/j;->c:J

    invoke-virtual {v0, v4, v5}, Lcom/zhangdan/app/sms/a;->b(J)V

    iget-object v1, p1, Lcom/zhangdan/app/sms/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/sms/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->a()I

    move-result v1

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "scan_process"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "sum_num"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "sms_phone_number"

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->a()I

    move-result v1

    if-ne v1, v2, :cond_b

    invoke-static {p0, v0, p3}, Lcom/zhangdan/app/sms/h;->a(Landroid/content/Context;Lcom/zhangdan/app/sms/a;Ljava/util/List;)Z

    move-result v3

    :cond_b
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_c
    sget-object v1, Lcom/zhangdan/app/sms/b;->i:Lcom/zhangdan/app/sms/c;

    iget-object v1, v1, Lcom/zhangdan/app/sms/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/zhangdan/app/sms/b;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Lcom/zhangdan/app/sms/a;->d(I)V

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->f(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    sget-object v1, Lcom/zhangdan/app/sms/b;->i:Lcom/zhangdan/app/sms/c;

    iget-object v1, v1, Lcom/zhangdan/app/sms/c;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zhangdan/app/sms/b;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3}, Lcom/zhangdan/app/sms/a;->d(I)V

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->f(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    iget-object v1, p1, Lcom/zhangdan/app/sms/j;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/zhangdan/app/sms/h;->a(Ljava/lang/String;Lcom/zhangdan/app/sms/a;)V

    move v1, v2

    goto/16 :goto_4

    :cond_f
    move-object v1, v0

    move v0, v3

    goto/16 :goto_3

    :cond_10
    move v1, v3

    goto/16 :goto_4
.end method

.method private static b(Landroid/content/Context;Lcom/zhangdan/app/sms/a;Ljava/util/List;)V
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Lcom/zhangdan/app/sms/SmsBillData;

    invoke-direct {v0}, Lcom/zhangdan/app/sms/SmsBillData;-><init>()V

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->i()I

    move-result v1

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/sms/SmsBillData;->d(I)V

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/sms/SmsBillData;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/sms/SmsBillData;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/sms/SmsBillData;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/zhangdan/app/sms/SmsBillData;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "bank_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "bank_name"

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name_on_sms"

    invoke-virtual {v6, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "card_no"

    invoke-virtual {v6, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "new_balance"

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "usd_new_balance"

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->q()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/zhangdan/app/h/g;->a(J)[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->s()I

    move-result v2

    const/4 v3, 0x1

    aget v3, v1, v3

    if-ge v2, v3, :cond_1

    aget v1, v1, v8

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/zhangdan/app/sms/a;->h(I)V

    :goto_0
    const-string v1, "payment_due_date"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->t()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->s()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->r()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/sms/h;->a(Lcom/zhangdan/app/sms/SmsBillData;I)V

    const-string v1, "is_creaditcard"

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/zhangdan/app/data/db/a/n;->a:Landroid/net/Uri;

    invoke-virtual {v5, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/sms/SmsBillData;->a(I)V

    invoke-virtual {p1, v1}, Lcom/zhangdan/app/sms/a;->c(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    aget v1, v1, v8

    invoke-virtual {p1, v1}, Lcom/zhangdan/app/sms/a;->h(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
