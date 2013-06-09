.class public final Lcom/zhangdan/app/a/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/zhangdan/app/receiver/RepaymentNotifyReceiver;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x800

    invoke-static {p0, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/zhangdan/app/receiver/RepaymentNotifyReceiver;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "alarm_content"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "bank_id"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "alarm_title"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x800

    invoke-static {p0, p6, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V
    .locals 14

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->u()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v0, 0x0

    :goto_0
    const/4 v8, 0x5

    if-ge v0, v8, :cond_0

    invoke-virtual {v4, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    const/4 v8, 0x5

    neg-int v9, v0

    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->add(II)V

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x5

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    mul-int/lit16 v11, v5, 0x2710

    mul-int/lit8 v12, v6, 0x64

    add-int/2addr v11, v12

    add-int/2addr v11, v7

    mul-int/lit16 v12, v8, 0x2710

    mul-int/lit8 v13, v9, 0x64

    add-int/2addr v12, v13

    add-int/2addr v12, v10

    if-gt v11, v12, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "cancel: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "-"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "-"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v11, 0x9

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {p0, v8}, Lcom/zhangdan/app/a/a;->a(Landroid/content/Context;I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {p0, v8}, Lcom/zhangdan/app/a/a;->a(Landroid/content/Context;I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 25

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v19

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v20

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/4 v4, 0x0

    move v15, v4

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v15, v4, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->u()I

    move-result v4

    if-ltz v4, :cond_2

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->o()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v5, v4

    const/4 v6, 0x3

    if-lt v5, v6, :cond_2

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v10

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v23, v5, -0x1

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/4 v4, 0x0

    move/from16 v17, v4

    :goto_1
    const/4 v4, 0x5

    move/from16 v0, v17

    if-lt v0, v4, :cond_3

    :cond_2
    add-int/lit8 v4, v15, 0x1

    move v15, v4

    goto :goto_0

    :cond_3
    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    const/4 v4, 0x5

    move/from16 v0, v17

    neg-int v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move/from16 v0, v18

    mul-int/lit16 v7, v0, 0x2710

    mul-int/lit8 v8, v19, 0x64

    add-int/2addr v7, v8

    add-int v7, v7, v20

    mul-int/lit16 v8, v4, 0x2710

    mul-int/lit8 v9, v5, 0x64

    add-int/2addr v8, v9

    add-int/2addr v8, v6

    if-gt v7, v8, :cond_2

    const/4 v7, 0x0

    move/from16 v0, v18

    if-ne v0, v4, :cond_b

    move/from16 v0, v19

    if-ne v0, v5, :cond_b

    move/from16 v0, v20

    if-ne v0, v6, :cond_b

    const/4 v7, 0x1

    move/from16 v16, v7

    :goto_2
    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_a

    :cond_4
    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->v()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080154

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x1

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x2

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->o()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x3

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :goto_3
    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    if-eqz v16, :cond_5

    if-eqz v16, :cond_6

    const/16 v7, 0x9

    move/from16 v0, v21

    if-ge v0, v7, :cond_6

    :cond_5
    const/16 v7, 0x9

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " 09:00"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v13, 0x9

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v13

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v13}, Lcom/zhangdan/app/a/a;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;I)V

    :cond_6
    if-eqz v16, :cond_7

    if-eqz v16, :cond_8

    const/16 v7, 0x14

    move/from16 v0, v21

    if-ge v0, v7, :cond_8

    :cond_7
    const/16 v7, 0x14

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " 20:00"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v13

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v13}, Lcom/zhangdan/app/a/a;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;I)V

    :cond_8
    :goto_4
    add-int/lit8 v4, v17, 0x1

    move/from16 v17, v4

    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080154

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x1

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x2

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->o()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x3

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x4

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->v()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/zhangdan/app/a/a;->a(Landroid/content/Context;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/zhangdan/app/a/a;->a(Landroid/content/Context;I)V

    goto/16 :goto_4

    :cond_b
    move/from16 v16, v7

    goto/16 :goto_2
.end method

.method public static b(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V
    .locals 21

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->u()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v17

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v19

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v20

    const/4 v2, 0x0

    move v13, v2

    :goto_0
    const/4 v2, 0x5

    if-ge v13, v2, :cond_0

    move/from16 v0, v16

    invoke-virtual {v1, v14, v15, v0}, Ljava/util/Calendar;->set(III)V

    const/4 v2, 0x5

    neg-int v3, v13

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move/from16 v0, v17

    mul-int/lit16 v5, v0, 0x2710

    mul-int/lit8 v6, v18, 0x64

    add-int/2addr v5, v6

    add-int v5, v5, v19

    mul-int/lit16 v6, v2, 0x2710

    mul-int/lit8 v7, v3, 0x64

    add-int/2addr v6, v7

    add-int/2addr v6, v4

    if-gt v5, v6, :cond_0

    const/4 v5, 0x0

    move/from16 v0, v17

    if-ne v0, v2, :cond_8

    move/from16 v0, v18

    if-ne v0, v3, :cond_8

    move/from16 v0, v19

    if-ne v0, v4, :cond_8

    const/4 v5, 0x1

    move v12, v5

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->v()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080154

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->o()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_2
    if-eqz v12, :cond_3

    if-eqz v12, :cond_4

    const/16 v5, 0x9

    move/from16 v0, v20

    if-ge v0, v5, :cond_4

    :cond_3
    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " 09:00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v11, 0x9

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v11

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v11}, Lcom/zhangdan/app/a/a;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v12, :cond_5

    if-eqz v12, :cond_6

    const/16 v5, 0x14

    move/from16 v0, v20

    if-ge v0, v5, :cond_6

    :cond_5
    const/16 v5, 0x14

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " 20:00"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v11

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v11}, Lcom/zhangdan/app/a/a;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;I)V

    :cond_6
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080154

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->o()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/j;->v()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    :cond_8
    move v12, v5

    goto/16 :goto_1
.end method
