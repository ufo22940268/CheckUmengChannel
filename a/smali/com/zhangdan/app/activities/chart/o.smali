.class final Lcom/zhangdan/app/activities/chart/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/chart/n;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/chart/n;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/o;->a:Lcom/zhangdan/app/activities/chart/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/o;->a:Lcom/zhangdan/app/activities/chart/n;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/n;->a(Lcom/zhangdan/app/activities/chart/n;)Lcom/zhangdan/app/activities/chart/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/o;->a:Lcom/zhangdan/app/activities/chart/n;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/n;->a(Lcom/zhangdan/app/activities/chart/n;)Lcom/zhangdan/app/activities/chart/r;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/zhangdan/app/activities/chart/r;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/o;->a:Lcom/zhangdan/app/activities/chart/n;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/n;->dismiss()V

    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/o;->a:Lcom/zhangdan/app/activities/chart/n;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/n;->b(Lcom/zhangdan/app/activities/chart/n;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/o;->a:Lcom/zhangdan/app/activities/chart/n;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/n;->b(Lcom/zhangdan/app/activities/chart/n;)I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/o;->a:Lcom/zhangdan/app/activities/chart/n;

    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/n;->c(Lcom/zhangdan/app/activities/chart/n;)Lcom/zhangdan/app/activities/chart/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/chart/q;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/o;->a:Lcom/zhangdan/app/activities/chart/n;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/n;->b(Lcom/zhangdan/app/activities/chart/n;)I

    move-result v0

    if-ne v0, p3, :cond_2

    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/o;->a:Lcom/zhangdan/app/activities/chart/n;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/chart/n;->a(Lcom/zhangdan/app/activities/chart/n;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/o;->a:Lcom/zhangdan/app/activities/chart/n;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/n;->b(Lcom/zhangdan/app/activities/chart/n;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/o;->a:Lcom/zhangdan/app/activities/chart/n;

    invoke-static {v0, p3}, Lcom/zhangdan/app/activities/chart/n;->a(Lcom/zhangdan/app/activities/chart/n;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/o;->a:Lcom/zhangdan/app/activities/chart/n;

    invoke-static {v0, p3}, Lcom/zhangdan/app/activities/chart/n;->a(Lcom/zhangdan/app/activities/chart/n;I)V

    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0
.end method
