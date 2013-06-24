.class Lcom/gridlayout/GridLayout$Bounds;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gridlayout/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bounds"
.end annotation


# instance fields
.field public after:I

.field public before:I

.field public flexibility:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1946
    invoke-virtual {p0}, Lcom/gridlayout/GridLayout$Bounds;->reset()V

    .line 1947
    return-void
.end method

.method synthetic constructor <init>(Lcom/gridlayout/GridLayout$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1940
    invoke-direct {p0}, Lcom/gridlayout/GridLayout$Bounds;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOffset(Landroid/view/View;Lcom/gridlayout/GridLayout$Alignment;I)I
    .locals 2
    .parameter "c"
    .parameter "alignment"
    .parameter "size"

    .prologue
    .line 1970
    iget v0, p0, Lcom/gridlayout/GridLayout$Bounds;->before:I

    invoke-virtual {p2, p1, p3}, Lcom/gridlayout/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected include(II)V
    .locals 1
    .parameter "before"
    .parameter "after"

    .prologue
    .line 1956
    iget v0, p0, Lcom/gridlayout/GridLayout$Bounds;->before:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/gridlayout/GridLayout$Bounds;->before:I

    .line 1957
    iget v0, p0, Lcom/gridlayout/GridLayout$Bounds;->after:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/gridlayout/GridLayout$Bounds;->after:I

    .line 1958
    return-void
.end method

.method protected final include(Landroid/view/View;Lcom/gridlayout/GridLayout$Spec;Lcom/gridlayout/GridLayout;Lcom/gridlayout/GridLayout$Axis;)V
    .locals 5
    .parameter "c"
    .parameter "spec"
    .parameter "gridLayout"
    .parameter "axis"

    .prologue
    .line 1974
    iget v3, p0, Lcom/gridlayout/GridLayout$Bounds;->flexibility:I

    invoke-virtual {p2}, Lcom/gridlayout/GridLayout$Spec;->getFlexibility()I

    move-result v4

    and-int/2addr v3, v4

    iput v3, p0, Lcom/gridlayout/GridLayout$Bounds;->flexibility:I

    .line 1975
    iget-boolean v3, p4, Lcom/gridlayout/GridLayout$Axis;->horizontal:Z

    invoke-virtual {p3, p1, v3}, Lcom/gridlayout/GridLayout;->getMeasurementIncludingMargin(Landroid/view/View;Z)I

    move-result v2

    .line 1976
    .local v2, size:I
    iget-object v3, p2, Lcom/gridlayout/GridLayout$Spec;->alignment:Lcom/gridlayout/GridLayout$Alignment;

    iget-boolean v4, p4, Lcom/gridlayout/GridLayout$Axis;->horizontal:Z

    invoke-virtual {p3, v3, v4}, Lcom/gridlayout/GridLayout;->getAlignment(Lcom/gridlayout/GridLayout$Alignment;Z)Lcom/gridlayout/GridLayout$Alignment;

    move-result-object v0

    .line 1978
    .local v0, alignment:Lcom/gridlayout/GridLayout$Alignment;
    invoke-virtual {v0, p1, v2}, Lcom/gridlayout/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;I)I

    move-result v1

    .line 1979
    .local v1, before:I
    sub-int v3, v2, v1

    invoke-virtual {p0, v1, v3}, Lcom/gridlayout/GridLayout$Bounds;->include(II)V

    .line 1980
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    const/high16 v0, -0x8000

    .line 1950
    iput v0, p0, Lcom/gridlayout/GridLayout$Bounds;->before:I

    .line 1951
    iput v0, p0, Lcom/gridlayout/GridLayout$Bounds;->after:I

    .line 1952
    const/4 v0, 0x2

    iput v0, p0, Lcom/gridlayout/GridLayout$Bounds;->flexibility:I

    .line 1953
    return-void
.end method

.method protected size(Z)I
    .locals 2
    .parameter "min"

    .prologue
    .line 1961
    if-nez p1, :cond_0

    .line 1962
    iget v0, p0, Lcom/gridlayout/GridLayout$Bounds;->flexibility:I

    invoke-static {v0}, Lcom/gridlayout/GridLayout;->canStretch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1963
    const v0, 0x186a0

    .line 1966
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/gridlayout/GridLayout$Bounds;->before:I

    iget v1, p0, Lcom/gridlayout/GridLayout$Bounds;->after:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds{before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/gridlayout/GridLayout$Bounds;->before:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/gridlayout/GridLayout$Bounds;->after:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
