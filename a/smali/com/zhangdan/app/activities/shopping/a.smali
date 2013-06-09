.class public final Lcom/zhangdan/app/activities/shopping/a;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private d:Lcom/zhangdan/app/activities/shopping/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    iput-object p1, p0, Lcom/zhangdan/app/activities/shopping/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zhangdan/app/activities/shopping/a;->b:Ljava/lang/String;

    if-eqz p4, :cond_1

    iput-object p3, p0, Lcom/zhangdan/app/activities/shopping/a;->c:Ljava/util/List;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/a;->c:Ljava/util/List;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/h;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->y()Lcom/zhangdan/app/data/model/m;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/a;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v2}, Lcom/zhangdan/app/b/m;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/a;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/zhangdan/app/data/db/b/r;->a(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/h;

    new-instance v6, Lcom/zhangdan/app/data/model/n;

    invoke-direct {v6}, Lcom/zhangdan/app/data/model/n;-><init>()V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->a()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/zhangdan/app/data/model/n;->a(J)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/a;->b:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/zhangdan/app/data/model/n;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->f()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v6, v1}, Lcom/zhangdan/app/data/model/n;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->q()I

    move-result v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->r()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->s()I

    move-result v0

    invoke-virtual {v3, v1, v7, v0}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/zhangdan/app/data/model/n;->c(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->l()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/h;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/m;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/m;->a()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->a()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/h;->a(Lcom/zhangdan/app/data/model/m;)V

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2
.end method

.method public final a(Lcom/zhangdan/app/activities/shopping/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/shopping/a;->d:Lcom/zhangdan/app/activities/shopping/b;

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Integer;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/a;->d:Lcom/zhangdan/app/activities/shopping/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/a;->d:Lcom/zhangdan/app/activities/shopping/b;

    invoke-interface {v0}, Lcom/zhangdan/app/activities/shopping/b;->a()V

    :cond_0
    return-void
.end method
