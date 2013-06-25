.class public abstract Lcom/gridlayout/GridLayout$Alignment;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gridlayout/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Alignment"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2249
    return-void
.end method


# virtual methods
.method abstract getAlignmentValue(Landroid/view/View;I)I
.end method

.method getBounds()Lcom/gridlayout/GridLayout$Bounds;
    .locals 2

    .prologue
    .line 2283
    new-instance v0, Lcom/gridlayout/GridLayout$Bounds;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gridlayout/GridLayout$Bounds;-><init>(Lcom/gridlayout/GridLayout$1;)V

    return-object v0
.end method

.method getSizeInCell(Landroid/view/View;III)I
    .locals 0
    .parameter "view"
    .parameter "viewSize"
    .parameter "cellSize"
    .parameter "measurementType"

    .prologue
    .line 2279
    return p2
.end method
