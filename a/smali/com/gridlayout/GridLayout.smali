.class public Lcom/gridlayout/GridLayout;
.super Landroid/view/ViewGroup;


# static fields
.field static final a:Ljava/lang/String;

.field static final i:Lcom/gridlayout/i;

.field public static final j:Lcom/gridlayout/i;

.field public static final k:Lcom/gridlayout/i;

.field public static final l:Lcom/gridlayout/i;

.field public static final m:Lcom/gridlayout/i;

.field public static final n:Lcom/gridlayout/i;

.field public static final o:Lcom/gridlayout/i;

.field public static final p:Lcom/gridlayout/i;

.field private static final q:Lcom/gridlayout/i;

.field private static final r:Lcom/gridlayout/i;

.field private static u:Z


# instance fields
.field final b:Lcom/gridlayout/l;

.field final c:Lcom/gridlayout/l;

.field d:Z

.field e:I

.field f:Z

.field g:I

.field h:I

.field private s:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private final t:Landroid/view/ViewGroup$OnHierarchyChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/gridlayout/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gridlayout/GridLayout;->a:Ljava/lang/String;

    new-instance v0, Lcom/gridlayout/a;

    invoke-direct {v0}, Lcom/gridlayout/a;-><init>()V

    sput-object v0, Lcom/gridlayout/GridLayout;->i:Lcom/gridlayout/i;

    new-instance v0, Lcom/gridlayout/b;

    invoke-direct {v0}, Lcom/gridlayout/b;-><init>()V

    sput-object v0, Lcom/gridlayout/GridLayout;->q:Lcom/gridlayout/i;

    new-instance v0, Lcom/gridlayout/c;

    invoke-direct {v0}, Lcom/gridlayout/c;-><init>()V

    sput-object v0, Lcom/gridlayout/GridLayout;->r:Lcom/gridlayout/i;

    sget-object v0, Lcom/gridlayout/GridLayout;->q:Lcom/gridlayout/i;

    sput-object v0, Lcom/gridlayout/GridLayout;->j:Lcom/gridlayout/i;

    sget-object v0, Lcom/gridlayout/GridLayout;->r:Lcom/gridlayout/i;

    sput-object v0, Lcom/gridlayout/GridLayout;->k:Lcom/gridlayout/i;

    sget-object v0, Lcom/gridlayout/GridLayout;->r:Lcom/gridlayout/i;

    sput-object v0, Lcom/gridlayout/GridLayout;->l:Lcom/gridlayout/i;

    sget-object v0, Lcom/gridlayout/GridLayout;->q:Lcom/gridlayout/i;

    sput-object v0, Lcom/gridlayout/GridLayout;->m:Lcom/gridlayout/i;

    new-instance v0, Lcom/gridlayout/d;

    invoke-direct {v0}, Lcom/gridlayout/d;-><init>()V

    sput-object v0, Lcom/gridlayout/GridLayout;->n:Lcom/gridlayout/i;

    new-instance v0, Lcom/gridlayout/e;

    invoke-direct {v0}, Lcom/gridlayout/e;-><init>()V

    sput-object v0, Lcom/gridlayout/GridLayout;->o:Lcom/gridlayout/i;

    new-instance v0, Lcom/gridlayout/g;

    invoke-direct {v0}, Lcom/gridlayout/g;-><init>()V

    sput-object v0, Lcom/gridlayout/GridLayout;->p:Lcom/gridlayout/i;

    :try_start_0
    invoke-static {}, Lcom/gridlayout/s;->a()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gridlayout/GridLayout;->u:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gridlayout/GridLayout;->u:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gridlayout/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/gridlayout/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/gridlayout/l;

    invoke-direct {v0, p0, v2, v1}, Lcom/gridlayout/l;-><init>(Lcom/gridlayout/GridLayout;ZB)V

    iput-object v0, p0, Lcom/gridlayout/GridLayout;->b:Lcom/gridlayout/l;

    new-instance v0, Lcom/gridlayout/l;

    invoke-direct {v0, p0, v1, v1}, Lcom/gridlayout/l;-><init>(Lcom/gridlayout/GridLayout;ZB)V

    iput-object v0, p0, Lcom/gridlayout/GridLayout;->c:Lcom/gridlayout/l;

    iput-boolean v1, p0, Lcom/gridlayout/GridLayout;->d:Z

    iput v1, p0, Lcom/gridlayout/GridLayout;->e:I

    iput-boolean v1, p0, Lcom/gridlayout/GridLayout;->f:Z

    iput v2, p0, Lcom/gridlayout/GridLayout;->g:I

    new-instance v0, Lcom/gridlayout/h;

    invoke-direct {v0, p0}, Lcom/gridlayout/h;-><init>(Lcom/gridlayout/GridLayout;)V

    iput-object v0, p0, Lcom/gridlayout/GridLayout;->t:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/gridlayout/v;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/gridlayout/GridLayout;->h:I

    sget-object v0, Lcom/gridlayout/w;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x2

    const/high16 v2, -0x8000

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget-object v2, p0, Lcom/gridlayout/GridLayout;->c:Lcom/gridlayout/l;

    invoke-virtual {v2, v0}, Lcom/gridlayout/l;->a(I)V

    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->b()V

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->requestLayout()V

    const/4 v0, 0x3

    const/high16 v2, -0x8000

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget-object v2, p0, Lcom/gridlayout/GridLayout;->b:Lcom/gridlayout/l;

    invoke-virtual {v2, v0}, Lcom/gridlayout/l;->a(I)V

    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->b()V

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->requestLayout()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget v2, p0, Lcom/gridlayout/GridLayout;->e:I

    if-eq v2, v0, :cond_0

    iput v0, p0, Lcom/gridlayout/GridLayout;->e:I

    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->b()V

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->requestLayout()V

    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gridlayout/GridLayout;->f:Z

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->requestLayout()V

    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/gridlayout/GridLayout;->g:I

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->requestLayout()V

    const/4 v0, 0x5

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iget-object v2, p0, Lcom/gridlayout/GridLayout;->c:Lcom/gridlayout/l;

    invoke-virtual {v2, v0}, Lcom/gridlayout/l;->a(Z)V

    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->b()V

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->requestLayout()V

    const/4 v0, 0x6

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iget-object v2, p0, Lcom/gridlayout/GridLayout;->b:Lcom/gridlayout/l;

    invoke-virtual {v2, v0}, Lcom/gridlayout/l;->a(Z)V

    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->b()V

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/gridlayout/GridLayout;->t:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static a([I)I
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x0

    array-length v2, p0

    :goto_0
    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    aget v3, p0, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/gridlayout/GridLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/gridlayout/GridLayout;->s:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object v0
.end method

.method static a(IZ)Lcom/gridlayout/i;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x7

    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    and-int/2addr v1, p0

    shr-int v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/gridlayout/GridLayout;->i:Lcom/gridlayout/i;

    :goto_2
    return-object v0

    :cond_0
    const/16 v0, 0x70

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/gridlayout/GridLayout;->q:Lcom/gridlayout/i;

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/gridlayout/GridLayout;->r:Lcom/gridlayout/i;

    goto :goto_2

    :pswitch_3
    sget-object v0, Lcom/gridlayout/GridLayout;->p:Lcom/gridlayout/i;

    goto :goto_2

    :pswitch_4
    sget-object v0, Lcom/gridlayout/GridLayout;->n:Lcom/gridlayout/i;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static a(Lcom/gridlayout/i;Z)Lcom/gridlayout/i;
    .locals 1

    sget-object v0, Lcom/gridlayout/GridLayout;->i:Lcom/gridlayout/i;

    if-eq p0, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Lcom/gridlayout/GridLayout;->m:Lcom/gridlayout/i;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/gridlayout/GridLayout;->o:Lcom/gridlayout/i;

    goto :goto_0
.end method

.method public static a()Lcom/gridlayout/t;
    .locals 3

    const/high16 v0, -0x8000

    const/4 v1, 0x1

    sget-object v2, Lcom/gridlayout/GridLayout;->i:Lcom/gridlayout/i;

    invoke-static {v0, v1, v2}, Lcom/gridlayout/GridLayout;->a(IILcom/gridlayout/i;)Lcom/gridlayout/t;

    move-result-object v0

    return-object v0
.end method

.method public static a(IILcom/gridlayout/i;)Lcom/gridlayout/t;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/gridlayout/t;

    const/high16 v1, -0x8000

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/gridlayout/t;-><init>(ZIILcom/gridlayout/i;B)V

    return-object v0

    :cond_0
    move v1, v5

    goto :goto_0
.end method

.method private a(IIZ)V
    .locals 13

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getChildCount()I

    move-result v12

    move v11, v0

    :goto_0
    if-lt v11, v12, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v11}, Lcom/gridlayout/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/gridlayout/GridLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/gridlayout/GridLayout;->a(Landroid/view/View;)Lcom/gridlayout/GridLayout$LayoutParams;

    move-result-object v3

    if-eqz p3, :cond_2

    iget v4, v3, Lcom/gridlayout/GridLayout$LayoutParams;->width:I

    iget v5, v3, Lcom/gridlayout/GridLayout$LayoutParams;->height:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/gridlayout/GridLayout;->a(Landroid/view/View;IIII)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/gridlayout/GridLayout;->e:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v2, v0

    :goto_2
    if-eqz v2, :cond_4

    iget-object v0, v3, Lcom/gridlayout/GridLayout$LayoutParams;->b:Lcom/gridlayout/t;

    :goto_3
    iget-object v4, v0, Lcom/gridlayout/t;->d:Lcom/gridlayout/i;

    sget-object v5, Lcom/gridlayout/GridLayout;->p:Lcom/gridlayout/i;

    if-ne v4, v5, :cond_1

    iget-object v4, v0, Lcom/gridlayout/t;->c:Lcom/gridlayout/o;

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/gridlayout/GridLayout;->b:Lcom/gridlayout/l;

    :goto_4
    invoke-virtual {v0}, Lcom/gridlayout/l;->e()[I

    move-result-object v0

    iget v5, v4, Lcom/gridlayout/o;->b:I

    aget v5, v0, v5

    iget v4, v4, Lcom/gridlayout/o;->a:I

    aget v0, v0, v4

    sub-int v0, v5, v0

    invoke-direct {p0, v1, v2}, Lcom/gridlayout/GridLayout;->b(Landroid/view/View;Z)I

    move-result v4

    sub-int v4, v0, v4

    if-eqz v2, :cond_6

    iget v5, v3, Lcom/gridlayout/GridLayout$LayoutParams;->height:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/gridlayout/GridLayout;->a(Landroid/view/View;IIII)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    move v2, v0

    goto :goto_2

    :cond_4
    iget-object v0, v3, Lcom/gridlayout/GridLayout$LayoutParams;->a:Lcom/gridlayout/t;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->c:Lcom/gridlayout/l;

    goto :goto_4

    :cond_6
    iget v9, v3, Lcom/gridlayout/GridLayout$LayoutParams;->width:I

    move-object v5, p0

    move-object v6, v1

    move v7, p1

    move v8, p2

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/gridlayout/GridLayout;->a(Landroid/view/View;IIII)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 3

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/gridlayout/GridLayout;->b(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2, v0, p4}, Lcom/gridlayout/GridLayout;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/gridlayout/GridLayout;->b(Landroid/view/View;Z)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p3, v1, p5}, Lcom/gridlayout/GridLayout;->getChildMeasureSpec(III)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private static a(Lcom/gridlayout/GridLayout$LayoutParams;IIII)V
    .locals 2

    new-instance v0, Lcom/gridlayout/o;

    add-int v1, p1, p2

    invoke-direct {v0, p1, v1}, Lcom/gridlayout/o;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/gridlayout/GridLayout$LayoutParams;->a(Lcom/gridlayout/o;)V

    new-instance v0, Lcom/gridlayout/o;

    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Lcom/gridlayout/o;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/gridlayout/GridLayout$LayoutParams;->b(Lcom/gridlayout/o;)V

    return-void
