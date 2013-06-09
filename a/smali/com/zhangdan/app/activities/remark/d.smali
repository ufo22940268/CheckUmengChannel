.class final Lcom/zhangdan/app/activities/remark/d;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/remark/BillRemarkActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/d;->a:Lcom/zhangdan/app/activities/remark/BillRemarkActivity;

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/b/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/d;->a:Lcom/zhangdan/app/activities/remark/BillRemarkActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->b(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)Lcom/zhangdan/app/activities/remark/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/d;->a:Lcom/zhangdan/app/activities/remark/BillRemarkActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->b(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)Lcom/zhangdan/app/activities/remark/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/app/activities/remark/k;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
