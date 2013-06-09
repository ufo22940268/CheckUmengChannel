.class final Lcom/zhangdan/app/activities/main/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/main/a;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/f;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/f;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/f;->a:Lcom/zhangdan/app/activities/main/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/f;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->n(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->a(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V

    if-ne p3, v2, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/f;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "menu_switch_list_mode"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/f;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->r(Lcom/zhangdan/app/activities/main/a;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/f;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->s(Lcom/zhangdan/app/activities/main/a;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/f;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/a/b;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/f;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "menu_switch_list_mode_detail"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/f;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->r(Lcom/zhangdan/app/activities/main/a;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/f;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->t(Lcom/zhangdan/app/activities/main/a;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/f;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/zhangdan/app/data/a/b;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p3, v0, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/f;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "menu_free_interest"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/f;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->m(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/zhangdan/app/activities/main/b/a;

    invoke-direct {v0}, Lcom/zhangdan/app/activities/main/b/a;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lcom/zhangdan/app/activities/main/c/a;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/f;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/zhangdan/app/activities/main/c/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/c/a;->show()V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/f;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "menu_sigma"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/f;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->m(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/app/activities/main/c/d;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/f;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zhangdan/app/activities/main/c/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/c/d;->show()V

    goto/16 :goto_0
.end method
