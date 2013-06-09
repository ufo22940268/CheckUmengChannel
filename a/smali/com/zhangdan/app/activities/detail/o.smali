.class final Lcom/zhangdan/app/activities/detail/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/o;->a:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/o;->a:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-static {v0, p3}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->a(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/o;->a:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->a(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/o;->a:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->b(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/o;->a:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->a(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/o;->a:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->a(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)I

    move-result v0

    if-eq v0, p3, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/o;->a:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->b(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/o;->a:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->a(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/o;->a:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->b(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/o;->a:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-static {v0, p3}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->b(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/o;->a:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->b(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->setSelection(I)V

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/o;->a:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->a(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)I

    move-result v0

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/o;->a:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->b(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/o;->a:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->b(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/o;->a:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->b(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/o;->a:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->b(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0
.end method
