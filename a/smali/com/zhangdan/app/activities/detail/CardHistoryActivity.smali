.class public Lcom/zhangdan/app/activities/detail/CardHistoryActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:Lcom/zhangdan/app/data/model/j;

.field private d:Ljava/util/List;

.field private e:Ljava/util/HashMap;

.field private f:Lcom/zhangdan/app/activities/detail/a/l;

.field private g:Ljava/util/List;

.field private h:Landroid/widget/ExpandableListView;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->e:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->i:I

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->i:I

    return v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;I)V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->f:Lcom/zhangdan/app/activities/detail/a/l;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/a/l;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/c;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/c;->a()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/zhangdan/app/data/db/b/j;->a(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v6

    move v2, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->f:Lcom/zhangdan/app/activities/detail/a/l;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/detail/a/l;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->f:Lcom/zhangdan/app/activities/detail/a/l;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/a/l;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/aj;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/aj;->l()I

    move-result v5

    move v4, v3

    :goto_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v4, v1, :cond_3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->g:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/http/p;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/p;->a()I

    move-result v7

    if-ne v5, v7, :cond_5

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/p;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/zhangdan/app/data/model/http/aj;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/p;->b()I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_4

    move v1, v5

    :cond_4
    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/aj;->a(I)V

    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->h:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->i:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f060039
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    const-string v1, "key_user_bank"

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/ZhangdanApplication;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/j;

    iput-object v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->c:Lcom/zhangdan/app/data/model/j;

    const-string v1, "key_user_bank"

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/ZhangdanApplication;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->c:Lcom/zhangdan/app/data/model/j;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "user_bank"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->c:Lcom/zhangdan/app/data/model/j;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->c:Lcom/zhangdan/app/data/model/j;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/data/db/b/c;->b(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->d:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/data/db/b/g;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->g:Ljava/util/List;

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->setContentView(I)V

    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08013d

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/d;->a(Landroid/view/View;I)V

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600a8

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->h:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/c;

    move-object v2, v0

    :goto_1
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03007f

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0601c2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->H()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f0601c3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0601c4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0601c5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0201a0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v1, 0x7f0601c6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "\u5386\u53f2\u8bb0\u5f55"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f02018d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v1, 0x7f0601c7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "\u5386\u53f2\u8d26\u5355\uff1a"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0601c9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "\u8d26\u5355\u6765\u6e90\uff1a"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0601c8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->d:Ljava/util/List;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u5c01"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0601ca

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v2, :cond_3

    const-string v2, ""

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->h:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    new-instance v0, Lcom/zhangdan/app/activities/detail/a/l;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->e:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, v3}, Lcom/zhangdan/app/activities/detail/a/l;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->f:Lcom/zhangdan/app/activities/detail/a/l;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->h:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->f:Lcom/zhangdan/app/activities/detail/a/l;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->h:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/zhangdan/app/activities/detail/o;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/detail/o;-><init>(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/c;->q()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v3

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

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

    iget v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->h:Landroid/widget/ExpandableListView;

    iget v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :cond_0
    const-string v0, "user_bank"

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
