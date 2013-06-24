.class public abstract Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "SectionedBaseAdapter.java"

# interfaces
.implements Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$PinnedSectionedHeaderAdapter;


# static fields
.field private static HEADER_VIEW_TYPE:I

.field private static ITEM_VIEW_TYPE:I


# instance fields
.field private mCount:I

.field private mSectionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionCount:I

.field private mSectionCountCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionPositionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput v0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->HEADER_VIEW_TYPE:I

    .line 12
    sput v0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->ITEM_VIEW_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionCache:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionPositionCache:Landroid/util/SparseArray;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionCountCache:Landroid/util/SparseArray;

    .line 41
    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mCount:I

    .line 42
    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionCount:I

    .line 43
    return-void
.end method

.method private internalGetCountForSection(I)I
    .locals 4
    .parameter "section"

    .prologue
    .line 191
    iget-object v2, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionCountCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 192
    .local v0, cachedSectionCount:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 197
    :goto_0
    return v1

    .line 195
    :cond_0
    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getCountForSection(I)I

    move-result v1

    .line 196
    .local v1, sectionCount:I
    iget-object v2, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionCountCache:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private internalGetSectionCount()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionCount:I

    if-ltz v0, :cond_0

    .line 202
    iget v0, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionCount:I

    .line 205
    :goto_0
    return v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getSectionCount()I

    move-result v0

    iput v0, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionCount:I

    .line 205
    iget v0, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionCount:I

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 3

    .prologue
    .line 67
    iget v2, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mCount:I

    if-ltz v2, :cond_0

    .line 68
    iget v0, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mCount:I

    .line 76
    :goto_0
    return v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 71
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->internalGetSectionCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 72
    invoke-direct {p0, v1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->internalGetCountForSection(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 75
    :cond_1
    iput v0, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mCount:I

    goto :goto_0
.end method

.method public abstract getCountForSection(I)I
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getItem(II)Ljava/lang/Object;
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getItemId(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getItemId(II)J
.end method

.method public abstract getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->isSectionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getItemViewTypeCount()I

    move-result v0

    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getSectionHeaderViewType(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getItemViewType(II)I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(II)I
    .locals 1
    .parameter "section"
    .parameter "position"

    .prologue
    .line 163
    sget v0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->ITEM_VIEW_TYPE:I

    return v0
.end method

.method public getItemViewTypeCount()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public getPositionInSectionForPosition(I)I
    .locals 8
    .parameter "position"

    .prologue
    .line 131
    iget-object v6, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionPositionCache:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 132
    .local v0, cachedPosition:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 146
    :goto_0
    return v2

    .line 135
    :cond_0
    const/4 v5, 0x0

    .line 136
    .local v5, sectionStart:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->internalGetSectionCount()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 137
    invoke-direct {p0, v1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->internalGetCountForSection(I)I

    move-result v3

    .line 138
    .local v3, sectionCount:I
    add-int v6, v5, v3

    add-int/lit8 v4, v6, 0x1

    .line 139
    .local v4, sectionEnd:I
    if-lt p1, v5, :cond_1

    if-ge p1, v4, :cond_1

    .line 140
    sub-int v6, p1, v5

    add-int/lit8 v2, v6, -0x1

    .line 141
    .local v2, positionInSection:I
    iget-object v6, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionPositionCache:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 144
    .end local v2           #positionInSection:I
    :cond_1
    move v5, v4

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    .end local v3           #sectionCount:I
    .end local v4           #sectionEnd:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract getSectionCount()I
.end method

.method public final getSectionForPosition(I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 112
    iget-object v5, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionCache:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 113
    .local v0, cachedSection:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 126
    :goto_0
    return v1

    .line 116
    :cond_0
    const/4 v4, 0x0

    .line 117
    .local v4, sectionStart:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->internalGetSectionCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 118
    invoke-direct {p0, v1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->internalGetCountForSection(I)I

    move-result v2

    .line 119
    .local v2, sectionCount:I
    add-int v5, v4, v2

    add-int/lit8 v3, v5, 0x1

    .line 120
    .local v3, sectionEnd:I
    if-lt p1, v4, :cond_1

    if-ge p1, v3, :cond_1

    .line 121
    iget-object v5, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionCache:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 124
    :cond_1
    move v4, v3

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 126
    .end local v2           #sectionCount:I
    .end local v3           #sectionEnd:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getSectionHeaderViewType(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 171
    sget v0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->HEADER_VIEW_TYPE:I

    return v0
.end method

.method public getSectionHeaderViewTypeCount()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->isSectionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getItemViewTypeCount()I

    move-result v0

    invoke-virtual {p0}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getSectionHeaderViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isSectionHeader(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, sectionStart:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->internalGetSectionCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 152
    if-ne p1, v1, :cond_1

    .line 153
    const/4 v2, 0x1

    .line 159
    :cond_0
    return v2

    .line 154
    :cond_1
    if-lt p1, v1, :cond_0

    .line 157
    invoke-direct {p0, v0}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->internalGetCountForSection(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 47
    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 48
    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionPositionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 49
    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionCountCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 50
    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mCount:I

    .line 51
    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionCount:I

    .line 52
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 53
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 57
    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 58
    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionPositionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 59
    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionCountCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 60
    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mCount:I

    .line 61
    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->mSectionCount:I

    .line 62
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 63
    return-void
.end method
