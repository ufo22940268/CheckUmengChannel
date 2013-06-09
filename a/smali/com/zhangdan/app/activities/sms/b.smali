.class final Lcom/zhangdan/app/activities/sms/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/b;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/b;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->d(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/b;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/b;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->e(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/b;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->f(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/sms/d;->a(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/b;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/b;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->g(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->a(Lcom/zhangdan/app/activities/sms/AllSmsActivity;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/b;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->h(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Lcom/zhangdan/app/activities/sms/d;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/b;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->g(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/sms/d;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/b;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->h(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Lcom/zhangdan/app/activities/sms/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/sms/d;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/b;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/b;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->e(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/b;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->f(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/b;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->d(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/zhangdan/app/sms/d;->a(Landroid/content/Context;III)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/b;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->g(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/a;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method
