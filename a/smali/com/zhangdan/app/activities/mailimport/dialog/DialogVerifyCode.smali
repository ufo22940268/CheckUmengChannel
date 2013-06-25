.class public Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;
.super Landroid/app/Dialog;
.source "DialogVerifyCode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$OnVerifyCodeListener;,
        Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;
    }
.end annotation


# instance fields
.field private mBmpVerifyCode:Landroid/graphics/Bitmap;

.field private mEtVerifyCode:Landroid/widget/EditText;

.field private mImgRefresh:Landroid/widget/ImageView;

.field private mImgVerifyCode:Landroid/widget/ImageView;

.field private mLoadVerifyCodeTask:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;

.field private mOnVerifyCodeListener:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$OnVerifyCodeListener;

.field private mTvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const v0, 0x7f08005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mBmpVerifyCode:Landroid/graphics/Bitmap;

    .line 40
    const v0, 0x7f030069

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->initViews()V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->setCanceledOnTouchOutside(Z)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mBmpVerifyCode:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mBmpVerifyCode:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mImgRefresh:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mImgVerifyCode:Landroid/widget/ImageView;

    return-object v0
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f090171

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mImgRefresh:Landroid/widget/ImageView;

    .line 47
    const v0, 0x7f09016e

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mTvTitle:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f090170

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mEtVerifyCode:Landroid/widget/EditText;

    .line 49
    const v0, 0x7f090172

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mImgVerifyCode:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f09016f

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method


# virtual methods
.method public displayVerifyCode(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->startRefreshAnim()V

    .line 98
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mLoadVerifyCodeTask:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mLoadVerifyCodeTask:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;->cancel(Z)Z

    .line 100
    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mLoadVerifyCodeTask:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;

    .line 102
    :cond_0
    new-instance v1, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;

    invoke-direct {v1, p0, p1}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;-><init>(Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mLoadVerifyCodeTask:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;

    .line 103
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mLoadVerifyCodeTask:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 104
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f09016f

    if-ne v1, v2, :cond_2

    .line 70
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mEtVerifyCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, code:Ljava/lang/String;
    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    .end local v0           #code:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 75
    .restart local v0       #code:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mOnVerifyCodeListener:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$OnVerifyCodeListener;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mOnVerifyCodeListener:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$OnVerifyCodeListener;

    invoke-interface {v1, v0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$OnVerifyCodeListener;->onConfirm(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    .end local v0           #code:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090171

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 57
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mLoadVerifyCodeTask:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mLoadVerifyCodeTask:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;->cancel(Z)Z

    .line 59
    iput-object v2, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mLoadVerifyCodeTask:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mBmpVerifyCode:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mBmpVerifyCode:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mBmpVerifyCode:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 63
    iput-object v2, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mBmpVerifyCode:Landroid/graphics/Bitmap;

    .line 65
    :cond_1
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .parameter "strResId"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    return-void
.end method

.method public setDialogTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method public setOnVerifyCodeListener(Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$OnVerifyCodeListener;)V
    .locals 0
    .parameter "onVerifyCodeListener"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mOnVerifyCodeListener:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$OnVerifyCodeListener;

    .line 147
    return-void
.end method

.method public startRefreshAnim()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    .line 107
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 108
    .local v0, anim:Landroid/view/animation/RotateAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 109
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 110
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 111
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mImgRefresh:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 112
    return-void
.end method
