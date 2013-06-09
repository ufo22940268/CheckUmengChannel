.class public final Lcom/zhangdan/app/activities/detail/b/c;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/zhangdan/app/activities/detail/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const v3, 0x7f0600a3

    const/4 v2, 0x4

    const v0, 0x7f0c005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f030060

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->setContentView(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/b/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0c005b

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v0, 0x7f0600a6

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/b/c;->a:Landroid/widget/ImageView;

    const v0, 0x7f0600a7

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/b/c;->b:Landroid/widget/TextView;

    const v0, 0x7f0600a5

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600a1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/detail/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_1

    const v0, 0x7f060161

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0601d4

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const-string v0, "alipay"

    invoke-static {p1, v0}, Lcom/umeng/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/detail/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0600a4

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    const v0, 0x7f06015f

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_0

    :cond_2
    const v0, 0x7f060160

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0601d6

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0601d7

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0601d8

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 1

    const v0, 0x7f0601d9

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/b/c;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/b/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/b/c;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/b/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    if-nez p1, :cond_2

    const v0, 0x7f0202e9

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->b(I)V

    const v0, 0x7f080090

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->c(I)V

    :cond_0
    :goto_0
    if-ne p1, v2, :cond_6

    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/detail/b/c;->a(I)V

    const v0, 0x7f0601d9

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(\uffe5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const v0, 0x7f0202ee

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->b(I)V

    const v0, 0x7f080096

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->c(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    const v0, 0x7f0202f5

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->b(I)V

    const v0, 0x7f080093

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->c(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const v0, 0x7f0202ec

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->b(I)V

    const v0, 0x7f080094

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->c(I)V

    goto :goto_0

    :cond_5
    if-ne p1, v2, :cond_0

    const v0, 0x7f0202f8

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->b(I)V

    const v0, 0x7f080095

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->c(I)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/detail/b/c;->a(I)V

    goto :goto_1
.end method

.method public final a(Lcom/zhangdan/app/activities/detail/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/b/c;->c:Lcom/zhangdan/app/activities/detail/b/d;

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/b/c;->c:Lcom/zhangdan/app/activities/detail/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/b/c;->c:Lcom/zhangdan/app/activities/detail/b/d;

    invoke-interface {v0, p1}, Lcom/zhangdan/app/activities/detail/b/d;->onSetReturnStateClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
