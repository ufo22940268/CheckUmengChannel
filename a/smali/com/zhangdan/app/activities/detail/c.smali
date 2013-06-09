.class final Lcom/zhangdan/app/activities/detail/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/c;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/c;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/c;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/c;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->d(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/data/model/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/data/model/j;->d(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/c;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/c;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->d(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/data/model/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/a/j;->a(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/c;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->g(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    return-void
.end method
