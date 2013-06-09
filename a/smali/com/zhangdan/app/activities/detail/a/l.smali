.class public final Lcom/zhangdan/app/activities/detail/a/l;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;

.field private c:Ljava/util/HashMap;

.field private d:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/a/l;->d:Ljava/text/DecimalFormat;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/a/l;->a:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/zhangdan/app/activities/detail/a/l;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/zhangdan/app/activities/detail/a/l;->c:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/a/l;->c:Ljava/util/HashMap;

    return-void
.end method

.method public final getChild(II)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public final getChildType(II)I
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/detail/a/l;->getChildrenCount(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getChildTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/activities/detail/a/l;->getChildType(II)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/l;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03007d

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/c;

    const v1, 0x7f0601b0

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/h/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/data/model/c;->b(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const-string v4, "1900"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/zhangdan/app/h/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Lcom/zhangdan/app/data/model/c;->a(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-"

    const-string v5, "/"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "-"

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0601b2

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/l;->d:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->l()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0601b4

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/l;->d:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->f()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0601b6

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/l;->d:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->m()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0601b8

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/l;->d:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->j()F

    move-result v0

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-object p4

    :cond_4
    if-ne v0, v5, :cond_f

    if-nez p4, :cond_9

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/l;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030094

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    new-instance v1, Lcom/zhangdan/app/activities/detail/a/m;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/detail/a/m;-><init>(Lcom/zhangdan/app/activities/detail/a/l;)V

    const v0, 0x7f060202

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/detail/a/m;->a:Landroid/widget/ImageView;

    const v0, 0x7f060204

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/detail/a/m;->b:Landroid/widget/TextView;

    const v0, 0x7f060203

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/detail/a/m;->d:Landroid/widget/TextView;

    const v0, 0x7f060205

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/detail/a/m;->c:Landroid/widget/TextView;

    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/l;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/l;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/c;

    add-int/lit8 v3, p2, -0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_3

    if-ltz v3, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/aj;

    iget-object v3, v2, Lcom/zhangdan/app/activities/detail/a/m;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/aj;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/aj;->k()I

    move-result v4

    const-string v3, ""

    if-ne v4, v5, :cond_a

    const-string v3, "\uffe5"

    :cond_5
    :goto_2
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/aj;->m()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v2, Lcom/zhangdan/app/activities/detail/a/m;->d:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/a/l;->d:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/aj;->m()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/aj;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz v3, :cond_8

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const-string v3, "\u672a\u5206\u7c7b"

    :cond_8
    iget-object v4, v2, Lcom/zhangdan/app/activities/detail/a/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/aj;->a()I

    move-result v5

    invoke-static {v5}, Lcom/zhangdan/app/data/c;->a(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/aj;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, "] ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/c;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v2, Lcom/zhangdan/app/activities/detail/a/m;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/detail/a/m;

    move-object v2, v0

    goto/16 :goto_1

    :cond_a
    if-ne v4, v6, :cond_b

    const-string v3, "$"

    goto/16 :goto_2

    :cond_b
    const/4 v5, 0x4

    if-ne v4, v5, :cond_c

    const-string v3, "\u20ac"

    goto/16 :goto_2

    :cond_c
    const/4 v5, 0x3

    if-ne v4, v5, :cond_d

    const-string v3, "HK$"

    goto/16 :goto_2

    :cond_d
    const/4 v5, 0x5

    if-ne v4, v5, :cond_e

    const-string v3, "\u20a9"

    goto/16 :goto_2

    :cond_e
    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    const-string v3, "\u00a5"

    goto/16 :goto_2

    :cond_f
    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/l;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a3

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    goto/16 :goto_0
.end method

.method public final getChildrenCount(I)I
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/l;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/l;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/l;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    if-nez p3, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/l;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030080

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/zhangdan/app/activities/detail/a/n;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/detail/a/n;-><init>(Lcom/zhangdan/app/activities/detail/a/l;)V

    const v0, 0x7f0601cb

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/detail/a/n;->a:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/c;

    iget-object v5, v1, Lcom/zhangdan/app/activities/detail/a/n;->a:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/zhangdan/app/h/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/c;->b(Ljava/lang/String;)V

    if-eqz v3, :cond_7

    const-string v7, "1900"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v1}, Lcom/zhangdan/app/h/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    if-le v3, v10, :cond_6

    aget-object v3, v1, v8

    if-eqz v3, :cond_6

    aget-object v1, v1, v8

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "0"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u5e74"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v3, ""

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/zhangdan/app/h/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Lcom/zhangdan/app/data/model/c;->b(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string v6, "1900"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v2}, Lcom/zhangdan/app/h/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-le v1, v10, :cond_5

    aget-object v1, v0, v9

    if-eqz v1, :cond_5

    aget-object v0, v0, v9

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "0"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6708\u8d26\u5355"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3

    :cond_4
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/detail/a/n;

    move-object v1, v0

    goto/16 :goto_0

    :cond_5
    move-object v0, v3

    goto :goto_4

    :cond_6
    move-object v1, v4

    goto/16 :goto_3

    :cond_7
    move-object v1, v3

    goto/16 :goto_2

    :cond_8
    move-object v1, v2

    goto/16 :goto_1
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
