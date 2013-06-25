.class Lcom/zhangdan/preferential/widget/CardSectionView$OnCardClickListener;
.super Ljava/lang/Object;
.source "CardSectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/widget/CardSectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCardClickListener"
.end annotation


# instance fields
.field private mCard:Lcom/zhangdan/preferential/data/model/Card;

.field final synthetic this$0:Lcom/zhangdan/preferential/widget/CardSectionView;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/widget/CardSectionView;Lcom/zhangdan/preferential/data/model/Card;)V
    .locals 0
    .parameter
    .parameter "card"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/CardSectionView$OnCardClickListener;->this$0:Lcom/zhangdan/preferential/widget/CardSectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/zhangdan/preferential/widget/CardSectionView$OnCardClickListener;->mCard:Lcom/zhangdan/preferential/data/model/Card;

    .line 78
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 82
    iget-object v2, p0, Lcom/zhangdan/preferential/widget/CardSectionView$OnCardClickListener;->mCard:Lcom/zhangdan/preferential/data/model/Card;

    if-nez v2, :cond_0

    .line 94
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/zhangdan/preferential/widget/CardSectionView$OnCardClickListener;->this$0:Lcom/zhangdan/preferential/widget/CardSectionView;

    iget-object v2, v2, Lcom/zhangdan/preferential/widget/CardSectionView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030052

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/widget/CardDialogContentView;

    .line 87
    .local v0, content:Lcom/zhangdan/preferential/widget/CardDialogContentView;
    iget-object v2, p0, Lcom/zhangdan/preferential/widget/CardSectionView$OnCardClickListener;->mCard:Lcom/zhangdan/preferential/data/model/Card;

    invoke-virtual {v0, v2}, Lcom/zhangdan/preferential/widget/CardDialogContentView;->setupCard(Lcom/zhangdan/preferential/data/model/Card;)V

    .line 88
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/zhangdan/preferential/widget/CardSectionView$OnCardClickListener;->this$0:Lcom/zhangdan/preferential/widget/CardSectionView;

    invoke-virtual {v3}, Lcom/zhangdan/preferential/widget/CardSectionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 90
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 91
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 92
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/widget/CardSectionView$OnCardClickListener;->this$0:Lcom/zhangdan/preferential/widget/CardSectionView;

    #getter for: Lcom/zhangdan/preferential/widget/CardSectionView;->mDialogWidth:I
    invoke-static {v3}, Lcom/zhangdan/preferential/widget/CardSectionView;->access$000(Lcom/zhangdan/preferential/widget/CardSectionView;)I

    move-result v3

    iget-object v4, p0, Lcom/zhangdan/preferential/widget/CardSectionView$OnCardClickListener;->this$0:Lcom/zhangdan/preferential/widget/CardSectionView;

    #getter for: Lcom/zhangdan/preferential/widget/CardSectionView;->mDialogHeight:I
    invoke-static {v4}, Lcom/zhangdan/preferential/widget/CardSectionView;->access$100(Lcom/zhangdan/preferential/widget/CardSectionView;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 93
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/widget/CardSectionView$OnCardClickListener;->this$0:Lcom/zhangdan/preferential/widget/CardSectionView;

    invoke-virtual {v3}, Lcom/zhangdan/preferential/widget/CardSectionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
