.class public final Lcom/gridlayout/Space;
.super Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/gridlayout/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/gridlayout/Space;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/gridlayout/Space;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static a(II)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return p0

    :sswitch_1
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :sswitch_2
    move p0, v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/gridlayout/Space;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/gridlayout/Space;->a(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/gridlayout/Space;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/gridlayout/Space;->a(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/gridlayout/Space;->setMeasuredDimension(II)V

    return-void
.end method