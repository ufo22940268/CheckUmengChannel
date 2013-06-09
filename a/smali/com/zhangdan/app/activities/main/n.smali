.class final Lcom/zhangdan/app/activities/main/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zhangdan/app/receiver/j;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/main/a;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/n;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;II)V
    .locals 7

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/n;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->l(Lcom/zhangdan/app/activities/main/a;)V

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/n;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->m(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->c()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/n;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->k(Lcom/zhangdan/app/activities/main/a;)V

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-nez v5, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-nez p2, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    :goto_2
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/n;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/data/db/b/l;->a(Landroid/content/Context;J)Lcom/zhangdan/app/data/model/j;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/n;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/a;->m(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/c/a;->a(Lcom/zhangdan/app/data/model/j;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-nez v5, :cond_5

    if-nez p3, :cond_7

    iget-object v4, p0, Lcom/zhangdan/app/activities/main/n;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v4}, Lcom/zhangdan/app/activities/main/a;->m(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/c/a;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/main/n;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v5}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v6}, Lcom/zhangdan/app/c/a;->a(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;Ljava/util/List;)V

    goto :goto_2

    :cond_7
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method
