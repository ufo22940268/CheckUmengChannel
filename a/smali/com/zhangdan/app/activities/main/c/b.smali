.class final Lcom/zhangdan/app/activities/main/c/b;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/main/c/a;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/main/c/a;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/c/b;->a:Lcom/zhangdan/app/activities/main/c/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-virtual {p1}, Lcom/zhangdan/app/activities/main/c/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->b()Lcom/zhangdan/app/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->d()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/c/b;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/c/b;->a:Lcom/zhangdan/app/activities/main/c/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/c/a;->a(Lcom/zhangdan/app/activities/main/c/a;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/c/b;->a:Lcom/zhangdan/app/activities/main/c/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/c/a;->a(Lcom/zhangdan/app/activities/main/c/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    add-int/lit8 v0, v1, -0x3

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/c/b;->a:Lcom/zhangdan/app/activities/main/c/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/c/a;->a(Lcom/zhangdan/app/activities/main/c/a;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    add-int/lit8 v1, p1, 0x3

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/c/b;->a:Lcom/zhangdan/app/activities/main/c/a;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/c/a;->a(Lcom/zhangdan/app/activities/main/c/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/c/b;->a:Lcom/zhangdan/app/activities/main/c/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/c/a;->a(Lcom/zhangdan/app/activities/main/c/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/c/b;->a:Lcom/zhangdan/app/activities/main/c/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/c/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/zhangdan/app/activities/main/c/c;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/main/c/c;-><init>(Lcom/zhangdan/app/activities/main/c/b;)V

    const v0, 0x7f0601a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/main/c/c;->a:Landroid/widget/ImageView;

    const v0, 0x7f0601a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/main/c/c;->b:Landroid/widget/TextView;

    const v0, 0x7f0601aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/main/c/c;->c:Landroid/widget/TextView;

    const v0, 0x7f0601ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/main/c/c;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/main/c/c;

    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/main/c/b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/j;

    if-nez v1, :cond_1

    :goto_0
    return-object p2

    :cond_1
    iget-object v2, v0, Lcom/zhangdan/app/activities/main/c/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->H()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/c/b;->b:Ljava/util/Map;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/c/b;->b:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/a;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/a;->c()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, v0, Lcom/zhangdan/app/activities/main/c/c;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "---"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "---"

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v0, Lcom/zhangdan/app/activities/main/c/c;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/c/c;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->s()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/c/b;->a:Lcom/zhangdan/app/activities/main/c/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/c/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08009f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v3

    goto :goto_1
.end method
