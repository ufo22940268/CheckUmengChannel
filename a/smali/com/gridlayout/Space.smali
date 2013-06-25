.class public final Lcom/gridlayout/Space;
.super Landroid/view/View;
.source "Space.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gridlayout/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/gridlayout/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-virtual {p0}, Lcom/gridlayout/Space;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/gridlayout/Space;->setVisibility(I)V

    .line 37
    :cond_0
    return-void
.end method

.method private static getDefaultSize2(II)I
    .locals 3
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 69
    move v0, p0

    .line 70
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 71
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 73
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 84
    :goto_0
    return v0

    .line 75
    :sswitch_0
    move v0, p0

    .line 76
    goto :goto_0

    .line 78
    :sswitch_1
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 79
    goto :goto_0

    .line 81
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 73
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 61
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/gridlayout/Space;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/gridlayout/Space;->getDefaultSize2(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/gridlayout/Space;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/gridlayout/Space;->getDefaultSize2(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/gridlayout/Space;->setMeasuredDimension(II)V

    .line 92
    return-void
.end method
