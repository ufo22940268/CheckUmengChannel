.class public Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/zhangdan/app/activities/newimport/j;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/a/a/a/f/b;

.field private f:Lcom/a/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Lcom/a/a/a/f/b;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->e:Lcom/a/a/a/f/b;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Lcom/a/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->f:Lcom/a/a/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Lcom/zhangdan/app/activities/newimport/j;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->b:Lcom/zhangdan/app/activities/newimport/j;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mail_account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maiL_pwd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->d:Ljava/lang/String;

    const v0, 0x7f0600e8

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->a:Landroid/widget/ListView;

    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->f()Lcom/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->f:Lcom/a/a/a/a;

    const v0, 0x7f020091

    invoke-static {p0, v0}, Lcom/a/a/a/f/b;->a(Landroid/content/Context;I)Lcom/a/a/a/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->e:Lcom/a/a/a/f/b;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    const-string v1, "user_info_list"

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/ZhangdanApplication;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, "user_info_list"

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/ZhangdanApplication;->c(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08012b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4120

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v4, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v2, 0x4140

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    new-instance v0, Lcom/zhangdan/app/activities/newimport/j;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/app/activities/newimport/j;-><init>(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->b:Lcom/zhangdan/app/activities/newimport/j;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->b:Lcom/zhangdan/app/activities/newimport/j;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->e:Lcom/a/a/a/f/b;

    return-void
.end method
