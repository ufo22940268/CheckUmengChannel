.class public Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method

.method private j()V
    .locals 2

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->finish()V

    const v0, 0x7f040005

    const v1, 0x7f040006

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->j()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060088

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->j()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600db

    if-ne v0, v1, :cond_0

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    const v1, 0x7f0600da

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08017b

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->setContentView(I)V

    const v0, 0x7f060088

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600db

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600da

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f08016f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
