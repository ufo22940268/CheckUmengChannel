.class public Lcom/zhangdan/app/widget/a;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0c005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/zhangdan/app/widget/a;->e:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/a;->setCanceledOnTouchOutside(Z)V

    const v0, 0x7f030066

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/a;->setContentView(I)V

    const v0, 0x7f060155

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/widget/a;->a:Landroid/widget/TextView;

    const v0, 0x7f06016d

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/widget/a;->b:Landroid/widget/TextView;

    const v0, 0x7f06016f

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/app/widget/a;->c:Landroid/widget/Button;

    const v0, 0x7f060170

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/app/widget/a;->d:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/widget/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final a(II)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/widget/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/widget/a;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final a(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/widget/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(ILandroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/widget/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/a;->c:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/widget/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/widget/a;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/widget/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
