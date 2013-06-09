.class public final Lcom/zhangdan/preferential/widget/k;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/widget/TodayDialogView;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/widget/TodayDialogView;Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 2

    iput-object p1, p0, Lcom/zhangdan/preferential/widget/k;->a:Lcom/zhangdan/preferential/widget/TodayDialogView;

    const v0, 0x7f0300d4

    const v1, 0x7f0601cc

    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v1, 0x7f0602eb

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
