.class final Lcom/gridlayout/GridLayout$Arc;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gridlayout/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Arc"
.end annotation


# instance fields
.field public final span:Lcom/gridlayout/GridLayout$Interval;

.field public valid:Z

.field public final value:Lcom/gridlayout/GridLayout$MutableInt;


# direct methods
.method public constructor <init>(Lcom/gridlayout/GridLayout$Interval;Lcom/gridlayout/GridLayout$MutableInt;)V
    .locals 1
    .parameter "span"
    .parameter "value"

    .prologue
    .line 1801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1799
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gridlayout/GridLayout$Arc;->valid:Z

    .line 1802
    iput-object p1, p0, Lcom/gridlayout/GridLayout$Arc;->span:Lcom/gridlayout/GridLayout$Interval;

    .line 1803
    iput-object p2, p0, Lcom/gridlayout/GridLayout$Arc;->value:Lcom/gridlayout/GridLayout$MutableInt;

    .line 1804
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gridlayout/GridLayout$Arc;->span:Lcom/gridlayout/GridLayout$Interval;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/gridlayout/GridLayout$Arc;->valid:Z

    if-nez v0, :cond_0

    const-string v0, "+>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gridlayout/GridLayout$Arc;->value:Lcom/gridlayout/GridLayout$MutableInt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "->"

    goto :goto_0
.end method
