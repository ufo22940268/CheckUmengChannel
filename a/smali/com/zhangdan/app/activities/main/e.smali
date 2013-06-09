.class final Lcom/zhangdan/app/activities/main/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/main/a;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f060039

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->e()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f060048

    if-ne v1, v2, :cond_4

    const-string v1, "ab_main_page"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/a;->n(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    new-instance v2, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-direct {v2, v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/main/a;->a(Lcom/zhangdan/app/activities/main/a;Lcom/zhangdan/app/popmenu/ZdListPopupWindow;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/a;->n(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/app/activities/main/a/f;

    invoke-direct {v2, v0}, Lcom/zhangdan/app/activities/main/a/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/a;->n(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/a;->n(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070053

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setContentWidth(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->n(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/a;->o(Lcom/zhangdan/app/activities/main/a;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->n(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->show()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f060049

    if-ne v1, v2, :cond_6

    const-string v1, "ab_import"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/a;->p(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    new-instance v2, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-direct {v2, v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/main/a;->b(Lcom/zhangdan/app/activities/main/a;Lcom/zhangdan/app/popmenu/ZdListPopupWindow;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/a;->p(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/app/activities/main/a/e;

    invoke-direct {v2, v0}, Lcom/zhangdan/app/activities/main/a/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/a;->p(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/a;->p(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070054

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setContentWidth(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->p(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/a;->q(Lcom/zhangdan/app/activities/main/a;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->p(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->show()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06004b

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "ab_refresh"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/e;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/a;->e()V

    goto/16 :goto_0
.end method
