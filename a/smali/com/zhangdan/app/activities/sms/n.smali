.class final Lcom/zhangdan/app/activities/sms/n;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

.field private b:Ljava/util/List;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/n;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/n;->b:Ljava/util/List;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/n;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuffer;)V
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/n;->b:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/n;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/n;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    const-string v3, "\u6b63\u5728"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    const-string v4, "\u5b8c\u6210"

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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
    .locals 4

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/n;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0300fe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/n;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/n;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/n;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->g(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/n;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/n;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    move-object v1, p2

    goto :goto_0
.end method
