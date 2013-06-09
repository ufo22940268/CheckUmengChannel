.class public Lcom/zhangdan/preferential/widget/CheckableView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private a:Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/CheckableView;->a:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0602ab

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/CheckableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/CheckableView;->a:Landroid/widget/Checkable;

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/CheckableView;->a:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/CheckableView;->a:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    return-void
.end method
