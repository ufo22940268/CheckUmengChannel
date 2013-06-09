.class public final Lcom/zhangdan/app/activities/sms/d;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field b:Landroid/view/View$OnClickListener;

.field c:Landroid/view/View$OnClickListener;

.field private d:Landroid/view/LayoutInflater;

.field private e:Ljava/util/List;

.field private f:I

.field private g:Landroid/view/View;

.field private h:Lcom/zhangdan/app/data/model/l;

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private k:Lcom/zhangdan/app/activities/sms/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/l;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/activities/sms/d;->f:I

    new-instance v0, Lcom/zhangdan/app/activities/sms/e;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/sms/e;-><init>(Lcom/zhangdan/app/activities/sms/d;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/d;->a:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zhangdan/app/activities/sms/f;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/sms/f;-><init>(Lcom/zhangdan/app/activities/sms/d;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/d;->b:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zhangdan/app/activities/sms/g;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/sms/g;-><init>(Lcom/zhangdan/app/activities/sms/d;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/d;->c:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/d;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/zhangdan/app/activities/sms/d;->h:Lcom/zhangdan/app/data/model/l;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/d;->d:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/sms/d;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/d;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/sms/d;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/sms/d;->f:I

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/sms/d;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/d;->g:Landroid/view/View;

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/sms/d;)Lcom/zhangdan/app/activities/sms/c;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/d;->k:Lcom/zhangdan/app/activities/sms/c;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/sms/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/d;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/sms/d;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/d;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/sms/d;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/d;->g:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/zhangdan/app/activities/sms/c;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/d;->k:Lcom/zhangdan/app/activities/sms/c;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/d;->j:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/d;->e:Ljava/util/List;

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/d;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-nez p2, :cond_8

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/d;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f030049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/zhangdan/app/activities/sms/k;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/sms/k;-><init>(Lcom/zhangdan/app/activities/sms/d;)V

    const v0, 0x7f06012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->a:Landroid/widget/ImageView;

    const v0, 0x7f06012a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->b:Landroid/widget/TextView;

    const v0, 0x7f06012c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->c:Landroid/widget/TextView;

    const v0, 0x7f06012d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->d:Landroid/widget/TextView;

    const v0, 0x7f060128

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->e:Landroid/widget/RelativeLayout;

    const v0, 0x7f06012e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->f:Landroid/widget/RelativeLayout;

    const v0, 0x7f060131

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->g:Landroid/widget/TextView;

    const v0, 0x7f060133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->i:Landroid/widget/RelativeLayout;

    const v0, 0x7f060136

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f060139

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->k:Landroid/widget/RelativeLayout;

    const v0, 0x7f060129

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f060135

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->l:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_7

    if-ltz p1, :cond_7

    iget-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->i:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/d;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->j:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->j:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/d;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->k:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/d;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->h:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/zhangdan/app/activities/sms/k;->h:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/zhangdan/app/activities/sms/j;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/sms/j;-><init>(Lcom/zhangdan/app/activities/sms/d;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v2

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->q()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/zhangdan/app/h/g;->a(J)[I

    move-result-object v3

    if-nez v2, :cond_9

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget v5, v3, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->j:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->g:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->e:Landroid/widget/RelativeLayout;

    const v3, 0x7f020282

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->a:Landroid/widget/ImageView;

    const v3, 0x7f020383

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->s()I

    move-result v2

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->r()I

    move-result v3

    const/16 v4, 0x14

    if-ge v3, v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_0

    const/16 v2, 0xc

    :cond_0
    if-eqz v2, :cond_1

    iget-object v4, v1, Lcom/zhangdan/app/activities/sms/k;->c:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u6708\u4efd\u8d26\u5355"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "\u4eba\u6c11\u5e01"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "\u5143,"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "\u7f8e\u5143"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\u5143,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v5, "\u5230\u671f\u8fd8\u6b3e\u65e5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    if-nez v3, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->s()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "\u6708"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\u65e5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    iget v2, p0, Lcom/zhangdan/app/activities/sms/d;->f:I

    if-ne v2, p1, :cond_f

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->f:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->b()I

    move-result v2

    if-nez v2, :cond_10

    iget-object v1, v1, Lcom/zhangdan/app/activities/sms/k;->l:Landroid/widget/TextView;

    const-string v2, "\u53cd\u9988"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const v1, 0x7f060128

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_7
    return-object p2

    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/sms/k;

    move-object v1, v0

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x1

    if-eq v2, v4, :cond_a

    const/4 v4, 0x2

    if-ne v2, v4, :cond_d

    :cond_a
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->q()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/zhangdan/app/h/g;->b(J)I

    move-result v4

    iget-object v5, v1, Lcom/zhangdan/app/activities/sms/k;->b:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget v7, v3, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget v3, v3, v7

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Lcom/zhangdan/app/h/g;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/zhangdan/app/activities/sms/k;->j:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, v1, Lcom/zhangdan/app/activities/sms/k;->g:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v1, Lcom/zhangdan/app/activities/sms/k;->e:Landroid/widget/RelativeLayout;

    const v4, 0x7f020282

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->a:Landroid/widget/ImageView;

    const v3, 0x7f020232

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->c:Landroid/widget/TextView;

    const-string v3, "\u6d88\u8d39\uff1a"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, v1, Lcom/zhangdan/app/activities/sms/k;->d:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\uffe5"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u5143"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_c
    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->a:Landroid/widget/ImageView;

    const v3, 0x7f020219

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->c:Landroid/widget/TextView;

    const-string v3, "\u8fd8\u6b3e\uff1a"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_d
    const/4 v4, 0x3

    if-ne v2, v4, :cond_e

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget v5, v3, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->j:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->g:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->e:Landroid/widget/RelativeLayout;

    const v3, 0x7f020282

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->a:Landroid/widget/ImageView;

    const v3, 0x7f020384

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->c:Landroid/widget/TextView;

    const-string v3, "\u5176\u4ed6:"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_e
    const/4 v4, 0x4

    if-ne v2, v4, :cond_6

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget v5, v3, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->j:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->g:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->e:Landroid/widget/RelativeLayout;

    const v3, 0x7f020282

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->a:Landroid/widget/ImageView;

    const v3, 0x7f020380

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->c:Landroid/widget/TextView;

    const-string v3, "\u4f18\u60e0:"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/a;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_f
    iget-object v2, v1, Lcom/zhangdan/app/activities/sms/k;->f:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_10
    iget-object v1, v1, Lcom/zhangdan/app/activities/sms/k;->l:Landroid/widget/TextView;

    const-string v2, "\u5df2\u53cd\u9988"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method
