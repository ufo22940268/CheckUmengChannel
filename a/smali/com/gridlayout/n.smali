.class Lcom/gridlayout/n;
.super Ljava/lang/Object;


# instance fields
.field public b:I

.field public c:I

.field public d:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/gridlayout/n;->a()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/gridlayout/n;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lcom/gridlayout/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;Lcom/gridlayout/i;I)I
    .locals 2

    iget v0, p0, Lcom/gridlayout/n;->b:I

    invoke-virtual {p2, p1, p3}, Lcom/gridlayout/i;->a(Landroid/view/View;I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected a(Z)I
    .locals 2

    if-nez p1, :cond_0

    iget v0, p0, Lcom/gridlayout/n;->d:I

    invoke-static {v0}, Lcom/gridlayout/GridLayout;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x186a0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/gridlayout/n;->b:I

    iget v1, p0, Lcom/gridlayout/n;->c:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected a()V
    .locals 1

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/gridlayout/n;->b:I

    iput v0, p0, Lcom/gridlayout/n;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/gridlayout/n;->d:I

    return-void
.end method

.method protected a(II)V
    .locals 1

    iget v0, p0, Lcom/gridlayout/n;->b:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/gridlayout/n;->b:I

    iget v0, p0, Lcom/gridlayout/n;->c:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/gridlayout/n;->c:I

    return-void
.end method

.method protected final a(Landroid/view/View;Lcom/gridlayout/t;Lcom/gridlayout/GridLayout;Lcom/gridlayout/l;)V
    .locals 3

    iget v0, p0, Lcom/gridlayout/n;->d:I

    invoke-virtual {p2}, Lcom/gridlayout/t;->a()I

    move-result v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/gridlayout/n;->d:I

    iget-boolean v0, p4, Lcom/gridlayout/l;->a:Z

    invoke-virtual {p3, p1, v0}, Lcom/gridlayout/GridLayout;->a(Landroid/view/View;Z)I

    move-result v0

    iget-object v1, p2, Lcom/gridlayout/t;->d:Lcom/gridlayout/i;

    iget-boolean v2, p4, Lcom/gridlayout/l;->a:Z

    invoke-static {v1, v2}, Lcom/gridlayout/GridLayout;->a(Lcom/gridlayout/i;Z)Lcom/gridlayout/i;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/gridlayout/i;->a(Landroid/view/View;I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/gridlayout/n;->a(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bounds{before="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/gridlayout/n;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/gridlayout/n;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
