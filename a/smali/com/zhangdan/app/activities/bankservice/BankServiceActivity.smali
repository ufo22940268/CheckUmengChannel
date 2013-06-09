.class public Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;
.super Lcom/zhangdan/app/activities/BaseFragmentActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Lcom/zhangdan/app/activities/bankservice/l;

.field private c:Lcom/zhangdan/app/activities/bankservice/l;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->b:Lcom/zhangdan/app/activities/bankservice/l;

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->c:Lcom/zhangdan/app/activities/bankservice/l;

    return-void
.end method

.method private a(I)V
    .locals 4

    const v1, 0x7f02038a

    const v3, 0x7f020368

    const v2, 0x7f020294

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->g:Landroid/widget/Button;

    const v1, 0x7f020389

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->h:Landroid/widget/Button;

    const v1, 0x7f020365

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->i:Landroid/widget/Button;

    const v1, 0x7f020292

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 6

    const v5, 0x7f060087

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->c:Lcom/zhangdan/app/activities/bankservice/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->c:Lcom/zhangdan/app/activities/bankservice/l;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->b:Lcom/zhangdan/app/activities/bankservice/l;

    if-nez v1, :cond_1

    new-instance v1, Lcom/zhangdan/app/activities/bankservice/l;

    invoke-direct {v1}, Lcom/zhangdan/app/activities/bankservice/l;-><init>()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->b:Lcom/zhangdan/app/activities/bankservice/l;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bank_id"

    iget v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->e:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "service_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->b:Lcom/zhangdan/app/activities/bankservice/l;

    invoke-virtual {v2, v1}, Lcom/zhangdan/app/activities/bankservice/l;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->b:Lcom/zhangdan/app/activities/bankservice/l;

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->b:Lcom/zhangdan/app/activities/bankservice/l;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void

    :cond_3
    if-ne p1, v4, :cond_2

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->b:Lcom/zhangdan/app/activities/bankservice/l;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->b:Lcom/zhangdan/app/activities/bankservice/l;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_4
    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->c:Lcom/zhangdan/app/activities/bankservice/l;

    if-nez v1, :cond_5

    new-instance v1, Lcom/zhangdan/app/activities/bankservice/l;

    invoke-direct {v1}, Lcom/zhangdan/app/activities/bankservice/l;-><init>()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->c:Lcom/zhangdan/app/activities/bankservice/l;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bank_id"

    iget v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->e:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "service_type"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->c:Lcom/zhangdan/app/activities/bankservice/l;

    invoke-virtual {v2, v1}, Lcom/zhangdan/app/activities/bankservice/l;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->c:Lcom/zhangdan/app/activities/bankservice/l;

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_5
    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->c:Lcom/zhangdan/app/activities/bankservice/l;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060039

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06008b

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->d:I

    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->d:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->a(I)V

    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->d:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->b(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06008c

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->d:I

    if-eq v0, v2, :cond_0

    iput v2, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->d:I

    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->d:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->a(I)V

    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->d:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->b(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06008d

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->d:I

    if-eq v0, v3, :cond_0

    iput v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->d:I

    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->d:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->a(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bank_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->e:I

    const-string v1, "bank_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->f:Ljava/lang/String;

    const-string v1, "service_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->d:I

    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->e:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "bank_id"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->e:I

    const-string v0, "bank_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->f:Ljava/lang/String;

    const-string v0, "service_type"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->d:I

    :cond_0
    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f06008b

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->g:Landroid/widget/Button;

    const v0, 0x7f06008c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->h:Landroid/widget/Button;

    const v0, 0x7f06008d

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->i:Landroid/widget/Button;

    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->d:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->a(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->d:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->b(I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "bank_id"

    iget v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "bank_name"

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "service_type"

    iget v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
