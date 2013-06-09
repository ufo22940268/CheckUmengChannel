.class public final Lcom/zhangdan/app/activities/detail/b/a;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Lcom/zhangdan/app/activities/detail/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 3

    const v0, 0x7f0c005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/b/a;->b:Lcom/zhangdan/app/activities/detail/b/b;

    const v0, 0x7f030061

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/a;->setContentView(I)V

    const v0, 0x7f060162

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/b/a;->a:Landroid/widget/EditText;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/b/a;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/b/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    const v0, 0x7f060163

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/b/a;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/zhangdan/app/activities/detail/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/b/a;->b:Lcom/zhangdan/app/activities/detail/b/b;

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    const v5, 0x7f08017c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060163

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/b/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/b/a;->dismiss()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/b/a;->b:Lcom/zhangdan/app/activities/detail/b/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/b/a;->b:Lcom/zhangdan/app/activities/detail/b/b;

    invoke-interface {v1, v0}, Lcom/zhangdan/app/activities/detail/b/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
