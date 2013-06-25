.class public Lcom/gridlayout/GridLayout;
.super Landroid/view/ViewGroup;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gridlayout/GridLayout$ResolveSizeAndStateWrapper;,
        Lcom/gridlayout/GridLayout$Pair;,
        Lcom/gridlayout/GridLayout$Alignment;,
        Lcom/gridlayout/GridLayout$Spec;,
        Lcom/gridlayout/GridLayout$Interval;,
        Lcom/gridlayout/GridLayout$Bounds;,
        Lcom/gridlayout/GridLayout$PackedMap;,
        Lcom/gridlayout/GridLayout$Assoc;,
        Lcom/gridlayout/GridLayout$MutableInt;,
        Lcom/gridlayout/GridLayout$Arc;,
        Lcom/gridlayout/GridLayout$LayoutParams;,
        Lcom/gridlayout/GridLayout$Axis;
    }
.end annotation


# static fields
.field private static final ALIGNMENT_MODE:I = 0x1

.field public static final ALIGN_BOUNDS:I = 0x0

.field public static final ALIGN_MARGINS:I = 0x1

.field public static final BASELINE:Lcom/gridlayout/GridLayout$Alignment; = null

.field public static final BOTTOM:Lcom/gridlayout/GridLayout$Alignment; = null

.field private static final CAN_STRETCH:I = 0x2

.field public static final CENTER:Lcom/gridlayout/GridLayout$Alignment; = null

.field private static final COLUMN_COUNT:I = 0x3

.field private static final COLUMN_ORDER_PRESERVED:I = 0x6

.field static final DEBUG:Z = false

.field private static final DEFAULT_ALIGNMENT_MODE:I = 0x1

.field static final DEFAULT_CONTAINER_MARGIN:I = 0x0

.field private static final DEFAULT_COUNT:I = -0x80000000

.field private static final DEFAULT_ORDER_PRESERVED:Z = true

.field private static final DEFAULT_ORIENTATION:I = 0x0

.field private static final DEFAULT_USE_DEFAULT_MARGINS:Z = false

.field public static final FILL:Lcom/gridlayout/GridLayout$Alignment; = null

.field public static final HORIZONTAL:I = 0x0

.field private static final INFLEXIBLE:I = 0x0

.field private static final LEADING:Lcom/gridlayout/GridLayout$Alignment; = null

.field public static final LEFT:Lcom/gridlayout/GridLayout$Alignment; = null

.field static final MAX_SIZE:I = 0x186a0

.field private static final ORIENTATION:I = 0x0

.field static final PRF:I = 0x1

.field public static final RIGHT:Lcom/gridlayout/GridLayout$Alignment; = null

.field private static final ROW_COUNT:I = 0x2

.field private static final ROW_ORDER_PRESERVED:I = 0x5

.field static final TAG:Ljava/lang/String; = null

.field public static final TOP:Lcom/gridlayout/GridLayout$Alignment; = null

.field private static final TRAILING:Lcom/gridlayout/GridLayout$Alignment; = null

.field public static final UNDEFINED:I = -0x80000000

.field static final UNDEFINED_ALIGNMENT:Lcom/gridlayout/GridLayout$Alignment; = null

.field private static final USE_DEFAULT_MARGINS:I = 0x4

.field public static final VERTICAL:I = 0x1

.field private static mResolveSizeAndStateAvailable:Z


# instance fields
.field private final GRIDLAYOUT_LISTENER:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field alignmentMode:I

.field defaultGap:I

.field final horizontalAxis:Lcom/gridlayout/GridLayout$Axis;

.field layoutParamsValid:Z

.field private mListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field orientation:I

.field useDefaultMargins:Z

