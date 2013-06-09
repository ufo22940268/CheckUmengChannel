.class public abstract Lza/co/immedia/pinnedheaderlistview/c;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Lza/co/immedia/pinnedheaderlistview/b;


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private c:Landroid/util/SparseArray;

.field private d:Landroid/util/SparseArray;

.field private e:Landroid/util/SparseArray;

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lza/co/immedia/pinnedheaderlistview/c;->a:I

    sput v0, Lza/co/immedia/pinnedheaderlistview/c;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lza/co/immedia/pinnedheaderlistview/c;->d:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lza/co/immedia/pinnedheaderlistview/c;->c:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lza/co/immedia/pinnedheaderlistview/c;->e:Landroid/util/SparseArray;

    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/c;->f:I

    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/c;->g:I

    return-void
.end method

.method private b()I
    .locals 1

    iget v0, p0, Lza/co/immedia/pinnedheaderlistview/c;->g:I

    if-ltz v0, :cond_0

    iget v0, p0, Lza/co/immedia/pinnedheaderlistview/c;->g:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lza/co/immedia/pinnedheaderlistview/c;->a()I

    move-result v0

    iput v0, p0, Lza/co/immedia/pinnedheaderlistview/c;->g:I

    iget v0, p0, Lza/co/immedia/pinnedheaderlistview/c;->g:I

    goto :goto_0
.end method

.method private b(I)I
    .locals 3

    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/c;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/c;->a(I)I

    move-result v0

    iget-object v1, p0, Lza/co/immedia/pinnedheaderlistview/c;->e:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(I)I
.end method

.method public abstract a(IILandroid/view/View;)Landroid/view/View;
.end method

.method public abstract a(ILandroid/view/View;)Landroid/view/View;
.end method

.method public abstract a(II)Ljava/lang/Object;
.end method

.method public final c()I
    .locals 1

    sget v0, Lza/co/immedia/pinnedheaderlistview/c;->a:I

    return v0
.end method

.method public final c(I)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/c;->b()I

    move-result v3

    if-lt v0, v3, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    if-lt p1, v2, :cond_0

    invoke-direct {p0, v0}, Lza/co/immedia/pinnedheaderlistview/c;->b(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final d(I)I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    move v2, v1

    :goto_1
    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/c;->b()I

    move-result v3

    if-lt v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lza/co/immedia/pinnedheaderlistview/c;->b(I)I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    if-lt p1, v2, :cond_2

    if-ge p1, v3, :cond_2

    iget-object v1, p0, Lza/co/immedia/pinnedheaderlistview/c;->d:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1
.end method

.method public final e(I)I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/c;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    move v2, v1

    :goto_1
    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/c;->b()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-direct {p0, v0}, Lza/co/immedia/pinnedheaderlistview/c;->b(I)I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    if-lt p1, v2, :cond_2

    if-ge p1, v3, :cond_2

    sub-int v0, p1, v2

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/c;->c:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1
.end method

.method public final getCount()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lza/co/immedia/pinnedheaderlistview/c;->f:I

    if-ltz v1, :cond_0

    iget v1, p0, Lza/co/immedia/pinnedheaderlistview/c;->f:I

    :goto_0
    return v1

    :cond_0
    move v1, v0

    :goto_1
    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/c;->b()I

    move-result v2

    if-lt v0, v2, :cond_1

    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/c;->f:I

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lza/co/immedia/pinnedheaderlistview/c;->b(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/c;->d(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/c;->e(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lza/co/immedia/pinnedheaderlistview/c;->a(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/c;->d(I)I

    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/c;->e(I)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/c;->d(I)I

    sget v0, Lza/co/immedia/pinnedheaderlistview/c;->a:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/c;->d(I)I

    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/c;->e(I)I

    sget v0, Lza/co/immedia/pinnedheaderlistview/c;->b:I

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/c;->d(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lza/co/immedia/pinnedheaderlistview/c;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/c;->d(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lza/co/immedia/pinnedheaderlistview/c;->e(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lza/co/immedia/pinnedheaderlistview/c;->a(IILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/c;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/c;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/c;->f:I

    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/c;->g:I

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/c;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lza/co/immedia/pinnedheaderlistview/c;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/c;->f:I

    iput v1, p0, Lza/co/immedia/pinnedheaderlistview/c;->g:I

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