.end method

.method static a(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static b(I)I
    .locals 1

    const/high16 v0, -0x8000

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private b(Landroid/view/View;Z)I
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/gridlayout/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/gridlayout/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private b(Landroid/view/View;ZZ)I
    .locals 2

    iget v0, p0, Lcom/gridlayout/GridLayout;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/gridlayout/GridLayout;->a(Landroid/view/View;ZZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/gridlayout/GridLayout;->b:Lcom/gridlayout/l;

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lcom/gridlayout/l;->c()[I

    move-result-object v0

    :goto_2
    invoke-virtual {p0, p1}, Lcom/gridlayout/GridLayout;->a(Landroid/view/View;)Lcom/gridlayout/GridLayout$LayoutParams;

    move-result-object v1

    if-eqz p2, :cond_3

    iget-object v1, v1, Lcom/gridlayout/GridLayout$LayoutParams;->b:Lcom/gridlayout/t;

    :goto_3
    if-eqz p3, :cond_4

    iget-object v1, v1, Lcom/gridlayout/t;->c:Lcom/gridlayout/o;

    iget v1, v1, Lcom/gridlayout/o;->a:I

    :goto_4
    aget v0, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->c:Lcom/gridlayout/l;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/gridlayout/l;->d()[I

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v1, v1, Lcom/gridlayout/GridLayout$LayoutParams;->a:Lcom/gridlayout/t;

    goto :goto_3

    :cond_4
    iget-object v1, v1, Lcom/gridlayout/t;->c:Lcom/gridlayout/o;

    iget v1, v1, Lcom/gridlayout/o;->b:I

    goto :goto_4
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gridlayout/GridLayout;->d:Z

    iget-object v0, p0, Lcom/gridlayout/GridLayout;->b:Lcom/gridlayout/l;

    invoke-virtual {v0}, Lcom/gridlayout/l;->f()V

    iget-object v0, p0, Lcom/gridlayout/GridLayout;->c:Lcom/gridlayout/l;

    invoke-virtual {v0}, Lcom/gridlayout/l;->f()V

    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->c()V

    return-void
.end method

.method static synthetic b(Lcom/gridlayout/GridLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->b()V

    return-void
.end method

.method static b(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/view/View;Z)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/gridlayout/GridLayout;->b:Lcom/gridlayout/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gridlayout/GridLayout;->c:Lcom/gridlayout/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gridlayout/GridLayout;->b:Lcom/gridlayout/l;

    invoke-virtual {v0}, Lcom/gridlayout/l;->g()V

    iget-object v0, p0, Lcom/gridlayout/GridLayout;->c:Lcom/gridlayout/l;

    invoke-virtual {v0}, Lcom/gridlayout/l;->g()V

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Landroid/view/View;Z)I
    .locals 2

    invoke-static {p1}, Lcom/gridlayout/GridLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/gridlayout/GridLayout;->c(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/gridlayout/GridLayout;->b(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method final a(Landroid/view/View;ZZ)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/gridlayout/GridLayout;->a(Landroid/view/View;)Lcom/gridlayout/GridLayout$LayoutParams;

    move-result-object v3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget v0, v3, Lcom/gridlayout/GridLayout$LayoutParams;->leftMargin:I

    :goto_0
    const/high16 v4, -0x8000

    if-ne v0, v4, :cond_0

    iget-boolean v0, p0, Lcom/gridlayout/GridLayout;->f:Z

    if-nez v0, :cond_4

    move v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    iget v0, v3, Lcom/gridlayout/GridLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget v0, v3, Lcom/gridlayout/GridLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    iget v0, v3, Lcom/gridlayout/GridLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    iget-object v0, v3, Lcom/gridlayout/GridLayout$LayoutParams;->b:Lcom/gridlayout/t;

    move-object v3, v0

    :goto_2
    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/gridlayout/GridLayout;->b:Lcom/gridlayout/l;

    :goto_3
    iget-object v3, v3, Lcom/gridlayout/t;->c:Lcom/gridlayout/o;

    if-eqz p3, :cond_8

    iget v0, v3, Lcom/gridlayout/o;->a:I

    if-nez v0, :cond_7

    move v0, v2

    :goto_4
    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_1

    :cond_5
    iget-object v0, v3, Lcom/gridlayout/GridLayout$LayoutParams;->a:Lcom/gridlayout/t;

    move-object v3, v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->c:Lcom/gridlayout/l;

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    iget v3, v3, Lcom/gridlayout/o;->b:I

    invoke-virtual {v0}, Lcom/gridlayout/l;->a()I

    move-result v0

    if-ne v3, v0, :cond_9

    move v0, v2

    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/gridlayout/Space;

    if-ne v0, v2, :cond_b

    move v0, v1

    goto :goto_1

    :cond_b
    iget v0, p0, Lcom/gridlayout/GridLayout;->h:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method final a(Landroid/view/View;)Lcom/gridlayout/GridLayout$LayoutParams;
    .locals 14

    iget-boolean v0, p0, Lcom/gridlayout/GridLayout;->d:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/gridlayout/GridLayout;->e:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v7, v0

    :goto_0
    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/gridlayout/GridLayout;->b:Lcom/gridlayout/l;

    :goto_1
    iget v1, v0, Lcom/gridlayout/l;->b:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_3

    iget v0, v0, Lcom/gridlayout/l;->b:I

    move v1, v0

    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v8, v1, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getChildCount()I

    move-result v9

    move v6, v0

    :goto_3
    if-lt v6, v9, :cond_4

    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gridlayout/GridLayout;->d:Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/gridlayout/GridLayout$LayoutParams;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->c:Lcom/gridlayout/l;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v6}, Lcom/gridlayout/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/gridlayout/GridLayout$LayoutParams;

    if-eqz v7, :cond_9

    iget-object v2, v0, Lcom/gridlayout/GridLayout$LayoutParams;->a:Lcom/gridlayout/t;

    :goto_4
    iget-object v5, v2, Lcom/gridlayout/t;->c:Lcom/gridlayout/o;

    iget-boolean v10, v2, Lcom/gridlayout/t;->b:Z

    invoke-virtual {v5}, Lcom/gridlayout/o;->a()I

    move-result v11

    if-eqz v10, :cond_5

    iget v3, v5, Lcom/gridlayout/o;->a:I

    :cond_5
    if-eqz v7, :cond_a

    iget-object v2, v0, Lcom/gridlayout/GridLayout$LayoutParams;->b:Lcom/gridlayout/t;

    :goto_5
    iget-object v12, v2, Lcom/gridlayout/t;->c:Lcom/gridlayout/o;

    iget-boolean v13, v2, Lcom/gridlayout/t;->b:Z

    invoke-virtual {v12}, Lcom/gridlayout/o;->a()I

    move-result v5

    if-nez v1, :cond_b

    :goto_6
    if-eqz v13, :cond_14

    iget v2, v12, Lcom/gridlayout/o;->a:I

    :goto_7
    if-eqz v1, :cond_8

    if-eqz v10, :cond_6

    if-nez v13, :cond_7

    :cond_6
    :goto_8
    add-int v10, v2, v5

    array-length v4, v8

    if-le v10, v4, :cond_10

    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_d

    :cond_7
    add-int v4, v2, v5

    add-int v10, v3, v11

    array-length v12, v8

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v8, v13, v4, v10}, Ljava/util/Arrays;->fill([IIII)V

    :cond_8
    if-eqz v7, :cond_13

    invoke-static {v0, v3, v11, v2, v5}, Lcom/gridlayout/GridLayout;->a(Lcom/gridlayout/GridLayout$LayoutParams;IIII)V

    :goto_a
    add-int v4, v2, v5

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

    :cond_9
    iget-object v2, v0, Lcom/gridlayout/GridLayout$LayoutParams;->b:Lcom/gridlayout/t;

    goto :goto_4

    :cond_a
    iget-object v2, v0, Lcom/gridlayout/GridLayout$LayoutParams;->a:Lcom/gridlayout/t;

    goto :goto_5

    :cond_b
    if-eqz v13, :cond_c

    iget v2, v12, Lcom/gridlayout/o;->a:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_b
    sub-int v2, v1, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v5, v2

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    goto :goto_b

    :cond_d
    if-eqz v13, :cond_e

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_e
    add-int v4, v2, v5

    if-gt v4, v1, :cond_f

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_10
    move v4, v2

    :goto_c
    if-lt v4, v10, :cond_11

    const/4 v4, 0x1

    goto :goto_9

    :cond_11
    aget v12, v8, v4

    if-le v12, v3, :cond_12

    const/4 v4, 0x0

    goto :goto_9

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_13
    invoke-static {v0, v2, v5, v3, v11}, Lcom/gridlayout/GridLayout;->a(Lcom/gridlayout/GridLayout$LayoutParams;IIII)V

    goto :goto_a

    :cond_14
    move v2, v4

    goto :goto_7
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/gridlayout/GridLayout$LayoutParams;

    invoke-direct {v0}, Lcom/gridlayout/GridLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/gridlayout/GridLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/gridlayout/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/gridlayout/GridLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/gridlayout/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 28

    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/gridlayout/GridLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/gridlayout/GridLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/gridlayout/GridLayout;->getPaddingRight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/gridlayout/GridLayout;->getPaddingBottom()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/gridlayout/GridLayout;->b:Lcom/gridlayout/l;

    sub-int/2addr v3, v6

    sub-int/2addr v3, v5

    invoke-virtual {v9, v3}, Lcom/gridlayout/l;->c(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gridlayout/GridLayout;->c:Lcom/gridlayout/l;

    sub-int/2addr v4, v7

    sub-int/2addr v4, v8

    invoke-virtual {v3, v4}, Lcom/gridlayout/l;->c(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gridlayout/GridLayout;->b:Lcom/gridlayout/l;

    invoke-virtual {v3}, Lcom/gridlayout/l;->e()[I

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gridlayout/GridLayout;->c:Lcom/gridlayout/l;

    invoke-virtual {v3}, Lcom/gridlayout/l;->e()[I

    move-result-object v9

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/gridlayout/GridLayout;->getChildCount()I

    move-result v10

    move v5, v3

    :goto_0
    if-lt v5, v10, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/gridlayout/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Lcom/gridlayout/GridLayout;->b(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/gridlayout/GridLayout;->a(Landroid/view/View;)Lcom/gridlayout/GridLayout$LayoutParams;

    move-result-object v3

    iget-object v4, v3, Lcom/gridlayout/GridLayout$LayoutParams;->b:Lcom/gridlayout/t;

    iget-object v3, v3, Lcom/gridlayout/GridLayout$LayoutParams;->a:Lcom/gridlayout/t;

    iget-object v12, v4, Lcom/gridlayout/t;->c:Lcom/gridlayout/o;

    iget-object v13, v3, Lcom/gridlayout/t;->c:Lcom/gridlayout/o;

    iget v14, v12, Lcom/gridlayout/o;->a:I

    aget v14, v8, v14

    iget v15, v13, Lcom/gridlayout/o;->a:I

    aget v15, v9, v15

    iget v12, v12, Lcom/gridlayout/o;->b:I

    aget v12, v8, v12

    iget v13, v13, Lcom/gridlayout/o;->b:I

    aget v13, v9, v13

    sub-int/2addr v12, v14

    sub-int/2addr v13, v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v11, v0}, Lcom/gridlayout/GridLayout;->c(Landroid/view/View;Z)I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v11, v0}, Lcom/gridlayout/GridLayout;->c(Landroid/view/View;Z)I

    move-result v17

    iget-object v4, v4, Lcom/gridlayout/t;->d:Lcom/gridlayout/i;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v4, v0}, Lcom/gridlayout/GridLayout;->a(Lcom/gridlayout/i;Z)Lcom/gridlayout/i;

    move-result-object v18

    iget-object v3, v3, Lcom/gridlayout/t;->d:Lcom/gridlayout/i;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/gridlayout/GridLayout;->a(Lcom/gridlayout/i;Z)Lcom/gridlayout/i;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gridlayout/GridLayout;->b:Lcom/gridlayout/l;

    invoke-virtual {v3}, Lcom/gridlayout/l;->b()Lcom/gridlayout/q;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/gridlayout/q;->a(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gridlayout/n;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gridlayout/GridLayout;->c:Lcom/gridlayout/l;

    invoke-virtual {v4}, Lcom/gridlayout/l;->b()Lcom/gridlayout/q;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/gridlayout/q;->a(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gridlayout/n;

    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/gridlayout/n;->a(Z)I

    move-result v21

    sub-int v21, v12, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/gridlayout/i;->a(Landroid/view/View;I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/gridlayout/GridLayout;->b(I)I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/gridlayout/n;->a(Z)I

    move-result v22

    sub-int v22, v13, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/gridlayout/i;->a(Landroid/view/View;I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/gridlayout/GridLayout;->b(I)I

    move-result v21

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v11, v1, v2}, Lcom/gridlayout/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v11, v1, v2}, Lcom/gridlayout/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v23

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v11, v1, v2}, Lcom/gridlayout/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v11, v1, v2}, Lcom/gridlayout/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v25

    add-int v26, v22, v16

    add-int v26, v26, v24

    add-int v27, v23, v17

    add-int v27, v27, v25

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v3, v11, v0, v1}, Lcom/gridlayout/n;->a(Landroid/view/View;Lcom/gridlayout/i;I)I

    move-result v3

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v4, v11, v0, v1}, Lcom/gridlayout/n;->a(Landroid/view/View;Lcom/gridlayout/i;I)I

    move-result v4

    add-int v3, v3, v20

    add-int v3, v3, v22

    add-int v4, v4, v21

    add-int v4, v4, v23

    add-int v20, v22, v24

    sub-int v12, v12, v20

    add-int v20, v23, v25

    sub-int v13, v13, v20

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1, v12}, Lcom/gridlayout/i;->a(II)I

    move-result v12

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Lcom/gridlayout/i;->a(II)I

    move-result v13

    add-int/2addr v14, v6

    add-int/2addr v3, v14

    add-int v14, v7, v15

    add-int/2addr v4, v14

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    if-ne v12, v14, :cond_1

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eq v13, v14, :cond_2

    :cond_1
    const/high16 v14, 0x4000

    invoke-static {v12, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    const/high16 v15, 0x4000

    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v11, v14, v15}, Landroid/view/View;->measure(II)V

    :cond_2
    add-int/2addr v12, v3

    add-int/2addr v13, v4

    invoke-virtual {v11, v3, v4, v12, v13}, Landroid/view/View;->layout(IIII)V

    :cond_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->c()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/gridlayout/GridLayout;->a(IIZ)V

    iget v0, p0, Lcom/gridlayout/GridLayout;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gridlayout/GridLayout;->b:Lcom/gridlayout/l;

    invoke-virtual {v0, p1}, Lcom/gridlayout/l;->b(I)I

    move-result v1

    invoke-direct {p0, p1, p2, v2}, Lcom/gridlayout/GridLayout;->a(IIZ)V

    iget-object v0, p0, Lcom/gridlayout/GridLayout;->c:Lcom/gridlayout/l;

    invoke-virtual {v0, p2}, Lcom/gridlayout/l;->b(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-boolean v2, Lcom/gridlayout/GridLayout;->u:Z

    if-eqz v2, :cond_1

    invoke-static {v1, p1}, Lcom/gridlayout/s;->a(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/gridlayout/s;->a(II)I

    move-result v0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/gridlayout/GridLayout;->setMeasuredDimension(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->c:Lcom/gridlayout/l;

    invoke-virtual {v0, p2}, Lcom/gridlayout/l;->b(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v2}, Lcom/gridlayout/GridLayout;->a(IIZ)V

    iget-object v1, p0, Lcom/gridlayout/GridLayout;->b:Lcom/gridlayout/l;

    invoke-virtual {v1, p1}, Lcom/gridlayout/l;->b(I)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v1, p1}, Lcom/gridlayout/GridLayout;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/gridlayout/GridLayout;->resolveSize(II)I

    move-result v0

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->c()V

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gridlayout/GridLayout;->s:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method
