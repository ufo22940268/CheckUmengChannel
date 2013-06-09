.class final Lcom/gridlayout/e;
.super Lcom/gridlayout/i;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/gridlayout/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)I
    .locals 3

    const/high16 v0, -0x8000

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final a()Lcom/gridlayout/n;
    .locals 1

    new-instance v0, Lcom/gridlayout/f;

    invoke-direct {v0, p0}, Lcom/gridlayout/f;-><init>(Lcom/gridlayout/e;)V

    return-object v0
.end method
