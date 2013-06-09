.class public Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Landroid/widget/AbsListView$OnScrollListener;

.field private b:Lza/co/immedia/pinnedheaderlistview/b;

.field private c:Landroid/view/View;

.field private d:I

.field private e:F

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->f:Z

    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->g:I

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->f:Z

    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->g:I

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->f:Z

    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->g:I

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    const/high16 v4, 0x4000

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->getWidth()I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->getWidth()I

    move-result v1

    invoke-virtual {p1, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void

    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->b:Lza/co/immedia/pinnedheaderlistview/b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->c:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->e:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    iget-object v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->b:Lza/co/immedia/pinnedheaderlistview/b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->b:Lza/co/immedia/pinnedheaderlistview/b;

    invoke-interface {v1}, Lza/co/immedia/pinnedheaderlistview/b;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->f:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v1

    if-ge p2, v1, :cond_4

    :cond_1
    iput-object v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->c:Landroid/view/View;

    iput v7, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->e:F

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-lt v0, v1, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v3, p2, v1

    iget-object v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->b:Lza/co/immedia/pinnedheaderlistview/b;

    invoke-interface {v1, v3}, Lza/co/immedia/pinnedheaderlistview/b;->d(I)I

    move-result v4

    iget-object v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->b:Lza/co/immedia/pinnedheaderlistview/b;

    invoke-interface {v1}, Lza/co/immedia/pinnedheaderlistview/b;->c()I

    move-result v5

    iget v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->d:I

    if-eq v1, v5, :cond_6

    :goto_2
    iget v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->g:I

    if-ne v4, v1, :cond_7

    if-eqz v0, :cond_7

    move v1, v2

    :goto_3
    iget-object v6, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->b:Lza/co/immedia/pinnedheaderlistview/b;

    invoke-interface {v6, v4, v0}, Lza/co/immedia/pinnedheaderlistview/b;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->a(Landroid/view/View;)V

    iput v4, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->g:I

    :cond_5
    iput-object v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->c:Landroid/view/View;

    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-direct {p0, v0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->a(Landroid/view/View;)V

    iput v5, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->d:I

    iput v7, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->e:F

    move v0, v3

    :goto_4
    add-int v1, v3, p3

    if-lt v0, v1, :cond_8

    invoke-virtual {p0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->invalidate()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->c:Landroid/view/View;

    goto :goto_2

    :cond_7
    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->b:Lza/co/immedia/pinnedheaderlistview/b;

    invoke-interface {v1, v0}, Lza/co/immedia/pinnedheaderlistview/b;->c(I)Z

    move-result v1

    if-eqz v1, :cond_9

    sub-int v1, v0, v3

    invoke-virtual {p0, v1}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    cmpl-float v5, v5, v4

    if-ltz v5, :cond_a

    cmpl-float v5, v4, v7

    if-lez v5, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v4, v1

    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->e:F

    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    cmpg-float v4, v4, v7

    if-gtz v4, :cond_9

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lza/co/immedia/pinnedheaderlistview/b;

    iput-object v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->b:Lza/co/immedia/pinnedheaderlistview/b;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method
