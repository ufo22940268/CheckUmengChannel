.class public final Lcom/zhangdan/app/activities/mailimport/b/a;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/EditText;

.field private c:Lcom/zhangdan/app/activities/mailimport/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0c005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f030063

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/b/a;->setContentView(I)V

    const v0, 0x7f060166

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/a;->a:Landroid/widget/TextView;

    const v0, 0x7f060168

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/a;->b:Landroid/widget/EditText;

    const v0, 0x7f060167

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/b/a;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/a;->a:Landroid/widget/TextView;

    const v1, 0x7f0800f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final a(Lcom/zhangdan/app/activities/mailimport/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/b/a;->c:Lcom/zhangdan/app/activities/mailimport/b/b;

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060167

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

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
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/b/a;->c:Lcom/zhangdan/app/activities/mailimport/b/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/b/a;->c:Lcom/zhangdan/app/activities/mailimport/b/b;

    invoke-interface {v1, v0}, Lcom/zhangdan/app/activities/mailimport/b/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    goto :goto_0
.end method

.method protected final onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method
