.class public Lcom/zhangdan/preferential/widget/CustomStarView;
.super Landroid/widget/LinearLayout;


# instance fields
.field a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/CustomStarView;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    const/4 v0, 0x5

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/CustomStarView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02037d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/CustomStarView;->setOrientation(I)V

    :goto_0
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/CustomStarView;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f030100

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method