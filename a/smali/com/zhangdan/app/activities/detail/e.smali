.class final Lcom/zhangdan/app/activities/detail/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/e;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/e;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/e;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/app/activities/detail/k;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/e;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {v1, v2}, Lcom/zhangdan/app/activities/detail/k;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/e;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v4}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->d(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/data/model/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/detail/k;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    return-void
.end method
