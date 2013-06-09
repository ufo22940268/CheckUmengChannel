.class public Lcom/zhangdan/app/activities/sms/SmsEditActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/zhangdan/app/sms/a;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/EditText;

.field private i:I

.field private j:Landroid/app/AlertDialog;

.field private k:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->i:I

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1\u6708"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2\u6708"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3\u6708"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "4\u6708"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "5\u6708"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6\u6708"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "7\u6708"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "8\u6708"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "9\u6708"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "10\u6708"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "11\u6708"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "12\u6708"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->k:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->j:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)Lcom/zhangdan/app/sms/a;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->k()V

    return-void
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->j()V

    return-void
.end method

.method private j()V
    .locals 11

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const v0, 0x7f0600f8

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f060128

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v6

    const v1, 0x7f020282

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const v0, 0x7f06012a

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->q()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/zhangdan/app/h/g;->a(J)[I

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    aget v3, v1, v9

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

    aget v1, v1, v10

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

    if-nez v6, :cond_6

    iget-object v5, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v5}, Lcom/zhangdan/app/sms/a;->s()I

    move-result v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v6}, Lcom/zhangdan/app/sms/a;->r()I

    move-result v6

    const/16 v7, 0x14

    if-ge v6, v7, :cond_0

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_0

    const/16 v5, 0xc

    :cond_0
    if-lez v5, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\u6708\u4efd\u8d26\u5355"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v7}, Lcom/zhangdan/app/sms/a;->l()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "\u4eba\u6c11\u5e01"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\u5143\uff0c\u5230\u671f\u8fd8\u6b3e\u65e5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    if-nez v6, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "\u6708"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\u65e5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f020226

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    const/4 v5, 0x4

    if-ne v6, v5, :cond_7

    const-string v3, "\u4f18\u60e0"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f020380

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    if-ne v6, v8, :cond_a

    const-string v5, "\u6d88\u8d39"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "\uffe5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "\u5143"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "\u5143"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f020232

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_a
    if-ne v6, v10, :cond_d

    const-string v5, "\u8fd8\u6b3e"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "\uffe5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "\u5143"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "\u5143"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f020219

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x3

    if-ne v6, v3, :cond_5

    const-string v3, "\u5176\u4ed6"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f020384

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private k()V
    .locals 6

    const v0, 0x7f0600fa

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600fd

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600ff

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600fb

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0600fc

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0600fe

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f060100

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v4}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v4}, Lcom/zhangdan/app/sms/a;->s()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u6708\u8d26\u5355"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "0"

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "0"

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\uffe5"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u5143"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "$"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5143"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v4}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const v4, 0x7f020232

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const-string v0, "\u6d88\u8d39"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v4}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const v4, 0x7f020219

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const-string v0, "\u8fd8\u6b3e"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private l()V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x7f0600e2

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0600e7

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->h:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/zhangdan/app/activities/sms/t;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/sms/t;-><init>(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f060101

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0600e6

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private m()V
    .locals 2

    const v0, 0x7f0600e2

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-static {v0, v1}, Lcom/zhangdan/app/sms/d;->a(Landroid/content/Context;Lcom/zhangdan/app/sms/a;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "bill_info"

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-static {v0, v1}, Lcom/zhangdan/app/sms/d;->a(Landroid/content/Context;Lcom/zhangdan/app/sms/a;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "bill_info"

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v4, v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/sms/a;->d(I)V

    :cond_0
    :goto_1
    iput v4, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->i:I

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->k()V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->j()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/sms/a;->d(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9009\u62e9\u6708\u4efd"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->k:[Ljava/lang/String;

    new-instance v2, Lcom/zhangdan/app/activities/sms/u;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/sms/u;-><init>(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->j:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->l()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->g:Landroid/widget/TextView;

    const-string v1, "\u4eba\u6c11\u5e01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v2, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->i:I

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->l()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->g:Landroid/widget/TextView;

    const-string v1, "\u7f8e\u5143"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v3, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->i:I

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->m()V

    goto/16 :goto_0

    :cond_3
    iget v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->i:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/sms/a;->f(Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->k()V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->j()V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->m()V

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->i:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/sms/a;->b(Ljava/lang/String;)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060039 -> :sswitch_0
        0x7f0600e6 -> :sswitch_4
        0x7f0600fa -> :sswitch_1
        0x7f0600fd -> :sswitch_2
        0x7f0600ff -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "card_num"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->c:Ljava/lang/String;

    const-string v1, "bank_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->d:Ljava/lang/String;

    const-string v1, "true_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->e:Ljava/lang/String;

    const-string v1, "bill_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/a;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "card_num"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->c:Ljava/lang/String;

    const-string v0, "bank_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->d:Ljava/lang/String;

    const-string v0, "true_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->e:Ljava/lang/String;

    const-string v0, "bill_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/a;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02038c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0601da

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->j()V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->k()V

    return-void
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

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bank_name"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "true_name"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bill_info"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->f:Lcom/zhangdan/app/sms/a;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
