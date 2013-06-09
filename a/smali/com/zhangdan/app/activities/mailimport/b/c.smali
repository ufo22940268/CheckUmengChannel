.class public final Lcom/zhangdan/app/activities/mailimport/b/c;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/zhangdan/app/activities/mailimport/b/e;

.field private f:Landroid/graphics/Bitmap;

.field private g:Lcom/zhangdan/app/activities/mailimport/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0c005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->f:Landroid/graphics/Bitmap;

    const v0, 0x7f030064

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/b/c;->setContentView(I)V

    const v0, 0x7f060169

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->d:Landroid/widget/ImageView;

    const v0, 0x7f060166

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->a:Landroid/widget/TextView;

    const v0, 0x7f060168

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->b:Landroid/widget/EditText;

    const v0, 0x7f06016a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->c:Landroid/widget/ImageView;

    const v0, 0x7f060167

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/b/c;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/mailimport/b/c;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/mailimport/b/c;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/mailimport/b/c;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/mailimport/b/c;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->a:Landroid/widget/TextView;

    const v1, 0x7f0800f7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final a(Lcom/zhangdan/app/activities/mailimport/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->e:Lcom/zhangdan/app/activities/mailimport/b/e;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->g:Lcom/zhangdan/app/activities/mailimport/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->g:Lcom/zhangdan/app/activities/mailimport/b/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/b/d;->e()Z

    iput-object v7, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->g:Lcom/zhangdan/app/activities/mailimport/b/d;

    :cond_0
    new-instance v0, Lcom/zhangdan/app/activities/mailimport/b/d;

    invoke-direct {v0, p0, p1}, Lcom/zhangdan/app/activities/mailimport/b/d;-><init>(Lcom/zhangdan/app/activities/mailimport/b/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->g:Lcom/zhangdan/app/activities/mailimport/b/d;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->g:Lcom/zhangdan/app/activities/mailimport/b/d;

    new-array v1, v3, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/mailimport/b/d;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060167

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->e:Lcom/zhangdan/app/activities/mailimport/b/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->e:Lcom/zhangdan/app/activities/mailimport/b/e;

    invoke-interface {v1, v0}, Lcom/zhangdan/app/activities/mailimport/b/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    goto :goto_0
.end method

.method protected final onStop()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->g:Lcom/zhangdan/app/activities/mailimport/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->g:Lcom/zhangdan/app/activities/mailimport/b/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/b/d;->e()Z

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->g:Lcom/zhangdan/app/activities/mailimport/b/d;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/b/c;->f:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method
