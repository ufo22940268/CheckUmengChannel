.class final Lcom/zhangdan/app/activities/chart/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/bb;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/chart/b;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/chart/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/c;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    const v1, 0x7f080197

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/c;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/c;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    packed-switch p1, :pswitch_data_0

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->c()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->a(I)V

    :goto_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/c;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/b;->a(Lcom/zhangdan/app/activities/chart/b;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/c;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/b;->a(Lcom/zhangdan/app/activities/chart/b;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f06003a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->c()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->a(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/c;->a:Lcom/zhangdan/app/activities/chart/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/zhangdan/app/activities/chart/b;->a(Lcom/zhangdan/app/activities/chart/b;I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->c()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->a(I)V

    const v0, 0x7f080198

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/c;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/chart/b;->a(Lcom/zhangdan/app/activities/chart/b;I)V

    move v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(IF)V
    .locals 0

    return-void
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method
