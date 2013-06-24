.class public abstract Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$OnItemClickListener;
.super Ljava/lang/Object;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnItemClickListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IIJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IIJ)V"
        }
    .end annotation
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "rawPosition"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v8

    check-cast v8, Landroid/widget/HeaderViewListAdapter;

    .line 173
    .local v8, wrapperAdapter:Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v8}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;

    .line 177
    .end local v8           #wrapperAdapter:Landroid/widget/HeaderViewListAdapter;
    .local v7, adapter:Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;
    :goto_0
    invoke-virtual {v7, p3}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v3

    .line 178
    .local v3, section:I
    invoke-virtual {v7, p3}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;->getPositionInSectionForPosition(I)I

    move-result v4

    .line 180
    .local v4, position:I
    const/4 v0, -0x1

    if-ne v4, v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 181
    invoke-virtual/range {v0 .. v5}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$OnItemClickListener;->onSectionClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 185
    .end local v4           #position:I
    :goto_1
    return-void

    .line 175
    .end local v3           #section:I
    .end local v7           #adapter:Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v7

    check-cast v7, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;

    .restart local v7       #adapter:Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;
    goto :goto_0

    .restart local v3       #section:I
    .restart local v4       #position:I
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p4

    .line 183
    invoke-virtual/range {v0 .. v6}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IIJ)V

    goto :goto_1
.end method

.method public abstract onSectionClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method
