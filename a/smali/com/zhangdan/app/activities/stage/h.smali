.class final Lcom/zhangdan/app/activities/stage/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/stage/f;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/stage/f;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/stage/h;->a:Lcom/zhangdan/app/activities/stage/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060039

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/h;->a:Lcom/zhangdan/app/activities/stage/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/stage/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->e()V

    :cond_0
    return-void
.end method
