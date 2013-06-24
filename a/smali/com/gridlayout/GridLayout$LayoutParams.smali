.class public Lcom/gridlayout/GridLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gridlayout/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final BOTTOM_MARGIN:I = 0x4

.field private static final COLUMN:I = 0x1

.field private static final COLUMN_SPAN:I = 0x4

.field private static final DEFAULT_COLUMN:I = -0x80000000

.field private static final DEFAULT_HEIGHT:I = -0x2

.field private static final DEFAULT_MARGIN:I = -0x80000000

.field private static final DEFAULT_ROW:I = -0x80000000

.field private static final DEFAULT_SPAN:Lcom/gridlayout/GridLayout$Interval; = null

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_SPAN_SIZE:I = 0x0

.field private static final DEFAULT_WIDTH:I = -0x2

.field private static final GRAVITY:I = 0x0

.field private static final LEFT_MARGIN:I = 0x1

.field private static final MARGIN:I = 0x0

.field private static final RIGHT_MARGIN:I = 0x3

.field private static final ROW:I = 0x2

.field private static final ROW_SPAN:I = 0x3

.field private static final TOP_MARGIN:I = 0x2


# instance fields
.field public columnSpec:Lcom/gridlayout/GridLayout$Spec;

.field public rowSpec:Lcom/gridlayout/GridLayout$Spec;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1614
    new-instance v0, Lcom/gridlayout/GridLayout$Interval;

    const/high16 v1, -0x8000

    const v2, -0x7fffffff

    invoke-direct {v0, v1, v2}, Lcom/gridlayout/GridLayout$Interval;-><init>(II)V

    sput-object v0, Lcom/gridlayout/GridLayout$LayoutParams;->DEFAULT_SPAN:Lcom/gridlayout/GridLayout$Interval;

    .line 1615
    sget-object v0, Lcom/gridlayout/GridLayout$LayoutParams;->DEFAULT_SPAN:Lcom/gridlayout/GridLayout$Interval;

    invoke-virtual {v0}, Lcom/gridlayout/GridLayout$Interval;->size()I

    move-result v0

    sput v0, Lcom/gridlayout/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1679
    sget-object v0, Lcom/gridlayout/GridLayout$Spec;->UNDEFINED:Lcom/gridlayout/GridLayout$Spec;

    sget-object v1, Lcom/gridlayout/GridLayout$Spec;->UNDEFINED:Lcom/gridlayout/GridLayout$Spec;

    invoke-direct {p0, v0, v1}, Lcom/gridlayout/GridLayout$LayoutParams;-><init>(Lcom/gridlayout/GridLayout$Spec;Lcom/gridlayout/GridLayout$Spec;)V

    .line 1680
    return-void
.end method

.method private constructor <init>(IIIIIILcom/gridlayout/GridLayout$Spec;Lcom/gridlayout/GridLayout$Spec;)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "rowSpec"
    .parameter "columnSpec"

    .prologue
    .line 1655
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1641
    sget-object v0, Lcom/gridlayout/GridLayout$Spec;->UNDEFINED:Lcom/gridlayout/GridLayout$Spec;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1647
    sget-object v0, Lcom/gridlayout/GridLayout$Spec;->UNDEFINED:Lcom/gridlayout/GridLayout$Spec;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1656
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/gridlayout/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 1657
    iput-object p7, p0, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1658
    iput-object p8, p0, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1659
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1716
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1641
    sget-object v0, Lcom/gridlayout/GridLayout$Spec;->UNDEFINED:Lcom/gridlayout/GridLayout$Spec;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1647
    sget-object v0, Lcom/gridlayout/GridLayout$Spec;->UNDEFINED:Lcom/gridlayout/GridLayout$Spec;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1717
    invoke-direct {p0, p1, p2}, Lcom/gridlayout/GridLayout$LayoutParams;->reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1718
    invoke-direct {p0, p1, p2}, Lcom/gridlayout/GridLayout$LayoutParams;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1719
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 1688
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1641
    sget-object v0, Lcom/gridlayout/GridLayout$Spec;->UNDEFINED:Lcom/gridlayout/GridLayout$Spec;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1647
    sget-object v0, Lcom/gridlayout/GridLayout$Spec;->UNDEFINED:Lcom/gridlayout/GridLayout$Spec;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1689
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 1695
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1641
    sget-object v0, Lcom/gridlayout/GridLayout$Spec;->UNDEFINED:Lcom/gridlayout/GridLayout$Spec;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1647
    sget-object v0, Lcom/gridlayout/GridLayout$Spec;->UNDEFINED:Lcom/gridlayout/GridLayout$Spec;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1696
    return-void
.end method

