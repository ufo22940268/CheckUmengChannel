.class final Lcom/zhangdan/app/activities/detail/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/a;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->a(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->a(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->dismiss()V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const-string v1, "yuan_detail_history_bill"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->b(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const-string v1, "yuan_detail_merge_bill"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const v2, 0x7f080145

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const-string v1, "yuan_detail_delete_bill"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0
.end method
