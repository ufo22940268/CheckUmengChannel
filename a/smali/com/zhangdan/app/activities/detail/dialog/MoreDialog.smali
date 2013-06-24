.class public Lcom/zhangdan/app/activities/detail/dialog/MoreDialog;
.super Landroid/app/Dialog;
.source "MoreDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/detail/dialog/MoreDialog$OnMoreClickListener;
    }
.end annotation


# instance fields
.field private mOnMoreClickListener:Lcom/zhangdan/app/activities/detail/dialog/MoreDialog$OnMoreClickListener;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    const v1, 0x7f08005a

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/detail/dialog/MoreDialog;->setCanceledOnTouchOutside(Z)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 34
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/zhangdan/app/activities/detail/dialog/MoreDialog;->mWidth:I

    .line 36
    const v1, 0x7f030064

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/detail/dialog/MoreDialog;->setContentView(I)V

    .line 38
    const v1, 0x7f090165

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/detail/dialog/MoreDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v1, 0x7f090166

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/detail/dialog/MoreDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v1, 0x7f090168

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/detail/dialog/MoreDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v1, 0x7f090167

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/detail/dialog/MoreDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/dialog/MoreDialog;->mOnMoreClickListener:Lcom/zhangdan/app/activities/detail/dialog/MoreDialog$OnMoreClickListener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/dialog/MoreDialog;->mOnMoreClickListener:Lcom/zhangdan/app/activities/detail/dialog/MoreDialog$OnMoreClickListener;

    invoke-interface {v0, p1}, Lcom/zhangdan/app/activities/detail/dialog/MoreDialog$OnMoreClickListener;->onMoreClick(Landroid/view/View;)V

    .line 59
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/dialog/MoreDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 48
    .local v1, window:Landroid/view/Window;
    const v2, 0x7f08005b

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 49
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 50
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 51
    iget v2, p0, Lcom/zhangdan/app/activities/detail/dialog/MoreDialog;->mWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 52
    return-void
.end method

.method public setEditBtnVisible(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 76
    const v0, 0x7f090167

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/dialog/MoreDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    return-void
.end method

.method public setMergeBtnVisible(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 67
    const v0, 0x7f090166

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/dialog/MoreDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    return-void
.end method

.method public setOnMoreClickListener(Lcom/zhangdan/app/activities/detail/dialog/MoreDialog$OnMoreClickListener;)V
    .locals 0
    .parameter "onMoreClickListener"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/dialog/MoreDialog;->mOnMoreClickListener:Lcom/zhangdan/app/activities/detail/dialog/MoreDialog$OnMoreClickListener;

    .line 81
    return-void
.end method
