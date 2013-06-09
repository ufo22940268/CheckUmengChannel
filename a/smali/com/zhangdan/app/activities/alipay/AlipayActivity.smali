.class public Lcom/zhangdan/app/activities/alipay/AlipayActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private c:Lcom/zhangdan/app/data/model/j;

.field private d:Ljava/text/DecimalFormat;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->d:Ljava/text/DecimalFormat;

    return-void
.end method

.method private a(FFI)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f060120

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f060121

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f060122

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x1

    if-ne p3, v4, :cond_1

    const v4, 0x7f0800c8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\uffe5"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->d:Ljava/text/DecimalFormat;

    float-to-double v5, p2

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\uffe5"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->d:Ljava/text/DecimalFormat;

    float-to-double v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v4, 0x2

    if-ne p3, v4, :cond_2

    const v4, 0x7f0800c9

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "$"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->d:Ljava/text/DecimalFormat;

    float-to-double v5, p2

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->d:Ljava/text/DecimalFormat;

    float-to-double v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0xa

    if-ne p3, v4, :cond_0

    const v4, 0x7f0800ca

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u7ea6"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->d:Ljava/text/DecimalFormat;

    float-to-double v5, p2

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7ea6\uffe5"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->d:Ljava/text/DecimalFormat;

    float-to-double v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Lcom/zhangdan/app/data/model/j;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c:Lcom/zhangdan/app/data/model/j;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/alipay/AlipayActivity;Lcom/zhangdan/app/data/model/http/a;)V
    .locals 6

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f060125

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f060126

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f060124

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\uffe5"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/a;->e()I

    move-result v0

    invoke-static {v0}, Lcom/zhangdan/app/activities/alipay/f;->a(I)Lcom/zhangdan/app/activities/alipay/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/alipay/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060039

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06003f

    if-ne v0, v1, :cond_3

    const-string v0, "yuan_alipay_about"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->g:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    if-nez v0, :cond_2

    new-instance v0, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->g:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->g:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAnchorView(Landroid/view/View;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/zhangdan/app/popmenu/d;

    invoke-direct {v1}, Lcom/zhangdan/app/popmenu/d;-><init>()V

    invoke-virtual {v1, v11}, Lcom/zhangdan/app/popmenu/d;->a(I)V

    const v2, 0x7f0800c6

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/popmenu/d;->a(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/zhangdan/app/popmenu/b;

    invoke-direct {v1, p0, v0}, Lcom/zhangdan/app/popmenu/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->g:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->g:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->g:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->show()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06007d

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06007e

    if-ne v0, v1, :cond_5

    :cond_4
    const-string v0, "yuan_alipay_currency_about"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/zhangdan/app/activities/alipay/d;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/alipay/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/alipay/d;->show()V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060083

    if-ne v0, v1, :cond_0

    const-string v0, "yuan_alipay_submit"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f060082

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "."

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "\u8bf7\u8f93\u5165\u8fd8\u6b3e\u91d1\u989d"

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :try_start_0
    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_8

    const-string v0, "\u8bf7\u8f93\u5165\u8fd8\u6b3e\u91d1\u989d"

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u8fd8\u6b3e\u91d1\u989d"

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->d()J

    move-result-wide v2

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v4

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_9

    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9009\u62e9\u5361\u53f7"

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/zhangdan/app/activities/alipay/a;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/zhangdan/app/activities/alipay/a;-><init>(Lcom/zhangdan/app/activities/alipay/AlipayActivity;JILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v6, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_9
    new-instance v1, Lcom/zhangdan/app/activities/alipay/b;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/alipay/b;-><init>(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)V

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v11

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    aput-object v5, v6, v2

    const/4 v2, 0x3

    aput-object v0, v6, v2

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v8, v6, v0

    const/4 v0, 0x6

    aput-object v9, v6, v0

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/activities/alipay/b;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/16 v8, 0x8

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    const-string v1, "key_user_bank"

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/ZhangdanApplication;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/j;

    iput-object v1, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c:Lcom/zhangdan/app/data/model/j;

    const-string v1, "key_user_bank"

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/ZhangdanApplication;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c:Lcom/zhangdan/app/data/model/j;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "userBankInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    iput-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c:Lcom/zhangdan/app/data/model/j;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c:Lcom/zhangdan/app/data/model/j;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02038b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0601da

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f06003f

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f06007f

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v5

    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->l()F

    move-result v4

    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->v()F

    move-result v3

    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->w()F

    move-result v1

    iget-object v6, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v6

    if-nez v6, :cond_2

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    :cond_2
    sget-object v6, Lcom/zhangdan/app/h/f;->a:Lcom/zhangdan/app/h/f;

    invoke-virtual {v6}, Lcom/zhangdan/app/h/f;->b()F

    move-result v6

    mul-float/2addr v6, v3

    add-float/2addr v6, v5

    sget-object v7, Lcom/zhangdan/app/h/f;->a:Lcom/zhangdan/app/h/f;

    invoke-virtual {v7}, Lcom/zhangdan/app/h/f;->b()F

    move-result v7

    mul-float/2addr v7, v1

    add-float/2addr v7, v4

    invoke-direct {p0, v5, v4, v9}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->a(FFI)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    cmpl-float v4, v3, v2

    if-lez v4, :cond_4

    invoke-direct {p0, v3, v1, v11}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->a(FFI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020085

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v8, -0x2

    invoke-direct {v4, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x40a0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0xa

    invoke-direct {p0, v6, v7, v1}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->a(FFI)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f06007e

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f06007d

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->A()F

    move-result v0

    sub-float v0, v6, v0

    cmpg-float v1, v0, v2

    if-gez v1, :cond_5

    :goto_2
    const v0, 0x7f060082

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->d:Ljava/text/DecimalFormat;

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060083

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060080

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f060081

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->f:Landroid/widget/LinearLayout;

    const-string v0, "card"

    const-string v1, "show_alipay_desc"

    invoke-virtual {p0, v0, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/zhangdan/app/activities/alipay/e;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/alipay/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/alipay/e;->show()V

    :cond_3
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/j;->d()J

    move-result-wide v2

    new-instance v4, Lcom/zhangdan/app/activities/alipay/c;

    invoke-direct {v4, p0}, Lcom/zhangdan/app/activities/alipay/c;-><init>(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v10

    aput-object v0, v5, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v11

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/activities/alipay/c;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f06007d

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f06007e

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    move v2, v0

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->g:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->g:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->g:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->g:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->g:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->dismiss()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/activities/alipay/AlipayAboutActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "userBankInfo"

    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
