.class public Lcom/zhangdan/app/activities/detail/PartPaidActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:J

.field private d:J

.field private e:I

.field private f:D

.field private g:F

.field private h:I

.field private i:Z

.field private j:Lcom/zhangdan/app/activities/detail/s;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->f:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->g:F

    iput-boolean v2, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->i:Z

    iput-boolean v2, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/detail/PartPaidActivity;D)V
    .locals 0

    iput-wide p1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->f:D

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)Lcom/zhangdan/app/activities/detail/s;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->j:Lcom/zhangdan/app/activities/detail/s;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)D
    .locals 2

    iget-wide v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->f:D

    return-wide v0
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->e:I

    return v0
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->c:J

    return-wide v0
.end method

.method static synthetic f(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->d:J

    return-wide v0
.end method

.method static synthetic g(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->j()V

    return-void
.end method

.method private j()V
    .locals 10

    const/4 v9, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const v0, 0x7f0600e3

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v5, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const v1, 0x7f080162

    new-array v6, v9, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->f:D

    invoke-virtual {v5, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v1, v6}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->g:F

    float-to-double v0, v0

    iget-wide v6, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->f:D

    sub-double/2addr v0, v6

    cmpg-double v6, v0, v2

    if-gez v6, :cond_2

    move-wide v1, v2

    :goto_0
    const v0, 0x7f0600e4

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f080163

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-virtual {p0, v3, v6}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->j:Lcom/zhangdan/app/activities/detail/s;

    if-eqz v0, :cond_0

    const v0, 0x7f0600e1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->j:Lcom/zhangdan/app/activities/detail/s;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/s;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    move-wide v1, v0

    goto :goto_0
.end method

.method private k()V
    .locals 9

    const-string v0, "yuan_part_paid_back"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->i:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->h:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->e:I

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->e:I

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->c:J

    :goto_0
    const-wide/16 v5, 0x0

    iget-wide v7, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->f:D

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/zhangdan/app/activities/a/j;->a(Landroid/content/Context;ILjava/lang/String;JDD)J

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "return_amount"

    iget-wide v2, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->f:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->finish()V

    return-void

    :cond_1
    iget-wide v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->d:J

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->k()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v1, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->k()V

    goto :goto_0

    :sswitch_1
    const-string v0, "yuan_part_paid_edit"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->k:Z

    if-eqz v0, :cond_1

    move v0, v9

    :goto_1
    iput-boolean v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->k:Z

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->j:Lcom/zhangdan/app/activities/detail/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->j:Lcom/zhangdan/app/activities/detail/s;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/s;->notifyDataSetChanged()V

    :cond_0
    const v0, 0x7f0600de

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->k:Z

    if-eqz v0, :cond_2

    const v0, 0x7f02014d

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const v0, 0x7f02016e

    goto :goto_2

    :sswitch_2
    const-string v0, "yuan_part_paid_submit"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f0600e7

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "\u8bf7\u8f93\u5165\u8fd8\u6b3e\u91d1\u989d"

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    const-wide/16 v2, 0x0

    cmpg-double v2, v5, v2

    if-gtz v2, :cond_4

    const-string v0, "\u8bf7\u8f93\u5165\u8fd8\u6b3e\u91d1\u989d"

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u8fd8\u6b3e\u91d1\u989d"

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->i:Z

    iget-wide v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->f:D

    add-double/2addr v0, v5

    iput-wide v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->f:D

    iget v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->e:I

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->e:I

    if-nez v0, :cond_5

    iget-wide v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->c:J

    :goto_3
    iget-wide v7, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->f:D

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/zhangdan/app/activities/a/j;->a(Landroid/content/Context;ILjava/lang/String;JDD)J

    move-result-wide v0

    new-instance v2, Lcom/zhangdan/app/data/model/http/af;

    invoke-direct {v2}, Lcom/zhangdan/app/data/model/http/af;-><init>()V

    invoke-virtual {v2, v9}, Lcom/zhangdan/app/data/model/http/af;->a(I)V

    invoke-virtual {v2, v10}, Lcom/zhangdan/app/data/model/http/af;->e(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/data/model/http/af;->b(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/http/af;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->j:Lcom/zhangdan/app/activities/detail/s;

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/detail/s;->a(Lcom/zhangdan/app/data/model/http/af;)V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->j()V

    goto/16 :goto_0

    :cond_5
    iget-wide v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->d:J

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060039 -> :sswitch_0
        0x7f0600dd -> :sswitch_1
        0x7f0600e6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-wide/16 v5, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bill_id"

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->c:J

    const-string v1, "ub_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->d:J

    const-string v1, "ub_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->e:I

    const-string v1, "bill_balance"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->g:F

    const-string v1, "bill_state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->h:I

    iget-wide v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->c:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "bill_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->c:J

    const-string v0, "ub_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->d:J

    const-string v0, "ub_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->e:I

    const-string v0, "bill_balance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->g:F

    const-string v0, "bill_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->h:I

    :cond_0
    const v0, 0x7f0600dd

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->e:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->c:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/db/b/d;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/zhangdan/app/activities/detail/s;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v3, v1}, Lcom/zhangdan/app/activities/detail/s;-><init>(Lcom/zhangdan/app/activities/detail/PartPaidActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->j:Lcom/zhangdan/app/activities/detail/s;

    const v0, 0x7f0600df

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->j:Lcom/zhangdan/app/activities/detail/s;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600e6

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600e7

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->j()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->d:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/db/b/d;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/af;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/af;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->f:D

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-double v5, v0

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->f:D

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/zhangdan/app/widget/a;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08015f

    const v2, 0x7f0a0024

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/widget/a;->a(II)V

    const v1, 0x7f08001f

    const v2, 0x7f080020

    new-instance v3, Lcom/zhangdan/app/activities/detail/q;

    invoke-direct {v3, p0, p2}, Lcom/zhangdan/app/activities/detail/q;-><init>(Lcom/zhangdan/app/activities/detail/PartPaidActivity;Landroid/os/Bundle;)V

    new-instance v4, Lcom/zhangdan/app/activities/detail/r;

    invoke-direct {v4, p0}, Lcom/zhangdan/app/activities/detail/r;-><init>(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zhangdan/app/widget/a;->a(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    return-void
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
    .locals 3

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "bill_id"

    iget-wide v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->c:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "ub_id"

    iget-wide v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->d:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "ub_type"

    iget v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "bill_balance"

    iget v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->g:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "bill_state"

    iget v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
