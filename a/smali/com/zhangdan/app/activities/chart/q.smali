.class final Lcom/zhangdan/app/activities/chart/q;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/chart/n;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/chart/n;Landroid/content/Context;III)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/q;->a:Lcom/zhangdan/app/activities/chart/n;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object p2, p0, Lcom/zhangdan/app/activities/chart/q;->b:Landroid/content/Context;

    iput p3, p0, Lcom/zhangdan/app/activities/chart/q;->c:I

    iput p4, p0, Lcom/zhangdan/app/activities/chart/q;->d:I

    iput p5, p0, Lcom/zhangdan/app/activities/chart/q;->e:I

    sub-int v0, p3, p4

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/zhangdan/app/activities/chart/q;->f:I

    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 7

    const v6, 0x7f08019a

    const v5, 0x7f080192

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    if-ne p1, v3, :cond_2

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/q;->a:Lcom/zhangdan/app/activities/chart/n;

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcom/zhangdan/app/activities/chart/q;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v6, v1}, Lcom/zhangdan/app/activities/chart/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/q;->a:Lcom/zhangdan/app/activities/chart/n;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/zhangdan/app/activities/chart/q;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/zhangdan/app/activities/chart/q;->e:I

    sub-int/2addr v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v5, v1}, Lcom/zhangdan/app/activities/chart/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/zhangdan/app/activities/chart/q;->c:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/q;->a:Lcom/zhangdan/app/activities/chart/n;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {v1, v6, v2}, Lcom/zhangdan/app/activities/chart/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/q;->a:Lcom/zhangdan/app/activities/chart/n;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    rsub-int/lit8 v0, p2, 0xc

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v5, v2}, Lcom/zhangdan/app/activities/chart/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getChildId(II)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/q;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300a6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/activities/chart/q;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f06025d

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p4
.end method

.method public final getChildrenCount(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/zhangdan/app/activities/chart/q;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    goto :goto_0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 5

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/q;->a:Lcom/zhangdan/app/activities/chart/n;

    const v1, 0x7f08019b

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/chart/n;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/q;->a:Lcom/zhangdan/app/activities/chart/n;

    const v1, 0x7f080191

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/zhangdan/app/activities/chart/q;->c:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/activities/chart/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getGroupCount()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/chart/q;->f:I

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/q;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    const v0, 0x7f06025e

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez p1, :cond_1

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/chart/q;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f06025d

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
