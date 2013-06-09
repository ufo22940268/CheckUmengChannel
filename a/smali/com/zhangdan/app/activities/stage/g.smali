.class final Lcom/zhangdan/app/activities/stage/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/stage/f;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/stage/f;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/stage/g;->a:Lcom/zhangdan/app/activities/stage/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/g;->a:Lcom/zhangdan/app/activities/stage/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/stage/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/g;->a:Lcom/zhangdan/app/activities/stage/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/stage/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->c()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->a(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->c()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->a(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
