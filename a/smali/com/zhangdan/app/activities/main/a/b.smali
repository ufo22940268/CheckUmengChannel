.class final Lcom/zhangdan/app/activities/main/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/main/a/a;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/a/b;->a:Lcom/zhangdan/app/activities/main/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a/b;->a:Lcom/zhangdan/app/activities/main/a/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/a/a;->a(Lcom/zhangdan/app/activities/main/a/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/b;->a:Lcom/zhangdan/app/activities/main/a/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a/a;->b(Lcom/zhangdan/app/activities/main/a/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a/b;->a:Lcom/zhangdan/app/activities/main/a/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/a/a;->b(Lcom/zhangdan/app/activities/main/a/a;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080104

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/zhangdan/app/activities/a/a;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/a/b;->a:Lcom/zhangdan/app/activities/main/a/a;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/a/a;->b(Lcom/zhangdan/app/activities/main/a/a;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zhangdan/app/activities/a/a;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/a/a;->show()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    new-instance v1, Lcom/zhangdan/app/activities/a/k;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/a/b;->a:Lcom/zhangdan/app/activities/main/a/a;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/a/a;->b(Lcom/zhangdan/app/activities/main/a/a;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zhangdan/app/activities/a/k;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/a/k;->show()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    new-instance v1, Lcom/zhangdan/app/activities/a/n;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/a/b;->a:Lcom/zhangdan/app/activities/main/a/a;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/a/a;->b(Lcom/zhangdan/app/activities/main/a/a;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zhangdan/app/activities/a/n;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/a/n;->show()V

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    new-instance v1, Lcom/zhangdan/app/activities/a/d;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/a/b;->a:Lcom/zhangdan/app/activities/main/a/a;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/a/a;->b(Lcom/zhangdan/app/activities/main/a/a;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zhangdan/app/activities/a/d;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/a/d;->show()V

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/zhangdan/app/activities/a/g;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/a/b;->a:Lcom/zhangdan/app/activities/main/a/a;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/a/a;->b(Lcom/zhangdan/app/activities/main/a/a;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zhangdan/app/activities/a/g;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/a/g;->show()V

    goto :goto_0
.end method
