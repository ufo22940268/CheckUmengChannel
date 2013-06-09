.class public final Lcom/zhangdan/app/activities/newimport/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/View;

.field private c:Lorg/taptwo/android/widget/ViewFlow;

.field private d:Lcom/zhangdan/app/widget/EmailEditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/CheckBox;

.field private i:Lcom/zhangdan/app/widget/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/c;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/newimport/c;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->b:Landroid/view/View;

    const v1, 0x7f0600b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/taptwo/android/widget/ViewFlow;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->c:Lorg/taptwo/android/widget/ViewFlow;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->c:Lorg/taptwo/android/widget/ViewFlow;

    new-instance v1, Lcom/zhangdan/app/activities/newimport/a;

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/c;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/zhangdan/app/activities/newimport/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/taptwo/android/widget/ViewFlow;->setAdapter(Landroid/widget/Adapter;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->b:Landroid/view/View;

    const v1, 0x7f0601f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/widget/EmailEditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->d:Lcom/zhangdan/app/widget/EmailEditText;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->b:Landroid/view/View;

    const v1, 0x7f0601fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->d:Lcom/zhangdan/app/widget/EmailEditText;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/c;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/EmailEditText;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->d:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/widget/EmailEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->d:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/widget/EmailEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->b:Landroid/view/View;

    const v1, 0x7f0601ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->f:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->b:Landroid/view/View;

    const v1, 0x7f0601ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->g:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->b:Landroid/view/View;

    const v1, 0x7f0601eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->h:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->b:Landroid/view/View;

    const v1, 0x7f0601ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/c;->a:Landroid/app/Activity;

    const v2, 0x7f080132

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v3, v4, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/newimport/c;Lcom/zhangdan/app/widget/f;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/c;->i:Lcom/zhangdan/app/widget/f;

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/newimport/c;)Lcom/zhangdan/app/widget/f;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->i:Lcom/zhangdan/app/widget/f;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/newimport/c;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->i:Lcom/zhangdan/app/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->i:Lcom/zhangdan/app/widget/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/f;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/newimport/c;)Lcom/zhangdan/app/widget/EmailEditText;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->d:Lcom/zhangdan/app/widget/EmailEditText;

    return-object v0
.end method

.method private d()V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->b:Landroid/view/View;

    const v1, 0x7f0601f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->b:Landroid/view/View;

    const v1, 0x7f060171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/newimport/c;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->e:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->b:Landroid/view/View;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->c:Lorg/taptwo/android/widget/ViewFlow;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->a:Landroid/app/Activity;

    return-void
.end method

.method public final a(II)Z
    .locals 1

    const v0, 0x7f0b0004

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->b:Landroid/view/View;

    const v1, 0x7f0601f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    const/4 v5, 0x4

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->b:Landroid/view/View;

    const v1, 0x7f0601f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->b:Landroid/view/View;

    const v1, 0x7f060171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xc

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->d:Lcom/zhangdan/app/widget/EmailEditText;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->e:Landroid/widget/EditText;

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/app/activities/newimport/c;->d()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->f:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->a:Landroid/app/Activity;

    const-string v1, "yuan_mail_direct_login"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/c;->a:Landroid/app/Activity;

    const v2, 0x7f080133

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->d:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/c;->a:Landroid/app/Activity;

    const v2, 0x7f080122

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/c;->a:Landroid/app/Activity;

    const v2, 0x7f080123

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/c;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/c;->a:Landroid/app/Activity;

    const v2, 0x7f080124

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance v2, Lcom/zhangdan/app/activities/newimport/d;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/newimport/d;-><init>(Lcom/zhangdan/app/activities/newimport/c;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/newimport/d;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0601ec

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->a:Landroid/app/Activity;

    const-string v1, "yuan_mail_direct_user_agreement"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/c;->a:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/c;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/c;->e:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/newimport/c;->d()V

    :cond_0
    return-void
.end method