.method public constructor <init>(Lcom/gridlayout/GridLayout$LayoutParams;)V
    .locals 1
    .parameter "that"

    .prologue
    .line 1702
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1641
    sget-object v0, Lcom/gridlayout/GridLayout$Spec;->UNDEFINED:Lcom/gridlayout/GridLayout$Spec;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1647
    sget-object v0, Lcom/gridlayout/GridLayout$Spec;->UNDEFINED:Lcom/gridlayout/GridLayout$Spec;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1703
    iget-object v0, p1, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1704
    iget-object v0, p1, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1705
    return-void
.end method

.method public constructor <init>(Lcom/gridlayout/GridLayout$Spec;Lcom/gridlayout/GridLayout$Spec;)V
    .locals 9
    .parameter "rowSpec"
    .parameter "columnSpec"

    .prologue
    const/4 v1, -0x2

    const/high16 v3, -0x8000

    .line 1670
    move-object v0, p0

    move v2, v1

    move v4, v3

    move v5, v3

    move v6, v3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/gridlayout/GridLayout$LayoutParams;-><init>(IIIIIILcom/gridlayout/GridLayout$Spec;Lcom/gridlayout/GridLayout$Spec;)V

    .line 1673
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1748
    sget-object v6, Lcom/gridlayout/R$styleable;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1750
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 1752
    .local v3, gravity:I
    const/4 v6, 0x1

    const/high16 v7, -0x8000

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 1753
    .local v2, column:I
    const/4 v6, 0x4

    sget v7, Lcom/gridlayout/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 1754
    .local v1, colSpan:I
    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/gridlayout/GridLayout;->getAlignment(IZ)Lcom/gridlayout/GridLayout$Alignment;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lcom/gridlayout/GridLayout;->spec(IILcom/gridlayout/GridLayout$Alignment;)Lcom/gridlayout/GridLayout$Spec;

    move-result-object v6

    iput-object v6, p0, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1756
    const/4 v6, 0x2

    const/high16 v7, -0x8000

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 1757
    .local v4, row:I
    const/4 v6, 0x3

    sget v7, Lcom/gridlayout/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 1758
    .local v5, rowSpan:I
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/gridlayout/GridLayout;->getAlignment(IZ)Lcom/gridlayout/GridLayout$Alignment;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/gridlayout/GridLayout;->spec(IILcom/gridlayout/GridLayout$Alignment;)Lcom/gridlayout/GridLayout$Spec;

    move-result-object v6

    iput-object v6, p0, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1760
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1762
    return-void

    .line 1760
    .end local v1           #colSpan:I
    .end local v2           #column:I
    .end local v3           #gravity:I
    .end local v4           #row:I
    .end local v5           #rowSpan:I
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v6
.end method

.method private reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1733
    sget-object v2, Lcom/gridlayout/R$styleable;->ViewGroup_MarginLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1736
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/high16 v3, -0x8000

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 1738
    .local v1, margin:I
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/gridlayout/GridLayout$LayoutParams;->leftMargin:I

    .line 1739
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/gridlayout/GridLayout$LayoutParams;->topMargin:I

    .line 1740
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/gridlayout/GridLayout$LayoutParams;->rightMargin:I

    .line 1741
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/gridlayout/GridLayout$LayoutParams;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1743
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1745
    return-void

    .line 1743
    .end local v1           #margin:I
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method


# virtual methods
.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 2
    .parameter "attributes"
    .parameter "widthAttr"
    .parameter "heightAttr"

    .prologue
    const/4 v1, -0x2

    .line 1779
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->width:I

    .line 1780
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->height:I

    .line 1781
    return-void
.end method

.method final setColumnSpecSpan(Lcom/gridlayout/GridLayout$Interval;)V
    .locals 1
    .parameter "span"

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    invoke-virtual {v0, p1}, Lcom/gridlayout/GridLayout$Spec;->copyWriteSpan(Lcom/gridlayout/GridLayout$Interval;)Lcom/gridlayout/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1789
    return-void
.end method

.method public setGravity(I)V
    .locals 2
    .parameter "gravity"

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/gridlayout/GridLayout;->getAlignment(IZ)Lcom/gridlayout/GridLayout$Alignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gridlayout/GridLayout$Spec;->copyWriteAlignment(Lcom/gridlayout/GridLayout$Alignment;)Lcom/gridlayout/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1774
    iget-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/gridlayout/GridLayout;->getAlignment(IZ)Lcom/gridlayout/GridLayout$Alignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gridlayout/GridLayout$Spec;->copyWriteAlignment(Lcom/gridlayout/GridLayout$Alignment;)Lcom/gridlayout/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1775
    return-void
.end method

.method final setRowSpecSpan(Lcom/gridlayout/GridLayout$Interval;)V
    .locals 1
    .parameter "span"

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;

    invoke-virtual {v0, p1}, Lcom/gridlayout/GridLayout$Spec;->copyWriteSpan(Lcom/gridlayout/GridLayout$Interval;)Lcom/gridlayout/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 1785
    return-void
.end method
