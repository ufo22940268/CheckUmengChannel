.class public Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/zhangdan/app/sms/a;

.field private g:Lcom/zhangdan/app/data/model/l;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)Lcom/zhangdan/app/data/model/l;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->g:Lcom/zhangdan/app/data/model/l;

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->k:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->i:Ljava/lang/String;

    :cond_1
    new-instance v0, Lcom/zhangdan/app/activities/sms/v;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/sms/v;-><init>(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)V

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/zhangdan/app/sms/a;

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    aput-object v2, v1, v3

    aput-object v5, v1, v4

    const/4 v2, 0x2

    aput-object v5, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/sms/v;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/sms/a;->b(I)V

    const-string v1, "bill_info"

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->finish()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->j()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :sswitch_4
    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_5
    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_6
    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060039 -> :sswitch_0
        0x7f0600e6 -> :sswitch_1
        0x7f0600e7 -> :sswitch_2
        0x7f060104 -> :sswitch_3
        0x7f060106 -> :sswitch_4
        0x7f060107 -> :sswitch_5
        0x7f060108 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "card_num"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->c:Ljava/lang/String;

    const-string v1, "bank_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->d:Ljava/lang/String;

    const-string v1, "true_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->e:Ljava/lang/String;

    const-string v1, "bill_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/a;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "card_num"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->c:Ljava/lang/String;

    const-string v0, "bank_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->d:Ljava/lang/String;

    const-string v0, "true_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->e:Ljava/lang/String;

    const-string v0, "bill_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/a;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->g:Lcom/zhangdan/app/data/model/l;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->h:Ljava/lang/String;

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08018e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02038c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0601da

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0600e6

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060104

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060105

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->k:Landroid/widget/RelativeLayout;

    const v0, 0x7f0600e7

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->m:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060102

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->l:Landroid/widget/RelativeLayout;

    const v0, 0x7f060106

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060107

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060108

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600f8

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f060128

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v6

    const v1, 0x7f020282

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const v0, 0x7f06012a

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->q()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/zhangdan/app/h/g;->a(J)[I

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    aget v3, v1, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v1, v1, v9

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f06012b

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f06012c

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f06012d

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f060131

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f060132

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v4, 0x7f06012e

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    if-nez v6, :cond_a

    iget-object v5, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v5}, Lcom/zhangdan/app/sms/a;->s()I

    move-result v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v6}, Lcom/zhangdan/app/sms/a;->r()I

    move-result v6

    const/16 v7, 0x14

    if-ge v6, v7, :cond_1

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_1

    const/16 v5, 0xc

    :cond_1
    if-lez v5, :cond_5

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\u6708\u4efd\u8d26\u5355\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->d:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v8, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->c:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v8, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->e:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v7}, Lcom/zhangdan/app/sms/a;->l()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "\u4eba\u6c11\u5e01"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\u5143\uff0c\u5230\u671f\u8fd8\u6b3e\u65e5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    if-nez v6, :cond_7

    if-eqz v5, :cond_8

    :cond_7
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "\u6708"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\u65e5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f020226

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_9
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->j:Ljava/lang/String;

    return-void

    :cond_a
    const/4 v5, 0x4

    if-ne v6, v5, :cond_e

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "\u4f18\u60e0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f020380

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_e
    if-ne v6, v8, :cond_14

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "\u6d88\u8d39"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    iget-object v6, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    iget-object v6, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->e:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    const-string v6, "\uffe5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "\u5143"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "\u5143"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f020232

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_14
    if-ne v6, v9, :cond_1a

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "\u8fd8\u6b3e"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_15
    iget-object v6, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_16
    iget-object v6, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->e:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_17
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_18

    const-string v6, "\uffe5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "\u5143"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_18
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "\u5143"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_19
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f020219

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1a
    const/4 v3, 0x3

    if-ne v6, v3, :cond_9

    const-string v3, "\u5176\u4ed6"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f020384

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->j()V

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "card_num"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bank_name"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "true_name"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bill_info"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
