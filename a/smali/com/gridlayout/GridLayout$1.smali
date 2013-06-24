.class final Lcom/gridlayout/GridLayout$1;
.super Lcom/gridlayout/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gridlayout/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2287
    invoke-direct {p0}, Lcom/gridlayout/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;I)I
    .locals 1
    .parameter "view"
    .parameter "viewSize"

    .prologue
    .line 2289
    const/high16 v0, -0x8000

    return v0
.end method
