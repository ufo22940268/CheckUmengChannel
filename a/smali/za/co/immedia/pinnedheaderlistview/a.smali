.class public abstract Lza/co/immedia/pinnedheaderlistview/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public abstract a(Landroid/view/View;II)V
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lza/co/immedia/pinnedheaderlistview/c;

    :goto_0
    invoke-virtual {v0, p3}, Lza/co/immedia/pinnedheaderlistview/c;->d(I)I

    move-result v1

    invoke-virtual {v0, p3}, Lza/co/immedia/pinnedheaderlistview/c;->e(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Lza/co/immedia/pinnedheaderlistview/a;->a(I)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lza/co/immedia/pinnedheaderlistview/c;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, v1, v0}, Lza/co/immedia/pinnedheaderlistview/a;->a(Landroid/view/View;II)V

    goto :goto_1
.end method
