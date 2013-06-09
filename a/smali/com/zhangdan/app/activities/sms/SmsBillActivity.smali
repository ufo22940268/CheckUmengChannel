.class public Lcom/zhangdan/app/activities/sms/SmsBillActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/app/f/b;
.implements Lcom/zhangdan/app/g/a;


# instance fields
.field c:Landroid/content/BroadcastReceiver;

.field private d:Landroid/widget/ListView;

.field private e:Ljava/util/List;

.field private f:Lcom/zhangdan/app/activities/sms/r;

.field private g:Z

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Lcom/zhangdan/app/f/a;

.field private k:Lcom/zhangdan/app/ZhangdanApplication;

.field private l:Lcom/zhangdan/app/activities/sms/q;

.field private m:Ljava/util/List;

.field private n:Lcom/zhangdan/app/g/b;

.field private o:I

.field private p:Lcom/zhangdan/app/activities/mailimport/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->e:Ljava/util/List;

    iput-boolean v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->g:Z

    new-instance v0, Lcom/zhangdan/app/activities/sms/q;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/sms/q;-><init>(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->l:Lcom/zhangdan/app/activities/sms/q;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->m:Ljava/util/List;

    iput v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->o:I

    new-instance v0, Lcom/zhangdan/app/activities/sms/o;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/sms/o;-><init>(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/sms/SmsBillActivity;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->o:I

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/sms/SmsBillActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/sms/SmsBillActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->g:Z

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->k()V

    return-void
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->o:I

    return v0
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Lcom/zhangdan/app/activities/sms/q;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->l:Lcom/zhangdan/app/activities/sms/q;

    return-object v0
.end method

.method static synthetic f(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->e:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->f:Lcom/zhangdan/app/activities/sms/r;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/sms/r;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->f:Lcom/zhangdan/app/activities/sms/r;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/sms/r;->notifyDataSetChanged()V

    const v0, 0x7f0601a4

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->i:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->m:Ljava/util/List;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/SmsBillData;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->i:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->g:Z

    return v0
.end method

.method private k()V
    .locals 17

    invoke-static/range {p0 .. p0}, Lcom/zhangdan/app/data/db/b/l;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_0

    if-eqz v13, :cond_2

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->k:Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v1}, Lcom/zhangdan/app/ZhangdanApplication;->b()Lcom/zhangdan/app/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/c/a;->c()Ljava/util/List;

    move-result-object v14

    if-eqz v13, :cond_1

    const/4 v1, 0x0

    move v11, v1

    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-lt v11, v1, :cond_4

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/data/db/b/l;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    const/4 v1, 0x0

    move v7, v1

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lt v7, v1, :cond_9

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->e:Ljava/util/List;

    if-eqz v1, :cond_3

    if-eqz v13, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_e

    :cond_3
    return-void

    :cond_4
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v16

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->o()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "/"

    const-string v2, "-"

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    const/4 v1, 0x0

    move v12, v1

    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-lt v12, v1, :cond_6

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_0

    :cond_6
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v1

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v9

    move/from16 v0, v16

    if-ne v0, v1, :cond_8

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v8, v3}, Lcom/zhangdan/app/data/model/j;->b(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lcom/zhangdan/app/data/db/b/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v8, v15}, Lcom/zhangdan/app/data/model/j;->c(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v9

    move-object v6, v15

    move-object v8, v4

    invoke-static/range {v5 .. v10}, Lcom/zhangdan/app/data/db/b/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_8
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_3

    :cond_9
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v11, v12}, Lcom/zhangdan/app/data/db/b/l;->b(Landroid/content/Context;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/zhangdan/app/data/db/a/n;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "card_no =\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lcom/zhangdan/app/data/model/j;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/j;-><init>()V

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/zhangdan/app/data/model/j;->a(J)V

    invoke-virtual {v1, v10}, Lcom/zhangdan/app/data/model/j;->c(Ljava/lang/String;)V

    :goto_4
    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v3

    long-to-int v1, v3

    long-to-int v3, v11

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "bill_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/zhangdan/app/sms/f;->a:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bill_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v4, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v13, :cond_b

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_c

    :cond_b
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_1

    :cond_c
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v3

    cmp-long v3, v3, v11

    if-nez v3, :cond_d

    invoke-interface {v13, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_e
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v3

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/zhangdan/app/sms/d;->b(Landroid/content/Context;III)I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v6}, Lcom/zhangdan/app/sms/d;->b(Landroid/content/Context;III)I

    move-result v6

    const/4 v7, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v7}, Lcom/zhangdan/app/sms/d;->b(Landroid/content/Context;III)I

    move-result v7

    const/4 v8, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v8}, Lcom/zhangdan/app/sms/d;->b(Landroid/content/Context;III)I

    move-result v8

    const/4 v9, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v9}, Lcom/zhangdan/app/sms/d;->b(Landroid/content/Context;III)I

    move-result v9

    new-instance v10, Lcom/zhangdan/app/sms/SmsBillData;

    invoke-direct {v10}, Lcom/zhangdan/app/sms/SmsBillData;-><init>()V

    invoke-virtual {v10, v3}, Lcom/zhangdan/app/sms/SmsBillData;->d(I)V

    invoke-virtual {v10, v4}, Lcom/zhangdan/app/sms/SmsBillData;->a(I)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/zhangdan/app/sms/SmsBillData;->b(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Lcom/zhangdan/app/sms/SmsBillData;->g(I)V

    invoke-virtual {v10, v6}, Lcom/zhangdan/app/sms/SmsBillData;->e(I)V

    invoke-virtual {v10, v7}, Lcom/zhangdan/app/sms/SmsBillData;->f(I)V

    invoke-virtual {v10, v8}, Lcom/zhangdan/app/sms/SmsBillData;->b(I)V

    invoke-virtual {v10, v9}, Lcom/zhangdan/app/sms/SmsBillData;->c(I)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/zhangdan/app/sms/SmsBillData;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->o()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v10, v3}, Lcom/zhangdan/app/sms/SmsBillData;->e(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/zhangdan/app/sms/SmsBillData;->c(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->e:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_2

    :cond_10
    move-object v1, v8

    goto/16 :goto_4
.end method

.method private l()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zhangdan/app/service/SmsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "is_scan_all"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0, p1}, Lcom/zhangdan/app/ZhangdanApplication;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->j:Lcom/zhangdan/app/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->j:Lcom/zhangdan/app/f/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/f/a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->j:Lcom/zhangdan/app/f/a;

    goto :goto_0
.end method

.method public final j()V
    .locals 1

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->o:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->l()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "\u6b63\u5728\u626b\u63cf\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->l()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0601a5
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030078

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->k:Lcom/zhangdan/app/ZhangdanApplication;

    new-instance v0, Lcom/zhangdan/app/activities/mailimport/e;

    const v1, 0x7f06003c

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/zhangdan/app/activities/mailimport/e;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->p:Lcom/zhangdan/app/activities/mailimport/e;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zhangdan/app/f/a;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/app/f/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->j:Lcom/zhangdan/app/f/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->j:Lcom/zhangdan/app/f/a;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/f/a;->a(Lcom/zhangdan/app/f/b;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->j:Lcom/zhangdan/app/f/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/f/a;->a()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->j:Lcom/zhangdan/app/f/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/f/a;->b()V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "scan_finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "scan_process"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "scan_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "update_sms"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->k()V

    const v0, 0x7f0601a5

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0601a6

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->d:Landroid/widget/ListView;

    new-instance v0, Lcom/zhangdan/app/activities/sms/r;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/sms/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->f:Lcom/zhangdan/app/activities/sms/r;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->f:Lcom/zhangdan/app/activities/sms/r;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/sms/r;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->f:Lcom/zhangdan/app/activities/sms/r;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/zhangdan/app/activities/sms/p;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/sms/p;-><init>(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0601a7

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f0601a4

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->i:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    new-instance v0, Lcom/zhangdan/app/g/b;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/g/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->n:Lcom/zhangdan/app/g/b;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->n:Lcom/zhangdan/app/g/b;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/g/b;->a(Lcom/zhangdan/app/g/a;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scan_sms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->l()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->i:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->j:Lcom/zhangdan/app/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->j:Lcom/zhangdan/app/f/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/f/a;->c()V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->n:Lcom/zhangdan/app/g/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/g/b;->c()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->p:Lcom/zhangdan/app/activities/mailimport/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->p:Lcom/zhangdan/app/activities/mailimport/e;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/e;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->p:Lcom/zhangdan/app/activities/mailimport/e;

    :cond_1
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onPause()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->n:Lcom/zhangdan/app/g/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/g/b;->b()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onResume()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->n:Lcom/zhangdan/app/g/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/g/b;->a()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
