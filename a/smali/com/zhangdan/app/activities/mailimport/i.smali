.class public final Lcom/zhangdan/app/activities/mailimport/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/app/receiver/g;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/zhangdan/app/activities/mailimport/a/e;

.field private e:Lcom/zhangdan/app/receiver/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/i;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/i;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/i;->b:Landroid/view/View;

    const v1, 0x7f0601f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/i;->c:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/i;->e:Lcom/zhangdan/app/receiver/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/i;->e:Lcom/zhangdan/app/receiver/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/receiver/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/i;->e:Lcom/zhangdan/app/receiver/a;

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/i;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06027f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/i;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    new-instance v0, Lcom/zhangdan/app/activities/mailimport/a/e;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/i;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/zhangdan/app/activities/mailimport/a/e;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/i;->d:Lcom/zhangdan/app/activities/mailimport/a/e;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/i;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/i;->d:Lcom/zhangdan/app/activities/mailimport/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/zhangdan/app/receiver/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/i;->a:Landroid/app/Activity;

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/app/receiver/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/i;->e:Lcom/zhangdan/app/receiver/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/i;->e:Lcom/zhangdan/app/receiver/a;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/g;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/i;->a:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/i;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->c()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/i;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zhangdan/app/data/db/b/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/i;->d:Lcom/zhangdan/app/activities/mailimport/a/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/i;->d:Lcom/zhangdan/app/activities/mailimport/a/e;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/mailimport/a/e;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06027f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/i;->a:Landroid/app/Activity;

    const-string v1, "yuan_import_add_new_mail"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/i;->a:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/i;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/i;->a:Landroid/app/Activity;

    const v1, 0x7f040003

    const v2, 0x7f040005

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
