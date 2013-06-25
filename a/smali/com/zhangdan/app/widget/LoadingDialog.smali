.class public Lcom/zhangdan/app/widget/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private mImgCancel:Landroid/widget/ImageView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mTvContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    const v0, 0x7f08005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/widget/LoadingDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 29
    const v0, 0x7f0300da

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/LoadingDialog;->setContentView(I)V

    .line 30
    const v0, 0x7f0902f9

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/widget/LoadingDialog;->mTvContent:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f0902fa

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/widget/LoadingDialog;->mImgCancel:Landroid/widget/ImageView;

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 33
    invoke-virtual {p0, p0}, Lcom/zhangdan/app/widget/LoadingDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/widget/LoadingDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/zhangdan/app/widget/LoadingDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 51
    const v2, 0x7f0902f8

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/widget/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 52
    .local v1, img:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 53
    .local v0, ad:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 54
    return-void
.end method

.method public setContent(I)V
    .locals 1
    .parameter "strResId"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zhangdan/app/widget/LoadingDialog;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 47
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zhangdan/app/widget/LoadingDialog;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method

.method public setOnClickCancelListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "onClickListener"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zhangdan/app/widget/LoadingDialog;->mImgCancel:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iput-object p1, p0, Lcom/zhangdan/app/widget/LoadingDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 59
    iget-object v0, p0, Lcom/zhangdan/app/widget/LoadingDialog;->mImgCancel:Landroid/widget/ImageView;

    new-instance v1, Lcom/zhangdan/app/widget/LoadingDialog$1;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/widget/LoadingDialog$1;-><init>(Lcom/zhangdan/app/widget/LoadingDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method
