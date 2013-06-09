.class final Lcom/zhangdan/app/activities/chart/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/chart/k;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/chart/k;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/l;->a:Lcom/zhangdan/app/activities/chart/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06018c

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/zhangdan/app/activities/chart/s;

    invoke-direct {v0}, Lcom/zhangdan/app/activities/chart/s;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "names"

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/l;->a:Lcom/zhangdan/app/activities/chart/k;

    invoke-static {v3}, Lcom/zhangdan/app/activities/chart/k;->a(Lcom/zhangdan/app/activities/chart/k;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/chart/s;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/l;->a:Lcom/zhangdan/app/activities/chart/k;

    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/k;->b(Lcom/zhangdan/app/activities/chart/k;)Lcom/zhangdan/app/activities/chart/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/chart/s;->a(Lcom/zhangdan/app/activities/chart/u;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/l;->a:Lcom/zhangdan/app/activities/chart/k;

    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/k;->c(Lcom/zhangdan/app/activities/chart/k;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "NameDialog"

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/activities/chart/s;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
