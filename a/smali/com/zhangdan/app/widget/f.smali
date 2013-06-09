.class public final Lcom/zhangdan/app/widget/f;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0c005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/widget/f;->c:Landroid/view/View$OnClickListener;

    const v0, 0x7f0300d5

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/f;->setContentView(I)V

    const v0, 0x7f0602ed

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/widget/f;->a:Landroid/widget/TextView;

    const v0, 0x7f0602ee

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/widget/f;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/f;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, p0}, Lcom/zhangdan/app/widget/f;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/widget/f;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/widget/f;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/widget/f;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/widget/f;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-object p1, p0, Lcom/zhangdan/app/widget/f;->c:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/zhangdan/app/widget/f;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/zhangdan/app/widget/g;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/widget/g;-><init>(Lcom/zhangdan/app/widget/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/widget/f;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    const v0, 0x7f0602ec

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
