.class final Lcom/zhangdan/app/activities/chart/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/chart/g;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/chart/g;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/h;->a:Lcom/zhangdan/app/activities/chart/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06018d

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/zhangdan/app/activities/chart/s;

    invoke-direct {v0}, Lcom/zhangdan/app/activities/chart/s;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "names"

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/h;->a:Lcom/zhangdan/app/activities/chart/g;

    invoke-static {v3}, Lcom/zhangdan/app/activities/chart/g;->a(Lcom/zhangdan/app/activities/chart/g;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/chart/s;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/h;->a:Lcom/zhangdan/app/activities/chart/g;

    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/g;->b(Lcom/zhangdan/app/activities/chart/g;)Lcom/zhangdan/app/activities/chart/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/chart/s;->a(Lcom/zhangdan/app/activities/chart/u;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/h;->a:Lcom/zhangdan/app/activities/chart/g;

    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/g;->c(Lcom/zhangdan/app/activities/chart/g;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "NameDialog"

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/activities/chart/s;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060190

    if-ne v0, v1, :cond_0

    new-instance v2, Lcom/zhangdan/app/activities/chart/n;

    invoke-direct {v2}, Lcom/zhangdan/app/activities/chart/n;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const v0, 0x7fffffff

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/h;->a:Lcom/zhangdan/app/activities/chart/g;

    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/g;->d(Lcom/zhangdan/app/activities/chart/g;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/h;->a:Lcom/zhangdan/app/activities/chart/g;

    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/g;->d(Lcom/zhangdan/app/activities/chart/g;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    const-string v0, "first_year"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/chart/n;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/h;->a:Lcom/zhangdan/app/activities/chart/g;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/g;->e(Lcom/zhangdan/app/activities/chart/g;)Lcom/zhangdan/app/activities/chart/r;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/activities/chart/n;->a(Lcom/zhangdan/app/activities/chart/r;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/h;->a:Lcom/zhangdan/app/activities/chart/g;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/g;->c(Lcom/zhangdan/app/activities/chart/g;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "DateDialog"

    invoke-virtual {v2, v0, v1}, Lcom/zhangdan/app/activities/chart/n;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/b/c;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/c;->a()I

    move-result v5

    if-ge v5, v1, :cond_2

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/c;->a()I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_2
.end method
