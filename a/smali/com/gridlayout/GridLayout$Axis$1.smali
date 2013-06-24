.class Lcom/gridlayout/GridLayout$Axis$1;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gridlayout/GridLayout$Axis;->topologicalSort([Lcom/gridlayout/GridLayout$Arc;)[Lcom/gridlayout/GridLayout$Arc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field arcsByVertex:[[Lcom/gridlayout/GridLayout$Arc;

.field cursor:I

.field result:[Lcom/gridlayout/GridLayout$Arc;

.field final synthetic this$1:Lcom/gridlayout/GridLayout$Axis;

.field final synthetic val$arcs:[Lcom/gridlayout/GridLayout$Arc;

.field visited:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1163
    const-class v0, Lcom/gridlayout/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/gridlayout/GridLayout$Axis$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/gridlayout/GridLayout$Axis;[Lcom/gridlayout/GridLayout$Arc;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/gridlayout/GridLayout$Axis$1;->this$1:Lcom/gridlayout/GridLayout$Axis;

    iput-object p2, p0, Lcom/gridlayout/GridLayout$Axis$1;->val$arcs:[Lcom/gridlayout/GridLayout$Arc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1164
    iget-object v0, p0, Lcom/gridlayout/GridLayout$Axis$1;->val$arcs:[Lcom/gridlayout/GridLayout$Arc;

    array-length v0, v0

    new-array v0, v0, [Lcom/gridlayout/GridLayout$Arc;

    iput-object v0, p0, Lcom/gridlayout/GridLayout$Axis$1;->result:[Lcom/gridlayout/GridLayout$Arc;

    .line 1165
    iget-object v0, p0, Lcom/gridlayout/GridLayout$Axis$1;->result:[Lcom/gridlayout/GridLayout$Arc;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gridlayout/GridLayout$Axis$1;->cursor:I

    .line 1166
    iget-object v0, p0, Lcom/gridlayout/GridLayout$Axis$1;->this$1:Lcom/gridlayout/GridLayout$Axis;

    iget-object v1, p0, Lcom/gridlayout/GridLayout$Axis$1;->val$arcs:[Lcom/gridlayout/GridLayout$Arc;

    invoke-virtual {v0, v1}, Lcom/gridlayout/GridLayout$Axis;->groupArcsByFirstVertex([Lcom/gridlayout/GridLayout$Arc;)[[Lcom/gridlayout/GridLayout$Arc;

    move-result-object v0

    iput-object v0, p0, Lcom/gridlayout/GridLayout$Axis$1;->arcsByVertex:[[Lcom/gridlayout/GridLayout$Arc;

    .line 1167
    iget-object v0, p0, Lcom/gridlayout/GridLayout$Axis$1;->this$1:Lcom/gridlayout/GridLayout$Axis;

    invoke-virtual {v0}, Lcom/gridlayout/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/gridlayout/GridLayout$Axis$1;->visited:[I

    return-void
.end method


# virtual methods
.method sort()[Lcom/gridlayout/GridLayout$Arc;
    .locals 4

    .prologue
    .line 1191
    const/4 v1, 0x0

    .local v1, loc:I
    iget-object v2, p0, Lcom/gridlayout/GridLayout$Axis$1;->arcsByVertex:[[Lcom/gridlayout/GridLayout$Arc;

    array-length v0, v2

    .local v0, N:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1192
    invoke-virtual {p0, v1}, Lcom/gridlayout/GridLayout$Axis$1;->walk(I)V

    .line 1191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1194
    :cond_0
    sget-boolean v2, Lcom/gridlayout/GridLayout$Axis$1;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/gridlayout/GridLayout$Axis$1;->cursor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1195
    :cond_1
    iget-object v2, p0, Lcom/gridlayout/GridLayout$Axis$1;->result:[Lcom/gridlayout/GridLayout$Arc;

    return-object v2
.end method

.method walk(I)V
    .locals 7
    .parameter "loc"

    .prologue
    .line 1170
    iget-object v4, p0, Lcom/gridlayout/GridLayout$Axis$1;->visited:[I

    aget v4, v4, p1

    packed-switch v4, :pswitch_data_0

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1172
    :pswitch_0
    iget-object v4, p0, Lcom/gridlayout/GridLayout$Axis$1;->visited:[I

    const/4 v5, 0x1

    aput v5, v4, p1

    .line 1173
    iget-object v4, p0, Lcom/gridlayout/GridLayout$Axis$1;->arcsByVertex:[[Lcom/gridlayout/GridLayout$Arc;

    aget-object v1, v4, p1

    .local v1, arr$:[Lcom/gridlayout/GridLayout$Arc;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 1174
    .local v0, arc:Lcom/gridlayout/GridLayout$Arc;
    iget-object v4, v0, Lcom/gridlayout/GridLayout$Arc;->span:Lcom/gridlayout/GridLayout$Interval;

    iget v4, v4, Lcom/gridlayout/GridLayout$Interval;->max:I

    invoke-virtual {p0, v4}, Lcom/gridlayout/GridLayout$Axis$1;->walk(I)V

    .line 1175
    iget-object v4, p0, Lcom/gridlayout/GridLayout$Axis$1;->result:[Lcom/gridlayout/GridLayout$Arc;

    iget v5, p0, Lcom/gridlayout/GridLayout$Axis$1;->cursor:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/gridlayout/GridLayout$Axis$1;->cursor:I

    aput-object v0, v4, v5

    .line 1173
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1177
    .end local v0           #arc:Lcom/gridlayout/GridLayout$Arc;
    :cond_1
    iget-object v4, p0, Lcom/gridlayout/GridLayout$Axis$1;->visited:[I

    const/4 v5, 0x2

    aput v5, v4, p1

    goto :goto_0

    .line 1181
    .end local v1           #arr$:[Lcom/gridlayout/GridLayout$Arc;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :pswitch_1
    sget-boolean v4, Lcom/gridlayout/GridLayout$Axis$1;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
