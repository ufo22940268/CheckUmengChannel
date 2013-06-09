.class public Lcom/zhangdan/app/activities/account/OfficialLoginActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->i:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->j:I

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->j:I

    return v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->i:Z

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->h:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/data/db/b/q;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->h:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->a:Landroid/widget/Button;

    const v1, 0x7f020262

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->b:Landroid/widget/Button;

    const v1, 0x7f020314

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->d:Landroid/widget/Button;

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/k;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/k;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/k;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->f:Landroid/widget/EditText;

    const-string v1, "******"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->i:Z

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->a:Landroid/widget/Button;

    const v1, 0x7f020263

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->b:Landroid/widget/Button;

    const v1, 0x7f020313

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->d:Landroid/widget/Button;

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->f:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->f()V

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->g()V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->h:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080030

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    new-instance v0, Lcom/zhangdan/app/activities/account/d;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/account/d;-><init>(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)V

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/k;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/k;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :sswitch_4
    iget-object v1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->i:Z

    if-eqz v3, :cond_6

    const-string v3, "******"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->g:Ljava/lang/String;

    :cond_3
    invoke-static {v2}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {v1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v3, "51_real_login_click"

    invoke-static {p0, v3}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Lcom/zhangdan/app/activities/account/e;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/account/e;-><init>(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)V

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/account/e;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    goto/16 :goto_0

    :cond_6
    invoke-static {v2}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const v0, 0x7f080117

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const v0, 0x7f080118

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_9

    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {v1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const v0, 0x7f08011a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    const v0, 0x7f08011b

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_c

    const v0, 0x7f08011c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "51_real_login_click"

    invoke-static {p0, v3}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Lcom/zhangdan/app/activities/account/f;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/account/f;-><init>(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)V

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/account/f;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060088 -> :sswitch_0
        0x7f0600ce -> :sswitch_1
        0x7f0600cf -> :sswitch_2
        0x7f0600d2 -> :sswitch_3
        0x7f0600d7 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f0600cd

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "login_flag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->j:I

    const v0, 0x7f0600ce

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->a:Landroid/widget/Button;

    const v0, 0x7f0600cf

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->b:Landroid/widget/Button;

    const v0, 0x7f0600d2

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->c:Landroid/widget/ImageView;

    const v0, 0x7f0600d7

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->d:Landroid/widget/Button;

    const v0, 0x7f0600d1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f0600d4

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->f:Landroid/widget/EditText;

    const v0, 0x7f060088

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->j:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/zhangdan/app/activities/account/c;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/account/c;-><init>(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->j:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->f()V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->g()V

    goto :goto_1
.end method
