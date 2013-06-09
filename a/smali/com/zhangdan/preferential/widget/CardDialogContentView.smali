.class public Lcom/zhangdan/preferential/widget/CardDialogContentView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/zhangdan/preferential/data/model/c;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0801c6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0071

    invoke-direct {v2, v4, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x12

    invoke-virtual {v3, v2, v6, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/c;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->c:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "null"

    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/c;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f060149

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/CardDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->a:Landroid/widget/TextView;

    const v0, 0x7f06014a

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/CardDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->b:Landroid/widget/TextView;

    const v0, 0x7f06014d

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/CardDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->c:Landroid/widget/TextView;

    const v0, 0x7f06014c

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/CardDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->d:Landroid/widget/TextView;

    return-void
.end method
