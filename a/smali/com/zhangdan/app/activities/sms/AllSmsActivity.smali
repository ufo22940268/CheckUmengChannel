.class public Lcom/zhangdan/app/activities/sms/AllSmsActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field c:Lcom/zhangdan/app/activities/sms/c;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/ListView;

.field private h:I

.field private i:I

.field private j:I

.field private final k:I

.field private l:Ljava/util/List;

.field private m:Lcom/zhangdan/app/activities/sms/d;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->k:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->l:Ljava/util/List;

    new-instance v0, Lcom/zhangdan/app/activities/sms/a;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/sms/a;-><init>(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->c:Lcom/zhangdan/app/activities/sms/c;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/sms/AllSmsActivity;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->i:I

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j:I

    return v0
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->i:I

    return v0
.end method

.method static synthetic f(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->h:I

    return v0
.end method

.method static synthetic g(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Lcom/zhangdan/app/activities/sms/d;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->m:Lcom/zhangdan/app/activities/sms/d;

    return-object v0
.end method

.method private j()V
    .locals 9

    const v8, 0x7f06003c

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, -0x1

    const/4 v3, 0x0

    iput v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->i:I

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j:I

    if-ne v0, v5, :cond_0

    iget v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->i:I

    iget v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->h:I

    invoke-static {p0, v0, v1}, Lcom/zhangdan/app/sms/d;->a(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_0
    move v2, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->m:Lcom/zhangdan/app/activities/sms/d;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/sms/d;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->m:Lcom/zhangdan/app/activities/sms/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/sms/d;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->i:I

    iget v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j:I

    if-ne v0, v5, :cond_2

    const v0, 0x7f06019a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v8}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_3
    return-void

    :cond_0
    iget v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->i:I

    iget v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->h:I

    iget v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j:I

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/sms/d;->a(Landroid/content/Context;III)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->l:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/a;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    const v0, 0x7f06019a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v8}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/WrappedActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "bill_info"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    check-cast v0, Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->g()J

    move-result-wide v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->l:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->g()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/zhangdan/app/sms/a;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/zhangdan/app/sms/a;->d(I)V

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->s()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/zhangdan/app/sms/a;->g(I)V

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/zhangdan/app/sms/a;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/zhangdan/app/sms/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->b()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/zhangdan/app/sms/a;->b(I)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->m:Lcom/zhangdan/app/activities/sms/d;

    iget-object v5, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->l:Ljava/util/List;

    invoke-virtual {v1, v5}, Lcom/zhangdan/app/activities/sms/d;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->m:Lcom/zhangdan/app/activities/sms/d;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/sms/d;->notifyDataSetChanged()V

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->finish()V

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j:I

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j()V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j:I

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j()V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j:I

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j()V

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j:I

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j()V

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j:I

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j()V

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j:I

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f060039 -> :sswitch_0
        0x7f06019b -> :sswitch_0
        0x7f06019e -> :sswitch_1
        0x7f06019f -> :sswitch_5
        0x7f0601a0 -> :sswitch_2
        0x7f0601a1 -> :sswitch_3
        0x7f0601a2 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030077

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "card_num"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->d:Ljava/lang/String;

    const-string v1, "bank_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->e:Ljava/lang/String;

    const-string v1, "true_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->f:Ljava/lang/String;

    const-string v1, "bill_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->h:I

    iget v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->h:I

    if-ne v0, v3, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "card_num"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->d:Ljava/lang/String;

    const-string v0, "bank_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->e:Ljava/lang/String;

    const-string v0, "true_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->f:Ljava/lang/String;

    const-string v0, "bill_id"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->h:I

    :cond_0
    iget v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->i:I

    iget v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->h:I

    invoke-static {p0, v0, v1}, Lcom/zhangdan/app/sms/d;->a(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->i:I

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02038c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0601da

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f06019c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f06019b

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f06019d

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->n:Landroid/widget/RelativeLayout;

    const v0, 0x7f06019e

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f06019f

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0601a0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0601a1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0601a2

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0601a3

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->g:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    new-instance v1, Lcom/zhangdan/app/activities/sms/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->c()Lcom/zhangdan/app/data/model/l;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/zhangdan/app/activities/sms/d;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/l;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->m:Lcom/zhangdan/app/activities/sms/d;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->m:Lcom/zhangdan/app/activities/sms/d;

    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->l:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/zhangdan/app/activities/sms/d;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->m:Lcom/zhangdan/app/activities/sms/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/sms/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->m:Lcom/zhangdan/app/activities/sms/d;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->c:Lcom/zhangdan/app/activities/sms/c;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/sms/d;->a(Lcom/zhangdan/app/activities/sms/c;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->m:Lcom/zhangdan/app/activities/sms/d;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/zhangdan/app/activities/sms/b;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/sms/b;-><init>(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const v0, 0x7f0601a4

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->o:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    return-void

    :cond_4
    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/a;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->o:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j:I

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->j()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->finish()V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/zhangdan/app/activities/WrappedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "card_num"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bank_name"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "true_name"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bill_id"

    iget v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
