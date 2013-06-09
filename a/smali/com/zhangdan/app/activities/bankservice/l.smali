.class public final Lcom/zhangdan/app/activities/bankservice/l;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/List;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/zhangdan/app/activities/bankservice/f;

.field private j:Ljava/util/Set;

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->k:I

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/zhangdan/app/data/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return-object p1

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/d;->a()I

    move-result v4

    sget-object v5, Lcom/zhangdan/app/data/d;->a:Lcom/zhangdan/app/data/d;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/d;->a()I

    move-result v5

    if-ne v4, v5, :cond_5

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v4, "idno"

    invoke-static {v0, v4}, Lcom/zhangdan/app/data/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez p2, :cond_3

    invoke-direct {p0, v2}, Lcom/zhangdan/app/activities/bankservice/l;->a(Ljava/util/List;)V

    move-object p1, v1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/zhangdan/app/data/d;->a:Lcom/zhangdan/app/data/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/d;->c()Ljava/lang/String;

    move-result-object v0

    :cond_4
    sget-object v4, Lcom/zhangdan/app/data/d;->a:Lcom/zhangdan/app/data/d;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/zhangdan/app/data/d;->a()I

    move-result v4

    sget-object v5, Lcom/zhangdan/app/data/d;->b:Lcom/zhangdan/app/data/d;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/d;->a()I

    move-result v5

    if-ne v4, v5, :cond_8

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "card_no"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/zhangdan/app/activities/bankservice/l;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/zhangdan/app/data/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez p2, :cond_6

    invoke-direct {p0, v2}, Lcom/zhangdan/app/activities/bankservice/l;->a(Ljava/util/List;)V

    move-object p1, v1

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/zhangdan/app/data/d;->b:Lcom/zhangdan/app/data/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/d;->c()Ljava/lang/String;

    move-result-object v0

    :cond_7
    sget-object v4, Lcom/zhangdan/app/data/d;->b:Lcom/zhangdan/app/data/d;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/zhangdan/app/data/d;->a()I

    move-result v4

    sget-object v5, Lcom/zhangdan/app/data/d;->c:Lcom/zhangdan/app/data/d;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/d;->a()I

    move-result v5

    if-ne v4, v5, :cond_b

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "card_last_four"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/zhangdan/app/activities/bankservice/l;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/zhangdan/app/data/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez p2, :cond_9

    invoke-direct {p0, v2}, Lcom/zhangdan/app/activities/bankservice/l;->a(Ljava/util/List;)V

    move-object p1, v1

    goto/16 :goto_1

    :cond_9
    sget-object v0, Lcom/zhangdan/app/data/d;->c:Lcom/zhangdan/app/data/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/d;->c()Ljava/lang/String;

    move-result-object v0

    :cond_a
    sget-object v4, Lcom/zhangdan/app/data/d;->c:Lcom/zhangdan/app/data/d;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Lcom/zhangdan/app/data/d;->a()I

    move-result v4

    sget-object v5, Lcom/zhangdan/app/data/d;->d:Lcom/zhangdan/app/data/d;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/d;->a()I

    move-result v5

    if-ne v4, v5, :cond_e

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkpass"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/zhangdan/app/activities/bankservice/l;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/zhangdan/app/data/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-nez p2, :cond_c

    invoke-direct {p0, v2}, Lcom/zhangdan/app/activities/bankservice/l;->a(Ljava/util/List;)V

    move-object p1, v1

    goto/16 :goto_1

    :cond_c
    sget-object v0, Lcom/zhangdan/app/data/d;->d:Lcom/zhangdan/app/data/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/d;->c()Ljava/lang/String;

    move-result-object v0

    :cond_d
    sget-object v4, Lcom/zhangdan/app/data/d;->d:Lcom/zhangdan/app/data/d;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0}, Lcom/zhangdan/app/data/d;->a()I

    move-result v0

    sget-object v4, Lcom/zhangdan/app/data/d;->f:Lcom/zhangdan/app/data/d;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/d;->a()I

    move-result v4

    if-ne v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "email"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/zhangdan/app/activities/bankservice/l;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/zhangdan/app/data/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-nez p2, :cond_f

    invoke-direct {p0, v2}, Lcom/zhangdan/app/activities/bankservice/l;->a(Ljava/util/List;)V

    move-object p1, v1

    goto/16 :goto_1

    :cond_f
    sget-object v0, Lcom/zhangdan/app/data/d;->f:Lcom/zhangdan/app/data/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/d;->c()Ljava/lang/String;

    move-result-object v0

    :cond_10
    sget-object v4, Lcom/zhangdan/app/data/d;->f:Lcom/zhangdan/app/data/d;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private a()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->j:Ljava/util/Set;

    iput v8, p0, Lcom/zhangdan/app/activities/bankservice/l;->k:I

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->j:Ljava/util/Set;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->k:I

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/data/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/zhangdan/app/activities/bankservice/l;->j:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v8}, Lcom/zhangdan/app/data/model/b;->b(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/d;

    const-string v2, ""

    invoke-virtual {v1}, Lcom/zhangdan/app/data/d;->a()I

    move-result v5

    sget-object v6, Lcom/zhangdan/app/data/d;->a:Lcom/zhangdan/app/data/d;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/d;->a()I

    move-result v6

    if-ne v5, v6, :cond_6

    const-string v1, "idno"

    :goto_2
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/zhangdan/app/data/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v7}, Lcom/zhangdan/app/data/model/b;->b(I)V

    iput v7, p0, Lcom/zhangdan/app/activities/bankservice/l;->k:I

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/zhangdan/app/data/d;->a()I

    move-result v5

    sget-object v6, Lcom/zhangdan/app/data/d;->b:Lcom/zhangdan/app/data/d;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/d;->a()I

    move-result v6

    if-ne v5, v6, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "card_no"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/zhangdan/app/activities/bankservice/l;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Lcom/zhangdan/app/data/d;->a()I

    move-result v5

    sget-object v6, Lcom/zhangdan/app/data/d;->c:Lcom/zhangdan/app/data/d;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/d;->a()I

    move-result v6

    if-ne v5, v6, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "card_last_four"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/zhangdan/app/activities/bankservice/l;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Lcom/zhangdan/app/data/d;->a()I

    move-result v5

    sget-object v6, Lcom/zhangdan/app/data/d;->d:Lcom/zhangdan/app/data/d;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/d;->a()I

    move-result v6

    if-ne v5, v6, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkpass"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/zhangdan/app/activities/bankservice/l;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_9
    invoke-virtual {v1}, Lcom/zhangdan/app/data/d;->a()I

    move-result v1

    sget-object v5, Lcom/zhangdan/app/data/d;->f:Lcom/zhangdan/app/data/d;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/d;->a()I

    move-result v5

    if-ne v1, v5, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "email"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/zhangdan/app/activities/bankservice/l;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_a
    move-object v1, v2

    goto/16 :goto_2