.field final verticalAxis:Lcom/gridlayout/GridLayout$Axis;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 126
    const-class v1, Lcom/gridlayout/GridLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gridlayout/GridLayout;->TAG:Ljava/lang/String;

    .line 2287
    new-instance v1, Lcom/gridlayout/GridLayout$1;

    invoke-direct {v1}, Lcom/gridlayout/GridLayout$1;-><init>()V

    sput-object v1, Lcom/gridlayout/GridLayout;->UNDEFINED_ALIGNMENT:Lcom/gridlayout/GridLayout$Alignment;

    .line 2293
    new-instance v1, Lcom/gridlayout/GridLayout$2;

    invoke-direct {v1}, Lcom/gridlayout/GridLayout$2;-><init>()V

    sput-object v1, Lcom/gridlayout/GridLayout;->LEADING:Lcom/gridlayout/GridLayout$Alignment;

    .line 2299
    new-instance v1, Lcom/gridlayout/GridLayout$3;

    invoke-direct {v1}, Lcom/gridlayout/GridLayout$3;-><init>()V

    sput-object v1, Lcom/gridlayout/GridLayout;->TRAILING:Lcom/gridlayout/GridLayout$Alignment;

    .line 2309
    sget-object v1, Lcom/gridlayout/GridLayout;->LEADING:Lcom/gridlayout/GridLayout$Alignment;

    sput-object v1, Lcom/gridlayout/GridLayout;->TOP:Lcom/gridlayout/GridLayout$Alignment;

    .line 2315
    sget-object v1, Lcom/gridlayout/GridLayout;->TRAILING:Lcom/gridlayout/GridLayout$Alignment;

    sput-object v1, Lcom/gridlayout/GridLayout;->BOTTOM:Lcom/gridlayout/GridLayout$Alignment;

    .line 2321
    sget-object v1, Lcom/gridlayout/GridLayout;->TRAILING:Lcom/gridlayout/GridLayout$Alignment;

    sput-object v1, Lcom/gridlayout/GridLayout;->RIGHT:Lcom/gridlayout/GridLayout$Alignment;

    .line 2327
    sget-object v1, Lcom/gridlayout/GridLayout;->LEADING:Lcom/gridlayout/GridLayout$Alignment;

    sput-object v1, Lcom/gridlayout/GridLayout;->LEFT:Lcom/gridlayout/GridLayout$Alignment;

    .line 2334
    new-instance v1, Lcom/gridlayout/GridLayout$4;

    invoke-direct {v1}, Lcom/gridlayout/GridLayout$4;-><init>()V

    sput-object v1, Lcom/gridlayout/GridLayout;->CENTER:Lcom/gridlayout/GridLayout$Alignment;

    .line 2347
    new-instance v1, Lcom/gridlayout/GridLayout$5;

    invoke-direct {v1}, Lcom/gridlayout/GridLayout$5;-><init>()V

    sput-object v1, Lcom/gridlayout/GridLayout;->BASELINE:Lcom/gridlayout/GridLayout$Alignment;

    .line 2397
    new-instance v1, Lcom/gridlayout/GridLayout$6;

    invoke-direct {v1}, Lcom/gridlayout/GridLayout$6;-><init>()V

    sput-object v1, Lcom/gridlayout/GridLayout;->FILL:Lcom/gridlayout/GridLayout$Alignment;

    .line 2500
    :try_start_0
    invoke-static {}, Lcom/gridlayout/GridLayout$ResolveSizeAndStateWrapper;->checkAvailable()V

    .line 2501
    const/4 v1, 0x1

    sput-boolean v1, Lcom/gridlayout/GridLayout;->mResolveSizeAndStateAvailable:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2506
    .local v0, t:Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 2503
    .end local v0           #t:Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 2504
    .restart local v0       #t:Ljava/lang/Throwable;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/gridlayout/GridLayout;->mResolveSizeAndStateAvailable:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gridlayout/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/gridlayout/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    new-instance v1, Lcom/gridlayout/GridLayout$Axis;

    invoke-direct {v1, p0, v3, v4}, Lcom/gridlayout/GridLayout$Axis;-><init>(Lcom/gridlayout/GridLayout;ZLcom/gridlayout/GridLayout$1;)V

    iput-object v1, p0, Lcom/gridlayout/GridLayout;->horizontalAxis:Lcom/gridlayout/GridLayout$Axis;

    .line 153
    new-instance v1, Lcom/gridlayout/GridLayout$Axis;

    invoke-direct {v1, p0, v2, v4}, Lcom/gridlayout/GridLayout$Axis;-><init>(Lcom/gridlayout/GridLayout;ZLcom/gridlayout/GridLayout$1;)V

    iput-object v1, p0, Lcom/gridlayout/GridLayout;->verticalAxis:Lcom/gridlayout/GridLayout$Axis;

    .line 154
    iput-boolean v2, p0, Lcom/gridlayout/GridLayout;->layoutParamsValid:Z

    .line 155
    iput v2, p0, Lcom/gridlayout/GridLayout;->orientation:I

    .line 156
    iput-boolean v2, p0, Lcom/gridlayout/GridLayout;->useDefaultMargins:Z

    .line 157
    iput v3, p0, Lcom/gridlayout/GridLayout;->alignmentMode:I

    .line 2467
    new-instance v1, Lcom/gridlayout/GridLayout$7;

    invoke-direct {v1, p0}, Lcom/gridlayout/GridLayout$7;-><init>(Lcom/gridlayout/GridLayout;)V

    iput-object v1, p0, Lcom/gridlayout/GridLayout;->GRIDLAYOUT_LISTENER:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/gridlayout/R$dimen;->default_gap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/gridlayout/GridLayout;->defaultGap:I

    .line 171
    sget-object v1, Lcom/gridlayout/R$styleable;->GridLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 173
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    const/high16 v2, -0x8000

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/gridlayout/GridLayout;->setRowCount(I)V

    .line 174
    const/4 v1, 0x3

    const/high16 v2, -0x8000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/gridlayout/GridLayout;->setColumnCount(I)V

    .line 175
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/gridlayout/GridLayout;->setOrientation(I)V

    .line 176
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/gridlayout/GridLayout;->setUseDefaultMargins(Z)V

    .line 177
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/gridlayout/GridLayout;->setAlignmentMode(I)V

    .line 178
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/gridlayout/GridLayout;->setRowOrderPreserved(Z)V

    .line 179
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/gridlayout/GridLayout;->setColumnOrderPreserved(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    iget-object v1, p0, Lcom/gridlayout/GridLayout;->GRIDLAYOUT_LISTENER:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 186
    return-void

    .line 181
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$400(Lcom/gridlayout/GridLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->mListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/gridlayout/GridLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->invalidateStructure()V

    return-void
.end method

.method static append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, a:[Ljava/lang/Object;,"[TT;"
    .local p1, b:[Ljava/lang/Object;,"[TT;"
    const/4 v4, 0x0

    .line 469
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 470
    .local v0, result:[Ljava/lang/Object;,"[TT;"
    array-length v1, p0

    invoke-static {p0, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    return-object v0
.end method

.method static canStretch(I)Z
    .locals 1
    .parameter "flexibility"

    .prologue
    .line 2409
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static clip(Lcom/gridlayout/GridLayout$Interval;ZI)I
    .locals 3
    .parameter "minorRange"
    .parameter "minorWasDefined"
    .parameter "count"

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/gridlayout/GridLayout$Interval;->size()I

    move-result v1

    .line 567
    .local v1, size:I
    if-nez p2, :cond_0

    .line 571
    .end local v1           #size:I
    :goto_0
    return v1

    .line 570
    .restart local v1       #size:I
    :cond_0
    if-eqz p1, :cond_1

    iget v2, p0, Lcom/gridlayout/GridLayout$Interval;->min:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 571
    .local v0, min:I
    :goto_1
    sub-int v2, p2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 570
    .end local v0           #min:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 8
    .parameter "graphics"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "paint"

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getPaddingLeft()I

    move-result v6

    .line 681
    .local v6, dx:I
    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getPaddingTop()I

    move-result v7

    .line 682
    .local v7, dy:I
    add-int v0, v6, p2

    int-to-float v1, v0

    add-int v0, v7, p3

    int-to-float v2, v0

    add-int v0, v6, p4

    int-to-float v3, v0

    add-int v0, v7, p5

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 683
    return-void
.end method

.method private static drawRect(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "paint"

    .prologue
    .line 686
    int-to-float v1, p1

    int-to-float v2, p2

    add-int/lit8 v0, p3, -0x1

    int-to-float v3, v0

    add-int/lit8 v0, p4, -0x1

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 687
    return-void
.end method

.method private static fits([IIII)Z
    .locals 3
    .parameter "a"
    .parameter "value"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v1, 0x0

    .line 543
    array-length v2, p0

    if-le p3, v2, :cond_1

    .line 551
    :cond_0
    :goto_0
    return v1

    .line 546
    :cond_1
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 547
    aget v2, p0, v0

    if-gt v2, p1, :cond_0

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 551
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static getAlignment(IZ)Lcom/gridlayout/GridLayout$Alignment;
    .locals 4
    .parameter "gravity"
    .parameter "horizontal"

    .prologue
    .line 476
    if-eqz p1, :cond_0

    const/4 v1, 0x7

    .line 477
    .local v1, mask:I
    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 478
    .local v2, shift:I
    :goto_1
    and-int v3, p0, v1

    shr-int v0, v3, v2

    .line 479
    .local v0, flags:I
    packed-switch v0, :pswitch_data_0

    .line 489
    :pswitch_0
    sget-object v3, Lcom/gridlayout/GridLayout;->UNDEFINED_ALIGNMENT:Lcom/gridlayout/GridLayout$Alignment;

    :goto_2
    return-object v3

    .line 476
    .end local v0           #flags:I
    .end local v1           #mask:I
    .end local v2           #shift:I
    :cond_0
    const/16 v1, 0x70

    goto :goto_0

    .line 477
    .restart local v1       #mask:I
    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    .line 481
    .restart local v0       #flags:I
    .restart local v2       #shift:I
    :pswitch_1
    sget-object v3, Lcom/gridlayout/GridLayout;->LEADING:Lcom/gridlayout/GridLayout$Alignment;

    goto :goto_2

    .line 483
    :pswitch_2
    sget-object v3, Lcom/gridlayout/GridLayout;->TRAILING:Lcom/gridlayout/GridLayout$Alignment;

    goto :goto_2

    .line 485
    :pswitch_3
    sget-object v3, Lcom/gridlayout/GridLayout;->FILL:Lcom/gridlayout/GridLayout$Alignment;

    goto :goto_2

    .line 487
    :pswitch_4
    sget-object v3, Lcom/gridlayout/GridLayout;->CENTER:Lcom/gridlayout/GridLayout$Alignment;

    goto :goto_2

    .line 479
    nop

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

.method private getDefaultMargin(Landroid/view/View;ZZ)I
    .locals 2
    .parameter "c"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 495
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/gridlayout/Space;

    if-ne v0, v1, :cond_0

    .line 496
    const/4 v0, 0x0

    .line 498
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/gridlayout/GridLayout;->defaultGap:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getDefaultMargin(Landroid/view/View;ZZZ)I
    .locals 1
    .parameter "c"
    .parameter "isAtEdge"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 502
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/gridlayout/GridLayout;->getDefaultMargin(Landroid/view/View;ZZ)I

    move-result v0

    goto :goto_0
.end method

.method private getDefaultMarginValue(Landroid/view/View;Lcom/gridlayout/GridLayout$LayoutParams;ZZ)I
    .locals 7
    .parameter "c"
    .parameter "p"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 506
    iget-boolean v5, p0, Lcom/gridlayout/GridLayout;->useDefaultMargins:Z

    if-nez v5, :cond_0

    .line 514
    :goto_0
    return v4

    .line 509
    :cond_0
    if-eqz p3, :cond_2

    iget-object v3, p2, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 510
    .local v3, spec:Lcom/gridlayout/GridLayout$Spec;
    :goto_1
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/gridlayout/GridLayout;->horizontalAxis:Lcom/gridlayout/GridLayout$Axis;

    .line 511
    .local v0, axis:Lcom/gridlayout/GridLayout$Axis;
    :goto_2
    iget-object v2, v3, Lcom/gridlayout/GridLayout$Spec;->span:Lcom/gridlayout/GridLayout$Interval;

    .line 512
    .local v2, span:Lcom/gridlayout/GridLayout$Interval;
    if-eqz p4, :cond_5

    iget v5, v2, Lcom/gridlayout/GridLayout$Interval;->min:I

    if-nez v5, :cond_4

    .line 514
    .local v1, isAtEdge:Z
    :cond_1
    :goto_3
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/gridlayout/GridLayout;->getDefaultMargin(Landroid/view/View;ZZZ)I

    move-result v4

    goto :goto_0

    .line 509
    .end local v0           #axis:Lcom/gridlayout/GridLayout$Axis;
    .end local v1           #isAtEdge:Z
    .end local v2           #span:Lcom/gridlayout/GridLayout$Interval;
    .end local v3           #spec:Lcom/gridlayout/GridLayout$Spec;
    :cond_2
    iget-object v3, p2, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;

    goto :goto_1

    .line 510
    .restart local v3       #spec:Lcom/gridlayout/GridLayout$Spec;
    :cond_3
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->verticalAxis:Lcom/gridlayout/GridLayout$Axis;

    goto :goto_2

    .restart local v0       #axis:Lcom/gridlayout/GridLayout$Axis;
    .restart local v2       #span:Lcom/gridlayout/GridLayout$Interval;
    :cond_4
    move v1, v4

    .line 512
    goto :goto_3

    :cond_5
    iget v5, v2, Lcom/gridlayout/GridLayout$Interval;->max:I

    invoke-virtual {v0}, Lcom/gridlayout/GridLayout$Axis;->getCount()I

    move-result v6

    if-eq v5, v6, :cond_1

    move v1, v4

    goto :goto_3
.end method

.method private getLayoutParams1(Landroid/view/View;)Lcom/gridlayout/GridLayout$LayoutParams;
    .locals 1
    .parameter "c"

    .prologue
    .line 651
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/gridlayout/GridLayout$LayoutParams;

    return-object v0
.end method

.method private getMargin(Landroid/view/View;ZZ)I
    .locals 7
    .parameter "view"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 526
    iget v5, p0, Lcom/gridlayout/GridLayout;->alignmentMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 527
    invoke-virtual {p0, p1, p2, p3}, Lcom/gridlayout/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v5

    .line 534
    :goto_0
    return v5

    .line 529
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/gridlayout/GridLayout;->horizontalAxis:Lcom/gridlayout/GridLayout$Axis;

    .line 530
    .local v0, axis:Lcom/gridlayout/GridLayout$Axis;
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lcom/gridlayout/GridLayout$Axis;->getLeadingMargins()[I

    move-result-object v3

    .line 531
    .local v3, margins:[I
    :goto_2
    invoke-virtual {p0, p1}, Lcom/gridlayout/GridLayout;->getLayoutParams(Landroid/view/View;)Lcom/gridlayout/GridLayout$LayoutParams;

    move-result-object v2

    .line 532
    .local v2, lp:Lcom/gridlayout/GridLayout$LayoutParams;
    if-eqz p2, :cond_3

    iget-object v4, v2, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 533
    .local v4, spec:Lcom/gridlayout/GridLayout$Spec;
    :goto_3
    if-eqz p3, :cond_4

    iget-object v5, v4, Lcom/gridlayout/GridLayout$Spec;->span:Lcom/gridlayout/GridLayout$Interval;

    iget v1, v5, Lcom/gridlayout/GridLayout$Interval;->min:I

    .line 534
    .local v1, index:I
    :goto_4
    aget v5, v3, v1

    goto :goto_0

    .line 529
    .end local v0           #axis:Lcom/gridlayout/GridLayout$Axis;
    .end local v1           #index:I
    .end local v2           #lp:Lcom/gridlayout/GridLayout$LayoutParams;
    .end local v3           #margins:[I
    .end local v4           #spec:Lcom/gridlayout/GridLayout$Spec;
    :cond_1
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->verticalAxis:Lcom/gridlayout/GridLayout$Axis;

    goto :goto_1

    .line 530
    .restart local v0       #axis:Lcom/gridlayout/GridLayout$Axis;
    :cond_2
    invoke-virtual {v0}, Lcom/gridlayout/GridLayout$Axis;->getTrailingMargins()[I

    move-result-object v3

    goto :goto_2

    .line 532
    .restart local v2       #lp:Lcom/gridlayout/GridLayout$LayoutParams;
    .restart local v3       #margins:[I
    :cond_3
    iget-object v4, v2, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;

    goto :goto_3

    .line 533
    .restart local v4       #spec:Lcom/gridlayout/GridLayout$Spec;
    :cond_4
    iget-object v5, v4, Lcom/gridlayout/GridLayout$Spec;->span:Lcom/gridlayout/GridLayout$Interval;

    iget v1, v5, Lcom/gridlayout/GridLayout$Interval;->max:I

    goto :goto_4
.end method

.method private getMeasurement(Landroid/view/View;Z)I
    .locals 1
    .parameter "c"
    .parameter "horizontal"

    .prologue
    .line 822
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getTotalMargin(Landroid/view/View;Z)I
    .locals 2
    .parameter "child"
    .parameter "horizontal"

    .prologue
    .line 539
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/gridlayout/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/gridlayout/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private invalidateStructure()V
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gridlayout/GridLayout;->layoutParamsValid:Z

    .line 635
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->horizontalAxis:Lcom/gridlayout/GridLayout$Axis;

    invoke-virtual {v0}, Lcom/gridlayout/GridLayout$Axis;->invalidateStructure()V

    .line 636
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->verticalAxis:Lcom/gridlayout/GridLayout$Axis;

    invoke-virtual {v0}, Lcom/gridlayout/GridLayout$Axis;->invalidateStructure()V

    .line 638
    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->invalidateValues()V

    .line 639
    return-void
.end method

.method private invalidateValues()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->horizontalAxis:Lcom/gridlayout/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gridlayout/GridLayout;->verticalAxis:Lcom/gridlayout/GridLayout$Axis;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->horizontalAxis:Lcom/gridlayout/GridLayout$Axis;

    invoke-virtual {v0}, Lcom/gridlayout/GridLayout$Axis;->invalidateValues()V

    .line 646
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->verticalAxis:Lcom/gridlayout/GridLayout$Axis;

    invoke-virtual {v0}, Lcom/gridlayout/GridLayout$Axis;->invalidateValues()V

    .line 648
    :cond_0
    return-void
.end method

.method static max2([II)I
    .locals 4
    .parameter "a"
    .parameter "valueIfEmpty"

    .prologue
    .line 460
    move v2, p1

    .line 461
    .local v2, result:I
    const/4 v1, 0x0

    .local v1, i:I
    array-length v0, p0

    .local v0, N:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 462
    aget v3, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 461
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    :cond_0
    return v2
.end method

.method private measureChildWithMargins2(Landroid/view/View;IIII)V
    .locals 4
    .parameter "child"
    .parameter "parentWidthSpec"
    .parameter "parentHeightSpec"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/gridlayout/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p2, v2, p4}, Lcom/gridlayout/GridLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 747
    .local v1, childWidthSpec:I
    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/gridlayout/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p3, v2, p5}, Lcom/gridlayout/GridLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 749
    .local v0, childHeightSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 750
    return-void
.end method

.method private measureChildrenWithMargins(IIZ)V
    .locals 22
    .parameter "widthSpec"
    .parameter "heightSpec"
    .parameter "firstPass"

    .prologue
    .line 753
    const/16 v17, 0x0

    .local v17, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/gridlayout/GridLayout;->getChildCount()I

    move-result v13

    .local v13, N:I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v13, :cond_7

    .line 754
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/gridlayout/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 755
    .local v3, c:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gridlayout/GridLayout;->isGone(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 753
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 756
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gridlayout/GridLayout;->getLayoutParams(Landroid/view/View;)Lcom/gridlayout/GridLayout$LayoutParams;

    move-result-object v19

    .line 757
    .local v19, lp:Lcom/gridlayout/GridLayout$LayoutParams;
    if-eqz p3, :cond_2

    .line 758
    move-object/from16 v0, v19

    iget v6, v0, Lcom/gridlayout/GridLayout$LayoutParams;->width:I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/gridlayout/GridLayout$LayoutParams;->height:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/gridlayout/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_1

    .line 760
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/gridlayout/GridLayout;->orientation:I

    if-nez v2, :cond_3

    const/16 v16, 0x1

    .line 761
    .local v16, horizontal:Z
    :goto_2
    if-eqz v16, :cond_4

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    move-object/from16 v21, v0

    .line 762
    .local v21, spec:Lcom/gridlayout/GridLayout$Spec;
    :goto_3
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/gridlayout/GridLayout$Spec;->alignment:Lcom/gridlayout/GridLayout$Alignment;

    sget-object v4, Lcom/gridlayout/GridLayout;->FILL:Lcom/gridlayout/GridLayout$Alignment;

    if-ne v2, v4, :cond_0

    .line 763
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/gridlayout/GridLayout$Spec;->span:Lcom/gridlayout/GridLayout$Interval;

    move-object/from16 v20, v0

    .line 764
    .local v20, span:Lcom/gridlayout/GridLayout$Interval;
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gridlayout/GridLayout;->horizontalAxis:Lcom/gridlayout/GridLayout$Axis;

    .line 765
    .local v14, axis:Lcom/gridlayout/GridLayout$Axis;
    :goto_4
    invoke-virtual {v14}, Lcom/gridlayout/GridLayout$Axis;->getLocations()[I

    move-result-object v18

    .line 766
    .local v18, locations:[I
    move-object/from16 v0, v20

    iget v2, v0, Lcom/gridlayout/GridLayout$Interval;->max:I

    aget v2, v18, v2

    move-object/from16 v0, v20

    iget v4, v0, Lcom/gridlayout/GridLayout$Interval;->min:I

    aget v4, v18, v4

    sub-int v15, v2, v4

    .line 767
    .local v15, cellSize:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/gridlayout/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v2

    sub-int v6, v15, v2

    .line 768
    .local v6, viewSize:I
    if-eqz v16, :cond_6

    .line 769
    move-object/from16 v0, v19

    iget v7, v0, Lcom/gridlayout/GridLayout$LayoutParams;->height:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/gridlayout/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_1

    .line 760
    .end local v6           #viewSize:I
    .end local v14           #axis:Lcom/gridlayout/GridLayout$Axis;
    .end local v15           #cellSize:I
    .end local v16           #horizontal:Z
    .end local v18           #locations:[I
    .end local v20           #span:Lcom/gridlayout/GridLayout$Interval;
    .end local v21           #spec:Lcom/gridlayout/GridLayout$Spec;
    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 761
    .restart local v16       #horizontal:Z
    :cond_4
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;

    move-object/from16 v21, v0

    goto :goto_3

    .line 764
    .restart local v20       #span:Lcom/gridlayout/GridLayout$Interval;
    .restart local v21       #spec:Lcom/gridlayout/GridLayout$Spec;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gridlayout/GridLayout;->verticalAxis:Lcom/gridlayout/GridLayout$Axis;

    goto :goto_4

    .line 771
    .restart local v6       #viewSize:I
    .restart local v14       #axis:Lcom/gridlayout/GridLayout$Axis;
    .restart local v15       #cellSize:I
    .restart local v18       #locations:[I
    :cond_6
    move-object/from16 v0, v19

    iget v11, v0, Lcom/gridlayout/GridLayout$LayoutParams;->width:I

    move-object/from16 v7, p0

    move-object v8, v3

    move/from16 v9, p1

    move/from16 v10, p2

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/gridlayout/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto/16 :goto_1

    .line 776
    .end local v3           #c:Landroid/view/View;
    .end local v6           #viewSize:I
    .end local v14           #axis:Lcom/gridlayout/GridLayout$Axis;
    .end local v15           #cellSize:I
    .end local v16           #horizontal:Z
    .end local v18           #locations:[I
    .end local v19           #lp:Lcom/gridlayout/GridLayout$LayoutParams;
    .end local v20           #span:Lcom/gridlayout/GridLayout$Interval;
    .end local v21           #spec:Lcom/gridlayout/GridLayout$Spec;
    :cond_7
    return-void
.end method

.method private static procrusteanFill([IIII)V
    .locals 3
    .parameter "a"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 555
    array-length v0, p0

    .line 556
    .local v0, length:I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, v1, v2, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 557
    return-void
.end method

.method private protect(I)I
    .locals 1
    .parameter "alignment"

    .prologue
    .line 818
    const/high16 v0, -0x8000

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .end local p1
    :cond_0
    return p1
.end method

.method private static setCellGroup(Lcom/gridlayout/GridLayout$LayoutParams;IIII)V
    .locals 2
    .parameter "lp"
    .parameter "row"
    .parameter "rowSpan"
    .parameter "col"
    .parameter "colSpan"

    .prologue
    .line 560
    new-instance v0, Lcom/gridlayout/GridLayout$Interval;

    add-int v1, p1, p2

    invoke-direct {v0, p1, v1}, Lcom/gridlayout/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/gridlayout/GridLayout$LayoutParams;->setRowSpecSpan(Lcom/gridlayout/GridLayout$Interval;)V

    .line 561
    new-instance v0, Lcom/gridlayout/GridLayout$Interval;

    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Lcom/gridlayout/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/gridlayout/GridLayout$LayoutParams;->setColumnSpecSpan(Lcom/gridlayout/GridLayout$Interval;)V

    .line 562
    return-void
.end method

.method public static spec(I)Lcom/gridlayout/GridLayout$Spec;
    .locals 1
    .parameter "start"

    .prologue
    .line 2223
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/gridlayout/GridLayout;->spec(II)Lcom/gridlayout/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(II)Lcom/gridlayout/GridLayout$Spec;
    .locals 1
    .parameter "start"
    .parameter "size"

    .prologue
    .line 2211
    sget-object v0, Lcom/gridlayout/GridLayout;->UNDEFINED_ALIGNMENT:Lcom/gridlayout/GridLayout$Alignment;

    invoke-static {p0, p1, v0}, Lcom/gridlayout/GridLayout;->spec(IILcom/gridlayout/GridLayout$Alignment;)Lcom/gridlayout/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IILcom/gridlayout/GridLayout$Alignment;)Lcom/gridlayout/GridLayout$Spec;
    .locals 6
    .parameter "start"
    .parameter "size"
    .parameter "alignment"

    .prologue
    .line 2184
    new-instance v0, Lcom/gridlayout/GridLayout$Spec;

    const/high16 v1, -0x8000

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v5, 0x0

    move v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/gridlayout/GridLayout$Spec;-><init>(ZIILcom/gridlayout/GridLayout$Alignment;Lcom/gridlayout/GridLayout$1;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static spec(ILcom/gridlayout/GridLayout$Alignment;)Lcom/gridlayout/GridLayout$Spec;
    .locals 1
    .parameter "start"
    .parameter "alignment"

    .prologue
    .line 2198
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/gridlayout/GridLayout;->spec(IILcom/gridlayout/GridLayout$Alignment;)Lcom/gridlayout/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method private validateLayoutParams()V
    .locals 21

    .prologue
    .line 576
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gridlayout/GridLayout;->orientation:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    const/4 v5, 0x1

    .line 577
    .local v5, horizontal:Z
    :goto_0
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gridlayout/GridLayout;->horizontalAxis:Lcom/gridlayout/GridLayout$Axis;

    .line 578
    .local v3, axis:Lcom/gridlayout/GridLayout$Axis;
    :goto_1
    iget v0, v3, Lcom/gridlayout/GridLayout$Axis;->definedCount:I

    move/from16 v19, v0

    const/high16 v20, -0x8000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    iget v4, v3, Lcom/gridlayout/GridLayout$Axis;->definedCount:I

    .line 580
    .local v4, count:I
    :goto_2
    const/4 v8, 0x0

    .line 581
    .local v8, major:I
    const/4 v14, 0x0

    .line 582
    .local v14, minor:I
    new-array v13, v4, [I

    .line 584
    .local v13, maxSizes:[I
    const/4 v6, 0x0

    .local v6, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/gridlayout/GridLayout;->getChildCount()I

    move-result v2

    .local v2, N:I
    :goto_3
    if-ge v6, v2, :cond_d

    .line 585
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/gridlayout/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/gridlayout/GridLayout;->getLayoutParams1(Landroid/view/View;)Lcom/gridlayout/GridLayout$LayoutParams;

    move-result-object v7

    .line 587
    .local v7, lp:Lcom/gridlayout/GridLayout$LayoutParams;
    if-eqz v5, :cond_6

    iget-object v11, v7, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 588
    .local v11, majorSpec:Lcom/gridlayout/GridLayout$Spec;
    :goto_4
    iget-object v9, v11, Lcom/gridlayout/GridLayout$Spec;->span:Lcom/gridlayout/GridLayout$Interval;

    .line 589
    .local v9, majorRange:Lcom/gridlayout/GridLayout$Interval;
    iget-boolean v12, v11, Lcom/gridlayout/GridLayout$Spec;->startDefined:Z

    .line 590
    .local v12, majorWasDefined:Z
    invoke-virtual {v9}, Lcom/gridlayout/GridLayout$Interval;->size()I

    move-result v10

    .line 591
    .local v10, majorSpan:I
    if-eqz v12, :cond_0

    .line 592
    iget v8, v9, Lcom/gridlayout/GridLayout$Interval;->min:I

    .line 595
    :cond_0
    if-eqz v5, :cond_7

    iget-object v0, v7, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    move-object/from16 v17, v0

    .line 596
    .local v17, minorSpec:Lcom/gridlayout/GridLayout$Spec;
    :goto_5
    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/gridlayout/GridLayout$Spec;->span:Lcom/gridlayout/GridLayout$Interval;

    .line 597
    .local v15, minorRange:Lcom/gridlayout/GridLayout$Interval;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/gridlayout/GridLayout$Spec;->startDefined:Z

    move/from16 v18, v0

    .line 598
    .local v18, minorWasDefined:Z
    move/from16 v0, v18

    invoke-static {v15, v0, v4}, Lcom/gridlayout/GridLayout;->clip(Lcom/gridlayout/GridLayout$Interval;ZI)I

    move-result v16

    .line 599
    .local v16, minorSpan:I
    if-eqz v18, :cond_1

    .line 600
    iget v14, v15, Lcom/gridlayout/GridLayout$Interval;->min:I

    .line 603
    :cond_1
    if-eqz v4, :cond_b

    .line 605
    if-eqz v12, :cond_2

    if-nez v18, :cond_a

    .line 606
    :cond_2
    :goto_6
    add-int v19, v14, v16

    move/from16 v0, v19

    invoke-static {v13, v8, v14, v0}, Lcom/gridlayout/GridLayout;->fits([IIII)Z

    move-result v19

    if-nez v19, :cond_a

    .line 607
    if-eqz v18, :cond_8

    .line 608
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 576
    .end local v2           #N:I
    .end local v3           #axis:Lcom/gridlayout/GridLayout$Axis;
    .end local v4           #count:I
    .end local v5           #horizontal:Z
    .end local v6           #i:I
    .end local v7           #lp:Lcom/gridlayout/GridLayout$LayoutParams;
    .end local v8           #major:I
    .end local v9           #majorRange:Lcom/gridlayout/GridLayout$Interval;
    .end local v10           #majorSpan:I
    .end local v11           #majorSpec:Lcom/gridlayout/GridLayout$Spec;
    .end local v12           #majorWasDefined:Z
    .end local v13           #maxSizes:[I
    .end local v14           #minor:I
    .end local v15           #minorRange:Lcom/gridlayout/GridLayout$Interval;
    .end local v16           #minorSpan:I
    .end local v17           #minorSpec:Lcom/gridlayout/GridLayout$Spec;
    .end local v18           #minorWasDefined:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 577
    .restart local v5       #horizontal:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gridlayout/GridLayout;->verticalAxis:Lcom/gridlayout/GridLayout$Axis;

    goto :goto_1

    .line 578
    .restart local v3       #axis:Lcom/gridlayout/GridLayout$Axis;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 587
    .restart local v2       #N:I
    .restart local v4       #count:I
    .restart local v6       #i:I
    .restart local v7       #lp:Lcom/gridlayout/GridLayout$LayoutParams;
    .restart local v8       #major:I
    .restart local v13       #maxSizes:[I
    .restart local v14       #minor:I
    :cond_6
    iget-object v11, v7, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    goto :goto_4

    .line 595
    .restart local v9       #majorRange:Lcom/gridlayout/GridLayout$Interval;
    .restart local v10       #majorSpan:I
    .restart local v11       #majorSpec:Lcom/gridlayout/GridLayout$Spec;
    .restart local v12       #majorWasDefined:Z
    :cond_7
    iget-object v0, v7, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;

    move-object/from16 v17, v0

    goto :goto_5

    .line 610
    .restart local v15       #minorRange:Lcom/gridlayout/GridLayout$Interval;
    .restart local v16       #minorSpan:I
    .restart local v17       #minorSpec:Lcom/gridlayout/GridLayout$Spec;
    .restart local v18       #minorWasDefined:Z
    :cond_8
    add-int v19, v14, v16

    move/from16 v0, v19

    if-gt v0, v4, :cond_9

    .line 611
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 613
    :cond_9
    const/4 v14, 0x0

    .line 614
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 619
    :cond_a
    add-int v19, v14, v16

    add-int v20, v8, v10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v13, v14, v0, v1}, Lcom/gridlayout/GridLayout;->procrusteanFill([IIII)V

    .line 622
    :cond_b
    if-eqz v5, :cond_c

    .line 623
    move/from16 v0, v16

    invoke-static {v7, v8, v10, v14, v0}, Lcom/gridlayout/GridLayout;->setCellGroup(Lcom/gridlayout/GridLayout$LayoutParams;IIII)V

    .line 628
    :goto_7
    add-int v14, v14, v16

    .line 584
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 625
    :cond_c
    move/from16 v0, v16

    invoke-static {v7, v14, v0, v8, v10}, Lcom/gridlayout/GridLayout;->setCellGroup(Lcom/gridlayout/GridLayout$LayoutParams;IIII)V

    goto :goto_7

    .line 630
    .end local v7           #lp:Lcom/gridlayout/GridLayout$LayoutParams;
    .end local v9           #majorRange:Lcom/gridlayout/GridLayout$Interval;
    .end local v10           #majorSpan:I
    .end local v11           #majorSpec:Lcom/gridlayout/GridLayout$Spec;
    .end local v12           #majorWasDefined:Z
    .end local v15           #minorRange:Lcom/gridlayout/GridLayout$Interval;
    .end local v16           #minorSpan:I
    .end local v17           #minorSpec:Lcom/gridlayout/GridLayout$Spec;
    .end local v18           #minorWasDefined:Z
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/gridlayout/GridLayout;->invalidateStructure()V

    .line 631
    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->generateDefaultLayoutParams()Lcom/gridlayout/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/gridlayout/GridLayout$LayoutParams;
    .locals 1

    .prologue
    .line 664
    new-instance v0, Lcom/gridlayout/GridLayout$LayoutParams;

    invoke-direct {v0}, Lcom/gridlayout/GridLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/gridlayout/GridLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/gridlayout/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/gridlayout/GridLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/gridlayout/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/gridlayout/GridLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 669
    new-instance v0, Lcom/gridlayout/GridLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/gridlayout/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/gridlayout/GridLayout$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 674
    new-instance v0, Lcom/gridlayout/GridLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/gridlayout/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method final getAlignment(Lcom/gridlayout/GridLayout$Alignment;Z)Lcom/gridlayout/GridLayout$Alignment;
    .locals 1
    .parameter "alignment"
    .parameter "horizontal"

    .prologue
    .line 839
    sget-object v0, Lcom/gridlayout/GridLayout;->UNDEFINED_ALIGNMENT:Lcom/gridlayout/GridLayout$Alignment;

    if-eq p1, v0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Lcom/gridlayout/GridLayout;->LEFT:Lcom/gridlayout/GridLayout$Alignment;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/gridlayout/GridLayout;->BASELINE:Lcom/gridlayout/GridLayout$Alignment;

    goto :goto_0
.end method

.method public getAlignmentMode()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/gridlayout/GridLayout;->alignmentMode:I

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->horizontalAxis:Lcom/gridlayout/GridLayout$Axis;

    invoke-virtual {v0}, Lcom/gridlayout/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method final getLayoutParams(Landroid/view/View;)Lcom/gridlayout/GridLayout$LayoutParams;
    .locals 1
    .parameter "c"

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/gridlayout/GridLayout;->layoutParamsValid:Z

    if-nez v0, :cond_0

    .line 656
    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->validateLayoutParams()V

    .line 657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gridlayout/GridLayout;->layoutParamsValid:Z

    .line 659
    :cond_0
    invoke-direct {p0, p1}, Lcom/gridlayout/GridLayout;->getLayoutParams1(Landroid/view/View;)Lcom/gridlayout/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method getMargin1(Landroid/view/View;ZZ)I
    .locals 3
    .parameter "view"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lcom/gridlayout/GridLayout;->getLayoutParams(Landroid/view/View;)Lcom/gridlayout/GridLayout$LayoutParams;

    move-result-object v0

    .line 519
    .local v0, lp:Lcom/gridlayout/GridLayout$LayoutParams;
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget v1, v0, Lcom/gridlayout/GridLayout$LayoutParams;->leftMargin:I

    .line 522
    .local v1, margin:I
    :goto_0
    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/gridlayout/GridLayout;->getDefaultMarginValue(Landroid/view/View;Lcom/gridlayout/GridLayout$LayoutParams;ZZ)I

    move-result v1

    .end local v1           #margin:I
    :cond_0
    return v1

    .line 519
    :cond_1
    iget v1, v0, Lcom/gridlayout/GridLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget v1, v0, Lcom/gridlayout/GridLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    iget v1, v0, Lcom/gridlayout/GridLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method final getMeasurementIncludingMargin(Landroid/view/View;Z)I
    .locals 2
    .parameter "c"
    .parameter "horizontal"

    .prologue
    .line 826
    invoke-virtual {p0, p1}, Lcom/gridlayout/GridLayout;->isGone(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    const/4 v0, 0x0

    .line 829
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/gridlayout/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/gridlayout/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/gridlayout/GridLayout;->orientation:I

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->verticalAxis:Lcom/gridlayout/GridLayout$Axis;

    invoke-virtual {v0}, Lcom/gridlayout/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method public getUseDefaultMargins()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/gridlayout/GridLayout;->useDefaultMargins:Z

    return v0
.end method

.method public isColumnOrderPreserved()Z
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->horizontalAxis:Lcom/gridlayout/GridLayout$Axis;

    invoke-virtual {v0}, Lcom/gridlayout/GridLayout$Axis;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method final isGone(Landroid/view/View;)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 740
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

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

.method public isRowOrderPreserved()Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->verticalAxis:Lcom/gridlayout/GridLayout$Axis;

    invoke-virtual {v0}, Lcom/gridlayout/GridLayout$Axis;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method public notifyChildVisibilityChanged()V
    .locals 0

    .prologue
    .line 2536
    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->invalidateStructure()V

    .line 2537
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 691
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 735
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 50
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 859
    sub-int v38, p4, p2

    .line 860
    .local v38, targetWidth:I
    sub-int v37, p5, p3

    .line 862
    .local v37, targetHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/gridlayout/GridLayout;->getPaddingLeft()I

    move-result v30

    .line 863
    .local v30, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/gridlayout/GridLayout;->getPaddingTop()I

    move-result v32

    .line 864
    .local v32, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/gridlayout/GridLayout;->getPaddingRight()I

    move-result v31

    .line 865
    .local v31, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/gridlayout/GridLayout;->getPaddingBottom()I

    move-result v29

    .line 867
    .local v29, paddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gridlayout/GridLayout;->horizontalAxis:Lcom/gridlayout/GridLayout$Axis;

    move-object/from16 v48, v0

    sub-int v49, v38, v30

    sub-int v49, v49, v31

    invoke-virtual/range {v48 .. v49}, Lcom/gridlayout/GridLayout$Axis;->layout(I)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gridlayout/GridLayout;->verticalAxis:Lcom/gridlayout/GridLayout$Axis;

    move-object/from16 v48, v0

    sub-int v49, v37, v32

    sub-int v49, v49, v29

    invoke-virtual/range {v48 .. v49}, Lcom/gridlayout/GridLayout$Axis;->layout(I)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gridlayout/GridLayout;->horizontalAxis:Lcom/gridlayout/GridLayout$Axis;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/gridlayout/GridLayout$Axis;->getLocations()[I

    move-result-object v20

    .line 871
    .local v20, hLocations:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gridlayout/GridLayout;->verticalAxis:Lcom/gridlayout/GridLayout$Axis;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/gridlayout/GridLayout$Axis;->getLocations()[I

    move-result-object v42

    .line 873
    .local v42, vLocations:[I
    const/16 v22, 0x0

    .local v22, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/gridlayout/GridLayout;->getChildCount()I

    move-result v3

    .local v3, N:I
    :goto_0
    move/from16 v0, v22

    if-ge v0, v3, :cond_3

    .line 874
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/gridlayout/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 875
    .local v7, c:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gridlayout/GridLayout;->isGone(Landroid/view/View;)Z

    move-result v48

    if-eqz v48, :cond_0

    .line 873
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 876
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gridlayout/GridLayout;->getLayoutParams(Landroid/view/View;)Lcom/gridlayout/GridLayout$LayoutParams;

    move-result-object v24

    .line 877
    .local v24, lp:Lcom/gridlayout/GridLayout$LayoutParams;
    move-object/from16 v0, v24

    iget-object v14, v0, Lcom/gridlayout/GridLayout$LayoutParams;->columnSpec:Lcom/gridlayout/GridLayout$Spec;

    .line 878
    .local v14, columnSpec:Lcom/gridlayout/GridLayout$Spec;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/gridlayout/GridLayout$LayoutParams;->rowSpec:Lcom/gridlayout/GridLayout$Spec;

    move-object/from16 v36, v0

    .line 880
    .local v36, rowSpec:Lcom/gridlayout/GridLayout$Spec;
    iget-object v13, v14, Lcom/gridlayout/GridLayout$Spec;->span:Lcom/gridlayout/GridLayout$Interval;

    .line 881
    .local v13, colSpan:Lcom/gridlayout/GridLayout$Interval;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/gridlayout/GridLayout$Spec;->span:Lcom/gridlayout/GridLayout$Interval;

    move-object/from16 v35, v0

    .line 883
    .local v35, rowSpan:Lcom/gridlayout/GridLayout$Interval;
    iget v0, v13, Lcom/gridlayout/GridLayout$Interval;->min:I

    move/from16 v48, v0

    aget v44, v20, v48

    .line 884
    .local v44, x1:I
    move-object/from16 v0, v35

    iget v0, v0, Lcom/gridlayout/GridLayout$Interval;->min:I

    move/from16 v48, v0

    aget v46, v42, v48

    .line 886
    .local v46, y1:I
    iget v0, v13, Lcom/gridlayout/GridLayout$Interval;->max:I

    move/from16 v48, v0

    aget v45, v20, v48

    .line 887
    .local v45, x2:I
    move-object/from16 v0, v35

    iget v0, v0, Lcom/gridlayout/GridLayout$Interval;->max:I

    move/from16 v48, v0

    aget v47, v42, v48

    .line 889
    .local v47, y2:I
    sub-int v11, v45, v44

    .line 890
    .local v11, cellWidth:I
    sub-int v10, v47, v46

    .line 892
    .local v10, cellHeight:I
    const/16 v48, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v7, v1}, Lcom/gridlayout/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v28

    .line 893
    .local v28, pWidth:I
    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v7, v1}, Lcom/gridlayout/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v27

    .line 895
    .local v27, pHeight:I
    iget-object v0, v14, Lcom/gridlayout/GridLayout$Spec;->alignment:Lcom/gridlayout/GridLayout$Alignment;

    move-object/from16 v48, v0

    const/16 v49, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/gridlayout/GridLayout;->getAlignment(Lcom/gridlayout/GridLayout$Alignment;Z)Lcom/gridlayout/GridLayout$Alignment;

    move-result-object v19

    .line 896
    .local v19, hAlign:Lcom/gridlayout/GridLayout$Alignment;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/gridlayout/GridLayout$Spec;->alignment:Lcom/gridlayout/GridLayout$Alignment;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/gridlayout/GridLayout;->getAlignment(Lcom/gridlayout/GridLayout$Alignment;Z)Lcom/gridlayout/GridLayout$Alignment;

    move-result-object v41

    .line 900
    .local v41, vAlign:Lcom/gridlayout/GridLayout$Alignment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gridlayout/GridLayout;->horizontalAxis:Lcom/gridlayout/GridLayout$Axis;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/gridlayout/GridLayout$Axis;->getGroupBounds()Lcom/gridlayout/GridLayout$PackedMap;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/gridlayout/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/gridlayout/GridLayout$Bounds;

    .line 901
    .local v12, colBounds:Lcom/gridlayout/GridLayout$Bounds;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gridlayout/GridLayout;->verticalAxis:Lcom/gridlayout/GridLayout$Axis;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/gridlayout/GridLayout$Axis;->getGroupBounds()Lcom/gridlayout/GridLayout$PackedMap;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/gridlayout/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/gridlayout/GridLayout$Bounds;

    .line 905
    .local v34, rowBounds:Lcom/gridlayout/GridLayout$Bounds;
    const/16 v48, 0x0

    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-virtual {v12, v0}, Lcom/gridlayout/GridLayout$Bounds;->size(Z)I

    move-result v49

    sub-int v49, v11, v49

    move-object/from16 v0, v19

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/gridlayout/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;I)I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/gridlayout/GridLayout;->protect(I)I

    move-result v8

    .line 907
    .local v8, c2ax:I
    const/16 v48, 0x0

    const/16 v49, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/gridlayout/GridLayout$Bounds;->size(Z)I

    move-result v49

    sub-int v49, v10, v49

    move-object/from16 v0, v41

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/gridlayout/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;I)I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/gridlayout/GridLayout;->protect(I)I

    move-result v9

    .line 909
    .local v9, c2ay:I
    const/16 v48, 0x1

    const/16 v49, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v7, v1, v2}, Lcom/gridlayout/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v23

    .line 910
    .local v23, leftMargin:I
    const/16 v48, 0x0

    const/16 v49, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v7, v1, v2}, Lcom/gridlayout/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v39

    .line 911
    .local v39, topMargin:I
    const/16 v48, 0x1

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v7, v1, v2}, Lcom/gridlayout/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v33

    .line 912
    .local v33, rightMargin:I
    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v7, v1, v2}, Lcom/gridlayout/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v6

    .line 915
    .local v6, bottomMargin:I
    add-int v48, v23, v28

    add-int v26, v48, v33

    .line 916
    .local v26, mWidth:I
    add-int v48, v39, v27

    add-int v25, v48, v6

    .line 919
    .local v25, mHeight:I
    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v12, v7, v0, v1}, Lcom/gridlayout/GridLayout$Bounds;->getOffset(Landroid/view/View;Lcom/gridlayout/GridLayout$Alignment;I)I

    move-result v4

    .line 920
    .local v4, a2vx:I
    move-object/from16 v0, v34

    move-object/from16 v1, v41

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Lcom/gridlayout/GridLayout$Bounds;->getOffset(Landroid/view/View;Lcom/gridlayout/GridLayout$Alignment;I)I

    move-result v5

    .line 922
    .local v5, a2vy:I
    add-int v48, v8, v4

    add-int v17, v48, v23

    .line 923
    .local v17, dx:I
    add-int v48, v9, v5

    add-int v18, v48, v39

    .line 925
    .local v18, dy:I
    add-int v48, v23, v33

    sub-int v11, v11, v48

    .line 926
    add-int v48, v39, v6

    sub-int v10, v10, v48

    .line 928
    const/16 v40, 0x1

    .line 929
    .local v40, type:I
    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v40

    invoke-virtual {v0, v7, v1, v11, v2}, Lcom/gridlayout/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;III)I

    move-result v43

    .line 930
    .local v43, width:I
    move-object/from16 v0, v41

    move/from16 v1, v27

    move/from16 v2, v40

    invoke-virtual {v0, v7, v1, v10, v2}, Lcom/gridlayout/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;III)I

    move-result v21

    .line 932
    .local v21, height:I
    add-int v48, v30, v44

    add-int v15, v48, v17

    .line 933
    .local v15, cx:I
    add-int v48, v32, v46

    add-int v16, v48, v18

    .line 934
    .local v16, cy:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v48

    move/from16 v0, v43

    move/from16 v1, v48

    if-ne v0, v1, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v48

    move/from16 v0, v21

    move/from16 v1, v48

    if-eq v0, v1, :cond_2

    .line 935
    :cond_1
    const/high16 v48, 0x4000

    move/from16 v0, v43

    move/from16 v1, v48

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    const/high16 v49, 0x4000

    move/from16 v0, v21

    move/from16 v1, v49

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    move/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v7, v0, v1}, Landroid/view/View;->measure(II)V

    .line 937
    :cond_2
    add-int v48, v15, v43

    add-int v49, v16, v21

    move/from16 v0, v16

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v7, v15, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 939
    .end local v4           #a2vx:I
    .end local v5           #a2vy:I
    .end local v6           #bottomMargin:I
    .end local v7           #c:Landroid/view/View;
    .end local v8           #c2ax:I
    .end local v9           #c2ay:I
    .end local v10           #cellHeight:I
    .end local v11           #cellWidth:I
    .end local v12           #colBounds:Lcom/gridlayout/GridLayout$Bounds;
    .end local v13           #colSpan:Lcom/gridlayout/GridLayout$Interval;
    .end local v14           #columnSpec:Lcom/gridlayout/GridLayout$Spec;
    .end local v15           #cx:I
    .end local v16           #cy:I
    .end local v17           #dx:I
    .end local v18           #dy:I
    .end local v19           #hAlign:Lcom/gridlayout/GridLayout$Alignment;
    .end local v21           #height:I
    .end local v23           #leftMargin:I
    .end local v24           #lp:Lcom/gridlayout/GridLayout$LayoutParams;
    .end local v25           #mHeight:I
    .end local v26           #mWidth:I
    .end local v27           #pHeight:I
    .end local v28           #pWidth:I
    .end local v33           #rightMargin:I
    .end local v34           #rowBounds:Lcom/gridlayout/GridLayout$Bounds;
    .end local v35           #rowSpan:Lcom/gridlayout/GridLayout$Interval;
    .end local v36           #rowSpec:Lcom/gridlayout/GridLayout$Spec;
    .end local v39           #topMargin:I
    .end local v40           #type:I
    .end local v41           #vAlign:Lcom/gridlayout/GridLayout$Alignment;
    .end local v43           #width:I
    .end local v44           #x1:I
    .end local v45           #x2:I
    .end local v46           #y1:I
    .end local v47           #y2:I
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v8, 0x0

    .line 782
    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->invalidateValues()V

    .line 784
    const/4 v6, 0x1

    invoke-direct {p0, p1, p2, v6}, Lcom/gridlayout/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 789
    iget v6, p0, Lcom/gridlayout/GridLayout;->orientation:I

    if-nez v6, :cond_0

    .line 790
    iget-object v6, p0, Lcom/gridlayout/GridLayout;->horizontalAxis:Lcom/gridlayout/GridLayout$Axis;

    invoke-virtual {v6, p1}, Lcom/gridlayout/GridLayout$Axis;->getMeasure(I)I

    move-result v5

    .line 791
    .local v5, width:I
    invoke-direct {p0, p1, p2, v8}, Lcom/gridlayout/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 792
    iget-object v6, p0, Lcom/gridlayout/GridLayout;->verticalAxis:Lcom/gridlayout/GridLayout$Axis;

    invoke-virtual {v6, p2}, Lcom/gridlayout/GridLayout$Axis;->getMeasure(I)I

    move-result v1

    .line 799
    .local v1, height:I
    :goto_0
    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getPaddingRight()I

    move-result v7

    add-int v0, v6, v7

    .line 800
    .local v0, hPadding:I
    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getPaddingBottom()I

    move-result v7

    add-int v4, v6, v7

    .line 802
    .local v4, vPadding:I
    add-int v6, v0, v5

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 803
    .local v3, measuredWidth:I
    add-int v6, v4, v1

    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->getSuggestedMinimumHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 805
    .local v2, measuredHeight:I
    sget-boolean v6, Lcom/gridlayout/GridLayout;->mResolveSizeAndStateAvailable:Z

    if-eqz v6, :cond_1

    .line 806
    invoke-static {v3, p1, v8}, Lcom/gridlayout/GridLayout$ResolveSizeAndStateWrapper;->resolveSizeAndState(III)I

    move-result v3

    .line 807
    invoke-static {v2, p2, v8}, Lcom/gridlayout/GridLayout$ResolveSizeAndStateWrapper;->resolveSizeAndState(III)I

    move-result v2

    .line 814
    :goto_1
    invoke-virtual {p0, v3, v2}, Lcom/gridlayout/GridLayout;->setMeasuredDimension(II)V

    .line 815
    return-void

    .line 794
    .end local v0           #hPadding:I
    .end local v1           #height:I
    .end local v2           #measuredHeight:I
    .end local v3           #measuredWidth:I
    .end local v4           #vPadding:I
    .end local v5           #width:I
    :cond_0
    iget-object v6, p0, Lcom/gridlayout/GridLayout;->verticalAxis:Lcom/gridlayout/GridLayout$Axis;

    invoke-virtual {v6, p2}, Lcom/gridlayout/GridLayout$Axis;->getMeasure(I)I

    move-result v1

    .line 795
    .restart local v1       #height:I
    invoke-direct {p0, p1, p2, v8}, Lcom/gridlayout/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 796
    iget-object v6, p0, Lcom/gridlayout/GridLayout;->horizontalAxis:Lcom/gridlayout/GridLayout$Axis;

    invoke-virtual {v6, p1}, Lcom/gridlayout/GridLayout$Axis;->getMeasure(I)I

    move-result v5

    .restart local v5       #width:I
    goto :goto_0

    .line 810
    .restart local v0       #hPadding:I
    .restart local v2       #measuredHeight:I
    .restart local v3       #measuredWidth:I
    .restart local v4       #vPadding:I
    :cond_1
    invoke-static {v3, p1}, Lcom/gridlayout/GridLayout;->resolveSize(II)I

    move-result v3

    .line 811
    invoke-static {v2, p2}, Lcom/gridlayout/GridLayout;->resolveSize(II)I

    move-result v2

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 834
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 835
    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->invalidateValues()V

    .line 836
    return-void
.end method

.method public setAlignmentMode(I)V
    .locals 0
    .parameter "alignmentMode"

    .prologue
    .line 381
    iput p1, p0, Lcom/gridlayout/GridLayout;->alignmentMode:I

    .line 382
    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->requestLayout()V

    .line 383
    return-void
.end method

.method public setColumnCount(I)V
    .locals 1
    .parameter "columnCount"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->horizontalAxis:Lcom/gridlayout/GridLayout$Axis;

    invoke-virtual {v0, p1}, Lcom/gridlayout/GridLayout$Axis;->setCount(I)V

    .line 300
    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->invalidateStructure()V

    .line 301
    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->requestLayout()V

    .line 302
    return-void
.end method

.method public setColumnOrderPreserved(Z)V
    .locals 1
    .parameter "columnOrderPreserved"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->horizontalAxis:Lcom/gridlayout/GridLayout$Axis;

    invoke-virtual {v0, p1}, Lcom/gridlayout/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 453
    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->invalidateStructure()V

    .line 454
    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->requestLayout()V

    .line 455
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2487
    iput-object p1, p0, Lcom/gridlayout/GridLayout;->mListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 2488
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 231
    iget v0, p0, Lcom/gridlayout/GridLayout;->orientation:I

    if-eq v0, p1, :cond_0

    .line 232
    iput p1, p0, Lcom/gridlayout/GridLayout;->orientation:I

    .line 233
    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->invalidateStructure()V

    .line 234
    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->requestLayout()V

    .line 236
    :cond_0
    return-void
.end method

.method public setRowCount(I)V
    .locals 1
    .parameter "rowCount"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->verticalAxis:Lcom/gridlayout/GridLayout$Axis;

    invoke-virtual {v0, p1}, Lcom/gridlayout/GridLayout$Axis;->setCount(I)V

    .line 267
    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->invalidateStructure()V

    .line 268
    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->requestLayout()V

    .line 269
    return-void
.end method

.method public setRowOrderPreserved(Z)V
    .locals 1
    .parameter "rowOrderPreserved"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/gridlayout/GridLayout;->verticalAxis:Lcom/gridlayout/GridLayout$Axis;

    invoke-virtual {v0, p1}, Lcom/gridlayout/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 417
    invoke-direct {p0}, Lcom/gridlayout/GridLayout;->invalidateStructure()V

    .line 418
    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->requestLayout()V

    .line 419
    return-void
.end method

.method public setUseDefaultMargins(Z)V
    .locals 0
    .parameter "useDefaultMargins"

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/gridlayout/GridLayout;->useDefaultMargins:Z

    .line 346
    invoke-virtual {p0}, Lcom/gridlayout/GridLayout;->requestLayout()V

    .line 347
    return-void
.end method
