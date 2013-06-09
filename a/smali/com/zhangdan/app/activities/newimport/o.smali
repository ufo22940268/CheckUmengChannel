.class final Lcom/zhangdan/app/activities/newimport/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/newimport/n;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/n;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/o;->a:Lcom/zhangdan/app/activities/newimport/n;

    iput-object p2, p0, Lcom/zhangdan/app/activities/newimport/o;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/o;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/o;->a:Lcom/zhangdan/app/activities/newimport/n;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/n;->a(Lcom/zhangdan/app/activities/newimport/n;)Lcom/zhangdan/app/activities/newimport/j;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/j;->a(Lcom/zhangdan/app/activities/newimport/j;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/o;->a:Lcom/zhangdan/app/activities/newimport/n;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/n;->a(Lcom/zhangdan/app/activities/newimport/n;)Lcom/zhangdan/app/activities/newimport/j;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/j;->a(Lcom/zhangdan/app/activities/newimport/j;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/o;->a:Lcom/zhangdan/app/activities/newimport/n;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/n;->a(Lcom/zhangdan/app/activities/newimport/n;)Lcom/zhangdan/app/activities/newimport/j;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/j;->a(Lcom/zhangdan/app/activities/newimport/j;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/l;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/zhangdan/app/activities/newimport/q;

    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/o;->a:Lcom/zhangdan/app/activities/newimport/n;

    invoke-static {v3}, Lcom/zhangdan/app/activities/newimport/n;->a(Lcom/zhangdan/app/activities/newimport/n;)Lcom/zhangdan/app/activities/newimport/j;

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/app/activities/newimport/j;->b(Lcom/zhangdan/app/activities/newimport/j;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zhangdan/app/activities/newimport/q;-><init>(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/o;->a:Lcom/zhangdan/app/activities/newimport/n;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/n;->a(Lcom/zhangdan/app/activities/newimport/n;)Lcom/zhangdan/app/activities/newimport/j;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/j;->b(Lcom/zhangdan/app/activities/newimport/j;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->a(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/newimport/q;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    :cond_0
    return-void
.end method
