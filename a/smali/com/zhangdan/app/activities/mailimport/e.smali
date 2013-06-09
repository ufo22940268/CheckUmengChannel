.class public final Lcom/zhangdan/app/activities/mailimport/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/View;

.field private c:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/e;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/e;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->b:Landroid/view/View;

    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->b:Landroid/view/View;

    const v1, 0x7f06003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput p3, p0, Lcom/zhangdan/app/activities/mailimport/e;->d:I

    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->d:I

    if-nez v0, :cond_1

    const v0, 0x7f080036

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/mailimport/e;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const v0, 0x7f080037

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/mailimport/e;->a(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const v0, 0x7f080038

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/mailimport/e;->a(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7f080039

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/mailimport/e;->a(I)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->b:Landroid/view/View;

    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->c:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->c:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->dismiss()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/e;->c:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    :cond_0
    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/e;->a:Landroid/app/Activity;

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/e;->c:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->a:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060039

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06003f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->c:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    if-nez v0, :cond_3

    new-instance v0, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/e;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->c:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    new-instance v0, Lcom/zhangdan/app/activities/mailimport/a/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/e;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/zhangdan/app/activities/mailimport/e;->d:I

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/app/activities/mailimport/a/a;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/e;->c:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v1, p1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/e;->c:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/e;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setContentWidth(I)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/e;->c:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->c:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->c:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->show()V

    goto :goto_0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->c:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->c:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->dismiss()V

    :cond_1
    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->d:I

    if-lt p3, v0, :cond_2

    add-int/lit8 p3, p3, 0x1

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-nez p3, :cond_4

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/e;->a:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/e;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    if-ne p3, v1, :cond_5

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/e;->a:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    if-ne p3, v1, :cond_6

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/e;->a:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :cond_6
    const/4 v1, 0x3

    if-ne p3, v1, :cond_3

    goto :goto_0
.end method