.end method

.method private a(Ljava/util/List;)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "service_type"

    iget v2, p0, Lcom/zhangdan/app/activities/bankservice/l;->a:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "bank_id"

    iget v2, p0, Lcom/zhangdan/app/activities/bankservice/l;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    const-string v2, "key_setting_info"

    invoke-virtual {v0, v2, p1}, Lcom/zhangdan/app/ZhangdanApplication;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/activities/bankservice/l;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f040003

    const v2, 0x7f040005

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->k:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->e:Landroid/widget/RelativeLayout;

    const v1, 0x7f02011a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->f:Landroid/widget/ImageView;

    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/l;->g:Landroid/widget/TextView;

    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->a:I

    if-nez v0, :cond_2

    const v0, 0x7f080182

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f080183

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->e:Landroid/widget/RelativeLayout;

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->j:Ljava/util/Set;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->f:Landroid/widget/ImageView;

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/d;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/bankservice/l;->a()V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/bankservice/l;->b()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->i:Lcom/zhangdan/app/activities/bankservice/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->i:Lcom/zhangdan/app/activities/bankservice/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/bankservice/f;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->e:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "bank_service_upgrade"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->j:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/bankservice/l;->a(Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/d;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/l;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bank_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/bankservice/l;->b:I

    const-string v1, "service_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bankId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zhangdan/app/activities/bankservice/l;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/activities/bankservice/l;->a:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/zhangdan/app/activities/bankservice/l;->b:I

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/db/b/b;->c(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/data/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->c:Ljava/util/List;

    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/app/activities/bankservice/l;->a()V

    return-void

    :cond_1
    iget v1, p0, Lcom/zhangdan/app/activities/bankservice/l;->b:I

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/db/b/b;->d(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/data/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->c:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    move v1, v4

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/b;

    if-ne v1, v4, :cond_7

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/b;->d()I

    move-result v6

    if-eq v6, v4, :cond_3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/b;->d()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v3

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_7
    if-ne v1, v2, :cond_8

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/b;->d()I

    move-result v6

    if-eq v6, v2, :cond_3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/b;->d()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_8
    if-ne v1, v3, :cond_3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/b;->d()I

    move-result v6

    if-eq v6, v3, :cond_3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/b;->d()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v0, 0x7f03006f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f060185

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->d:Landroid/view/View;

    const v0, 0x7f060186

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->e:Landroid/widget/RelativeLayout;

    const v0, 0x7f060187

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->f:Landroid/widget/ImageView;

    const v0, 0x7f060188

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v2, Lcom/zhangdan/app/activities/bankservice/f;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/app/activities/bankservice/l;->c:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/zhangdan/app/activities/bankservice/f;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/zhangdan/app/activities/bankservice/l;->i:Lcom/zhangdan/app/activities/bankservice/f;

    iget-object v2, p0, Lcom/zhangdan/app/activities/bankservice/l;->i:Lcom/zhangdan/app/activities/bankservice/f;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x1020004

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/bankservice/l;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->i:Lcom/zhangdan/app/activities/bankservice/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/bankservice/f;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/bankservice/l;->b()V

    return-object v1

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public final onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "bank_service_click"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget v0, p0, Lcom/zhangdan/app/activities/bankservice/l;->a:I

    if-nez v0, :cond_1

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/bankservice/l;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zhangdan/app/h/d;->f(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/b;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/zhangdan/app/activities/bankservice/l;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zhangdan/app/data/d;->e:Lcom/zhangdan/app/data/d;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/zhangdan/app/activities/bankservice/m;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v1, v0}, Lcom/zhangdan/app/activities/bankservice/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/bankservice/m;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/zhangdan/app/h/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
