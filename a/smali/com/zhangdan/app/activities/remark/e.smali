.class final Lcom/zhangdan/app/activities/remark/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/remark/CategoryActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/remark/CategoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/e;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, -0x1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/e;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/data/db/b/g;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/e;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->c(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Lcom/zhangdan/app/activities/remark/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/h;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/e;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->c(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Lcom/zhangdan/app/activities/remark/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/remark/h;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/p;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/p;->b()I

    move-result v4

    if-ne v4, v7, :cond_2

    new-instance v4, Lcom/zhangdan/app/activities/remark/g;

    iget-object v5, p0, Lcom/zhangdan/app/activities/remark/e;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-direct {v4, v5}, Lcom/zhangdan/app/activities/remark/g;-><init>(Lcom/zhangdan/app/activities/remark/CategoryActivity;)V

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/activities/remark/g;->a(Lcom/zhangdan/app/data/model/http/p;)V

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/activities/remark/g;->b(Lcom/zhangdan/app/data/model/http/p;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/zhangdan/app/data/model/http/p;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/p;->b()I

    move-result v0

    if-eq v0, v7, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/remark/g;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/p;->b()I

    move-result v5

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/g;->c()I

    move-result v6

    if-ne v5, v6, :cond_6

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/g;->b(Lcom/zhangdan/app/data/model/http/p;)V

    goto :goto_2

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/remark/g;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/g;->e()V

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/g;->c()I

    move-result v3

    invoke-static {v3}, Lcom/zhangdan/app/data/c;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/activities/remark/g;->a(I)V

    goto :goto_3
.end method
