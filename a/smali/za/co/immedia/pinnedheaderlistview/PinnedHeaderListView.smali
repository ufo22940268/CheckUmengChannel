.class public Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;
.super Landroid/widget/ListView;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$OnItemClickListener;,
        Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$PinnedSectionedHeaderAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

.field private mCurrentHeader:Landroid/view/View;

.field private mCurrentHeaderViewType:I

.field private mCurrentSection:I

.field private mHeaderOffset:F

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mShouldPin:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 34
    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mCurrentHeaderViewType:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mShouldPin:Z

    .line 37
    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mCurrentSection:I

    .line 41
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mCurrentHeaderViewType:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mShouldPin:Z

    .line 37
    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mCurrentSection:I

    .line 46
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mCurrentHeaderViewType:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mShouldPin:Z

    .line 37
    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mCurrentSection:I

    .line 51
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 52
    return-void
.end method

.method private ensurePinnedHeaderLayout(Landroid/view/View;)V
    .locals 7
    .parameter "header"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    invoke-virtual {p0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->getWidth()I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 132
    .local v3, widthSpec:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 133
    .local v2, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_1

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_1

    .line 134
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 138
    .local v1, heightSpec:I
    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->measure(II)V

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 140
    .local v0, height:I
    invoke-virtual {p0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->getWidth()I

    move-result v4

    invoke-virtual {p1, v5, v5, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 142
    .end local v0           #height:I
    .end local v1           #heightSpec:I
    .end local v2           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #widthSpec:I
    :cond_0
    return-void

    .line 136
    .restart local v2       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v3       #widthSpec:I
    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1       #heightSpec:I
    goto :goto_0
.end method

.method private getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter "section"
    .parameter "oldView"

    .prologue
    .line 117
    iget v2, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mCurrentSection:I

    if-ne p1, v2, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 119
    .local v0, shouldLayout:Z
    :goto_0
    iget-object v2, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mAdapter:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    invoke-interface {v2, p1, p2, p0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$PinnedSectionedHeaderAdapter;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, view:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 122
    invoke-direct {p0, v1}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->ensurePinnedHeaderLayout(Landroid/view/View;)V

    .line 123
    iput p1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mCurrentSection:I

    .line 125
    :cond_1
    return-object v1

    .line 117
    .end local v0           #shouldLayout:Z
    .end local v1           #view:Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 147
    iget-object v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mAdapter:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mShouldPin:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    if-nez v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 149
    .local v0, saveCount:I
    const/4 v1, 0x0

    iget v2, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mHeaderOffset:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 150
    invoke-virtual {p0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 154
    iget-object v1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 155
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 10
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 66
    iget-object v7, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v7, :cond_0

    .line 67
    iget-object v7, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v7, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 70
    :cond_0
    iget-object v7, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mAdapter:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mAdapter:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    invoke-interface {v7}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$PinnedSectionedHeaderAdapter;->getCount()I

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mShouldPin:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v7

    if-ge p2, v7, :cond_3

    .line 71
    :cond_1
    iput-object v6, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    .line 72
    iput v8, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mHeaderOffset:F

    .line 73
    move v2, p2

    .local v2, i:I
    :goto_0
    add-int v6, p2, p3

    if-ge v2, v6, :cond_8

    .line 74
    invoke-virtual {p0, v2}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, header:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0           #header:Landroid/view/View;
    .end local v2           #i:I
    :cond_3
    invoke-virtual {p0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v7

    sub-int/2addr p2, v7

    .line 84
    iget-object v7, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mAdapter:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    invoke-interface {v7, p2}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$PinnedSectionedHeaderAdapter;->getSectionForPosition(I)I

    move-result v4

    .line 85
    .local v4, section:I
    iget-object v7, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mAdapter:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    invoke-interface {v7, v4}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$PinnedSectionedHeaderAdapter;->getSectionHeaderViewType(I)I

    move-result v5

    .line 86
    .local v5, viewType:I
    iget v7, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mCurrentHeaderViewType:I

    if-eq v7, v5, :cond_5

    :goto_1
    invoke-direct {p0, v4, v6}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    .line 87
    iget-object v6, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    invoke-direct {p0, v6}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->ensurePinnedHeaderLayout(Landroid/view/View;)V

    .line 88
    iput v5, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mCurrentHeaderViewType:I

    .line 90
    iput v8, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mHeaderOffset:F

    .line 92
    move v2, p2

    .restart local v2       #i:I
    :goto_2
    add-int v6, p2, p3

    if-ge v2, v6, :cond_7

    .line 93
    iget-object v6, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mAdapter:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    invoke-interface {v6, v2}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$PinnedSectionedHeaderAdapter;->isSectionHeader(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 94
    sub-int v6, v2, p2

    invoke-virtual {p0, v6}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 95
    .restart local v0       #header:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v1, v6

    .line 96
    .local v1, headerTop:F
    iget-object v6, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v3, v6

    .line 97
    .local v3, pinnedHeaderHeight:F
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 98
    cmpl-float v6, v3, v1

    if-ltz v6, :cond_6

    cmpl-float v6, v1, v8

    if-lez v6, :cond_6

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v1, v6

    iput v6, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mHeaderOffset:F

    .line 92
    .end local v0           #header:Landroid/view/View;
    .end local v1           #headerTop:F
    .end local v3           #pinnedHeaderHeight:F
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 86
    .end local v2           #i:I
    :cond_5
    iget-object v6, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    goto :goto_1

    .line 100
    .restart local v0       #header:Landroid/view/View;
    .restart local v1       #headerTop:F
    .restart local v2       #i:I
    .restart local v3       #pinnedHeaderHeight:F
    :cond_6
    cmpg-float v6, v1, v8

    if-gtz v6, :cond_4

    .line 101
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 106
    .end local v0           #header:Landroid/view/View;
    .end local v1           #headerTop:F
    .end local v3           #pinnedHeaderHeight:F
    :cond_7
    invoke-virtual {p0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->invalidate()V

    .line 107
    .end local v4           #section:I
    .end local v5           #viewType:I
    :cond_8
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 111
    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 114
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 60
    move-object v0, p1

    check-cast v0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    iput-object v0, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mAdapter:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    .line 61
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    return-void
.end method

.method public setOnItemClickListener(Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 165
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 160
    iput-object p1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 161
    return-void
.end method

.method public setPinHeaders(Z)V
    .locals 0
    .parameter "shouldPin"

    .prologue
    .line 55
    iput-boolean p1, p0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->mShouldPin:Z

    .line 56
    return-void
.end method
