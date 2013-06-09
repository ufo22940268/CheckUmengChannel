.class public Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:I

.field private d:I

.field private e:Ljava/util/List;

.field private f:[Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;)V
    .locals 6

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->f:[Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->f:[Landroid/widget/EditText;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->finish()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->f:[Landroid/widget/EditText;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/d;

    const-string v2, ""

    invoke-virtual {v0}, Lcom/zhangdan/app/data/d;->a()I

    move-result v4

    sget-object v5, Lcom/zhangdan/app/data/d;->a:Lcom/zhangdan/app/data/d;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/d;->a()I

    move-result v5

    if-ne v4, v5, :cond_2

    const-string v0, "idno"

    :goto_1
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v2, :cond_6

    const-string v2, ""

    :goto_2
    const-string v3, "bank_service"

    invoke-static {p0, v3, v0, v2}, Lcom/zhangdan/app/data/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/zhangdan/app/data/d;->a()I

    move-result v4

    sget-object v5, Lcom/zhangdan/app/data/d;->b:Lcom/zhangdan/app/data/d;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/d;->a()I

    move-result v5

    if-ne v4, v5, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "card_no"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/zhangdan/app/data/d;->a()I

    move-result v4

    sget-object v5, Lcom/zhangdan/app/data/d;->c:Lcom/zhangdan/app/data/d;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/d;->a()I

    move-result v5

    if-ne v4, v5, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "card_last_four"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/zhangdan/app/data/d;->a()I

    move-result v4

    sget-object v5, Lcom/zhangdan/app/data/d;->d:Lcom/zhangdan/app/data/d;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/d;->a()I

    move-result v5

    if-ne v4, v5, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "checkpass"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/zhangdan/app/data/d;->a()I

    move-result v0

    sget-object v4, Lcom/zhangdan/app/data/d;->f:Lcom/zhangdan/app/data/d;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/d;->a()I

    move-result v4

    if-ne v0, v4, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "email"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_7
    move-object v0, v2

    goto/16 :goto_1
.end method

.method private j()V
    .locals 2

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->finish()V

    const v0, 0x7f040005

    const v1, 0x7f040006

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->j()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060088

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->j()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->setContentView(I)V

    const v0, 0x7f060088

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "service_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->c:I

    const-string v1, "bank_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->d:I

    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->d:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "service_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->c:I

    const-string v0, "bank_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->d:I

    :cond_0
    const v0, 0x7f060089

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->c:I

    if-nez v1, :cond_2

    const v1, 0x7f080184

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    const-string v1, "key_setting_info"

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/ZhangdanApplication;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->e:Ljava/util/List;

    const-string v1, "key_setting_info"

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/ZhangdanApplication;->c(Ljava/lang/String;)V

    const v0, 0x7f06008e

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->e:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const v1, 0x7f080185

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->e:Ljava/util/List;

    new-instance v2, Lcom/zhangdan/app/activities/bankservice/k;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/bankservice/k;-><init>(Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/widget/EditText;

    iput-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->f:[Landroid/widget/EditText;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v1

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020123

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v2, 0x7f080187

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    const v2, -0xa39a94

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v2, 0x4180

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x4170

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/zhangdan/app/activities/bankservice/j;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/bankservice/j;-><init>(Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/d;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030087

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v2, 0x7f0601d1

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0601d2

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const v6, 0x7f0601d3

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/d;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\uff1a"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f080186

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/zhangdan/app/data/d;->c()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {p0, v2, v6}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->f:[Landroid/widget/EditText;

    add-int/lit8 v6, v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v1}, Lcom/zhangdan/app/data/d;->a()I

    move-result v2

    sget-object v5, Lcom/zhangdan/app/data/d;->a:Lcom/zhangdan/app/data/d;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/d;->a()I

    move-result v5

    if-ne v2, v5, :cond_6

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setInputType(I)V

    const-string v2, "idno"

    invoke-static {p0, v2}, Lcom/zhangdan/app/data/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v5, v6

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/zhangdan/app/data/d;->a()I

    move-result v2

    sget-object v5, Lcom/zhangdan/app/data/d;->b:Lcom/zhangdan/app/data/d;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/d;->a()I

    move-result v5

    if-ne v2, v5, :cond_7

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "card_no"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->d:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zhangdan/app/data/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Lcom/zhangdan/app/data/d;->a()I

    move-result v2

    sget-object v5, Lcom/zhangdan/app/data/d;->c:Lcom/zhangdan/app/data/d;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/d;->a()I

    move-result v5

    if-ne v2, v5, :cond_10

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "card_last_four"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->d:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zhangdan/app/data/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->c()Lcom/zhangdan/app/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhangdan/app/c/a;->c()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v2}, Lcom/zhangdan/app/c/a;->f()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_9
    const/4 v5, 0x0

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_c

    if-eqz v5, :cond_b

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_b
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v10

    iget v11, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->d:I

    if-ne v10, v11, :cond_a

    if-nez v5, :cond_d

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    invoke-static {v8}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    new-instance v2, Lcom/zhangdan/app/activities/bankservice/h;

    invoke-direct {v2, p0, v5, v3}, Lcom/zhangdan/app/activities/bankservice/h;-><init>(Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;Ljava/util/List;Landroid/widget/EditText;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_10
    invoke-virtual {v1}, Lcom/zhangdan/app/data/d;->a()I

    move-result v2

    sget-object v5, Lcom/zhangdan/app/data/d;->d:Lcom/zhangdan/app/data/d;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/d;->a()I

    move-result v5

    if-ne v2, v5, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "checkpass"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->d:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/16 v4, 0x82

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    invoke-static {p0, v2}, Lcom/zhangdan/app/data/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_11
    invoke-virtual {v1}, Lcom/zhangdan/app/data/d;->a()I

    move-result v2

    sget-object v5, Lcom/zhangdan/app/data/d;->f:Lcom/zhangdan/app/data/d;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/d;->a()I

    move-result v5

    if-ne v2, v5, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "email"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->d:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p0, v2}, Lcom/zhangdan/app/data/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "service_type"

    iget v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "bank_id"

    iget v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
