.class final Lcom/zhangdan/app/activities/remark/f;
.super Landroid/widget/BaseExpandableListAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/remark/CategoryActivity;Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/f;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/zhangdan/app/activities/remark/f;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    const v0, 0x7f060256

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060257

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060258

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f060254

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f060259

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/remark/f;->getChildrenCount(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f060256

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f060257

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f060258

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/remark/f;->getGroup(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/activities/remark/g;

    if-nez v3, :cond_3

    :goto_2
    return-object p4

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/zhangdan/app/activities/remark/g;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v3, 0x3

    new-array v6, v3, [Lcom/zhangdan/app/data/model/http/p;

    mul-int/lit8 v7, p2, 0x3

    if-ge v7, v5, :cond_4

    const/4 v8, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/data/model/http/p;

    aput-object v3, v6, v8

    :cond_4
    add-int/lit8 v3, v7, 0x1

    if-ge v3, v5, :cond_5

    const/4 v8, 0x1

    add-int/lit8 v3, v7, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/data/model/http/p;

    aput-object v3, v6, v8

    :cond_5
    add-int/lit8 v3, v7, 0x2

    if-ge v3, v5, :cond_6

    const/4 v5, 0x2

    add-int/lit8 v3, v7, 0x2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/data/model/http/p;

    aput-object v3, v6, v5

    :cond_6
    const/4 v3, 0x0

    aget-object v3, v6, v3

    if-nez v3, :cond_7

    const/16 v3, 0x8

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v3, 0x1

    aget-object v3, v6, v3

    if-nez v3, :cond_8

    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v3, 0x2

    aget-object v3, v6, v3

    if-nez v3, :cond_9

    const/16 v3, 0x8

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v3, 0x0

    aget-object v3, v6, v3

    if-nez v3, :cond_a

    const-string v3, ""

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    aget-object v3, v6, v3

    if-nez v3, :cond_b

    const-string v3, ""

    :goto_7
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x2

    aget-object v3, v6, v3

    if-nez v3, :cond_c

    const-string v3, ""

    :goto_8
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    aget-object v0, v6, v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/p;->c()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_b
    const/4 v3, 0x1

    aget-object v3, v6, v3

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/p;->c()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_c
    const/4 v3, 0x2

    aget-object v3, v6, v3

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/p;->c()Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method

.method public final getChildrenCount(I)I
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/remark/g;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/g;->b()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/g;->b()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-lez v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getGroupId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/remark/f;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/remark/g;

    if-nez v0, :cond_1

    :goto_0
    return-object p3

    :cond_1
    const v1, 0x7f06025a

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f06025b

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f06025c

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/g;->g()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/g;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/p;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "custom_category_id"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/p;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "category_name"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/p;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->finish()V

    goto :goto_0
.end method

.method public final onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->b(Lcom/zhangdan/app/activities/remark/CategoryActivity;)I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->a(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->a(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->b(Lcom/zhangdan/app/activities/remark/CategoryActivity;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->b(Lcom/zhangdan/app/activities/remark/CategoryActivity;)I

    move-result v0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/f;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->a(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/f;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->b(Lcom/zhangdan/app/activities/remark/CategoryActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-static {v0, p3}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->a(Lcom/zhangdan/app/activities/remark/CategoryActivity;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->a(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/f;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->b(Lcom/zhangdan/app/activities/remark/CategoryActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/f;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->a(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->setSelection(I)V

    goto :goto_0
.end method
