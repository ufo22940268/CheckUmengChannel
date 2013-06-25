.class public Lcom/zhangdan/preferential/widget/CheckableView;
.super Landroid/widget/RelativeLayout;
.source "CheckableView.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mCheckableView:Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/CheckableView;->mCheckableView:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 32
    const v0, 0x7f0902b6

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/CheckableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/CheckableView;->mCheckableView:Landroid/widget/Checkable;

    .line 33
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/CheckableView;->mCheckableView:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 43
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/CheckableView;->mCheckableView:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 48
    return-void
.end method
