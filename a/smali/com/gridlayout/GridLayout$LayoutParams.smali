.class public Lcom/gridlayout/GridLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;


# static fields
.field private static final c:Lcom/gridlayout/o;

.field private static final d:I


# instance fields
.field public a:Lcom/gridlayout/t;

.field public b:Lcom/gridlayout/t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/gridlayout/o;

    const/high16 v1, -0x8000

    const v2, -0x7fffffff

    invoke-direct {v0, v1, v2}, Lcom/gridlayout/o;-><init>(II)V

    sput-object v0, Lcom/gridlayout/GridLayout$LayoutParams;->c:Lcom/gridlayout/o;

    invoke-virtual {v0}, Lcom/gridlayout/o;->a()I

    move-result v0

    sput v0, Lcom/gridlayout/GridLayout$LayoutParams;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/gridlayout/t;->a:Lcom/gridlayout/t;

    sget-object v1, Lcom/gridlayout/t;->a:Lcom/gridlayout/t;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/gridlayout/GridLayout$LayoutParams;-><init>(Lcom/gridlayout/t;Lcom/gridlayout/t;B)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/gridlayout/t;->a:Lcom/gridlayout/t;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->a:Lcom/gridlayout/t;

    sget-object v0, Lcom/gridlayout/t;->a:Lcom/gridlayout/t;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->b:Lcom/gridlayout/t;

    sget-object v0, Lcom/gridlayout/w;->c:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    const/high16 v2, -0x8000

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/gridlayout/GridLayout$LayoutParams;->leftMargin:I

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/gridlayout/GridLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/gridlayout/GridLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Lcom/gridlayout/w;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v2, 0x1

    const/high16 v3, -0x8000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x4

    sget v4, Lcom/gridlayout/GridLayout$LayoutParams;->d:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/gridlayout/GridLayout;->a(IZ)Lcom/gridlayout/i;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/gridlayout/GridLayout;->a(IILcom/gridlayout/i;)Lcom/gridlayout/t;

    move-result-object v2

    iput-object v2, p0, Lcom/gridlayout/GridLayout$LayoutParams;->b:Lcom/gridlayout/t;

    const/4 v2, 0x2

    const/high16 v3, -0x8000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x3

    sget v4, Lcom/gridlayout/GridLayout$LayoutParams;->d:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/gridlayout/GridLayout;->a(IZ)Lcom/gridlayout/i;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/gridlayout/GridLayout;->a(IILcom/gridlayout/i;)Lcom/gridlayout/t;

    move-result-object v0

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->a:Lcom/gridlayout/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/gridlayout/t;->a:Lcom/gridlayout/t;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->a:Lcom/gridlayout/t;

    sget-object v0, Lcom/gridlayout/t;->a:Lcom/gridlayout/t;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->b:Lcom/gridlayout/t;

    return-void
.end method

.method private constructor <init>(Lcom/gridlayout/t;Lcom/gridlayout/t;)V
    .locals 2

    const/4 v0, -0x2

    const/high16 v1, -0x8000

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    sget-object v0, Lcom/gridlayout/t;->a:Lcom/gridlayout/t;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->a:Lcom/gridlayout/t;

    sget-object v0, Lcom/gridlayout/t;->a:Lcom/gridlayout/t;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->b:Lcom/gridlayout/t;

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/gridlayout/GridLayout$LayoutParams;->setMargins(IIII)V

    iput-object p1, p0, Lcom/gridlayout/GridLayout$LayoutParams;->a:Lcom/gridlayout/t;

    iput-object p2, p0, Lcom/gridlayout/GridLayout$LayoutParams;->b:Lcom/gridlayout/t;

    return-void
.end method

.method private constructor <init>(Lcom/gridlayout/t;Lcom/gridlayout/t;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/gridlayout/GridLayout$LayoutParams;-><init>(Lcom/gridlayout/t;Lcom/gridlayout/t;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/gridlayout/o;)V
    .locals 1

    iget-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->a:Lcom/gridlayout/t;

    invoke-virtual {v0, p1}, Lcom/gridlayout/t;->a(Lcom/gridlayout/o;)Lcom/gridlayout/t;

    move-result-object v0

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->a:Lcom/gridlayout/t;

    return-void
.end method

.method final b(Lcom/gridlayout/o;)V
    .locals 1

    iget-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->b:Lcom/gridlayout/t;

    invoke-virtual {v0, p1}, Lcom/gridlayout/t;->a(Lcom/gridlayout/o;)Lcom/gridlayout/t;

    move-result-object v0

    iput-object v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->b:Lcom/gridlayout/t;

    return-void
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 2

    const/4 v1, -0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->width:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/gridlayout/GridLayout$LayoutParams;->height:I

    return-void
.end method
