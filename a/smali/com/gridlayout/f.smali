.class final Lcom/gridlayout/f;
.super Lcom/gridlayout/n;


# instance fields
.field final synthetic a:Lcom/gridlayout/e;

.field private e:I


# direct methods
.method constructor <init>(Lcom/gridlayout/e;)V
    .locals 1

    iput-object p1, p0, Lcom/gridlayout/f;->a:Lcom/gridlayout/e;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/gridlayout/n;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Lcom/gridlayout/i;I)I
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/gridlayout/n;->a(Landroid/view/View;Lcom/gridlayout/i;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final a(Z)I
    .locals 2

    invoke-super {p0, p1}, Lcom/gridlayout/n;->a(Z)I

    move-result v0

    iget v1, p0, Lcom/gridlayout/f;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/gridlayout/n;->a()V

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/gridlayout/f;->e:I

    return-void
.end method

.method protected final a(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/gridlayout/n;->a(II)V

    iget v0, p0, Lcom/gridlayout/f;->e:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/gridlayout/f;->e:I

    return-void
.end method
