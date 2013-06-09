.class final Lcom/zhangdan/preferential/widget/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/widget/CardSectionView;

.field private b:Lcom/zhangdan/preferential/data/model/c;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/widget/CardSectionView;Lcom/zhangdan/preferential/data/model/c;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/widget/a;->a:Lcom/zhangdan/preferential/widget/CardSectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zhangdan/preferential/widget/a;->b:Lcom/zhangdan/preferential/data/model/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/a;->b:Lcom/zhangdan/preferential/data/model/c;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/a;->a:Lcom/zhangdan/preferential/widget/CardSectionView;

    iget-object v0, v0, Lcom/zhangdan/preferential/widget/CardSectionView;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/widget/CardDialogContentView;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/a;->b:Lcom/zhangdan/preferential/data/model/c;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/widget/CardDialogContentView;->a(Lcom/zhangdan/preferential/data/model/c;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/zhangdan/preferential/widget/a;->a:Lcom/zhangdan/preferential/widget/CardSectionView;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/widget/CardSectionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/preferential/widget/a;->a:Lcom/zhangdan/preferential/widget/CardSectionView;

    invoke-static {v2}, Lcom/zhangdan/preferential/widget/CardSectionView;->a(Lcom/zhangdan/preferential/widget/CardSectionView;)I

    move-result v2

    iget-object v3, p0, Lcom/zhangdan/preferential/widget/a;->a:Lcom/zhangdan/preferential/widget/CardSectionView;

    invoke-static {v3}, Lcom/zhangdan/preferential/widget/CardSectionView;->b(Lcom/zhangdan/preferential/widget/CardSectionView;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/a;->a:Lcom/zhangdan/preferential/widget/CardSectionView;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/widget/CardSectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
