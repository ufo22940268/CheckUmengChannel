.class final Lcom/zhangdan/app/activities/newimport/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/newimport/j;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/j;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/k;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/k;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/j;->a(Lcom/zhangdan/app/activities/newimport/j;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/k;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/j;->a(Lcom/zhangdan/app/activities/newimport/j;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/k;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/j;->a(Lcom/zhangdan/app/activities/newimport/j;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/l;

    new-instance v1, Lcom/zhangdan/app/widget/a;

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/k;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/j;->b(Lcom/zhangdan/app/activities/newimport/j;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zhangdan/app/widget/a;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/k;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/j;->b(Lcom/zhangdan/app/activities/newimport/j;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-result-object v2

    const v3, 0x7f08012a

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0021

    invoke-virtual {v1, v2, v3}, Lcom/zhangdan/app/widget/a;->a(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/k;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/j;->b(Lcom/zhangdan/app/activities/newimport/j;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-result-object v2

    const v3, 0x7f08001f

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/k;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-static {v3}, Lcom/zhangdan/app/activities/newimport/j;->b(Lcom/zhangdan/app/activities/newimport/j;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-result-object v3

    const v4, 0x7f080020

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zhangdan/app/activities/newimport/l;

    invoke-direct {v4, p0, v1, v0}, Lcom/zhangdan/app/activities/newimport/l;-><init>(Lcom/zhangdan/app/activities/newimport/k;Lcom/zhangdan/app/widget/a;Lcom/zhangdan/app/data/model/l;)V

    new-instance v0, Lcom/zhangdan/app/activities/newimport/m;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/app/activities/newimport/m;-><init>(Lcom/zhangdan/app/activities/newimport/k;Lcom/zhangdan/app/widget/a;)V

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/zhangdan/app/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/widget/a;->show()V

    :cond_0
    return-void
.end method
