.class public final Lcom/zhangdan/app/activities/mailimport/a/e;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/a/e;->a:Landroid/app/Activity;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/e;->b:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/a/e;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/mailimport/a/e;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/e;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/mailimport/a/e;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/e;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/a/e;->c:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/a/e;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/e;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/e;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/e;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/zhangdan/app/activities/mailimport/a/g;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/mailimport/a/g;-><init>(Lcom/zhangdan/app/activities/mailimport/a/e;)V

    const v0, 0x7f06027b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/zhangdan/app/activities/mailimport/a/g;->a:Landroid/view/View;

    const v0, 0x7f06027c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/mailimport/a/g;->b:Landroid/widget/TextView;

    const v0, 0x7f06027d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/mailimport/a/g;->c:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/zhangdan/app/activities/mailimport/a/g;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/zhangdan/app/activities/mailimport/a/g;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/mailimport/a/g;

    iget-object v1, v0, Lcom/zhangdan/app/activities/mailimport/a/g;->a:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/mailimport/a/e;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/g;

    iget-object v2, v0, Lcom/zhangdan/app/activities/mailimport/a/g;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/g;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/zhangdan/app/activities/mailimport/a/g;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p2

    :cond_1
    iget-object v0, v0, Lcom/zhangdan/app/activities/mailimport/a/g;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/a/e;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800de

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/e;->a:Landroid/app/Activity;

    const-string v1, "yuan_import_mail_list_item_click"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/a/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/g;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/a/e;->a:Landroid/app/Activity;

    const-class v3, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "email_name"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/e;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/a/e;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/a/e;->a:Landroid/app/Activity;

    const v5, 0x7f080129

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lcom/zhangdan/app/activities/mailimport/a/f;

    invoke-direct {v3, p0, v0}, Lcom/zhangdan/app/activities/mailimport/a/f;-><init>(Lcom/zhangdan/app/activities/mailimport/a/e;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return v6
.end method
