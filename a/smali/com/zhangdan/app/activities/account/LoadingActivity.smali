.class public Lcom/zhangdan/app/activities/account/LoadingActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;


# instance fields
.field private a:Lcom/zhangdan/app/widget/AvatarView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/zhangdan/app/widget/LoadingProgressBar;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:I

.field private i:Lcom/zhangdan/app/receiver/a;

.field private j:Landroid/os/Handler;

.field private k:Lcom/zhangdan/app/receiver/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    iput v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->g:I

    iput v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->h:I

    new-instance v0, Lcom/zhangdan/app/activities/account/a;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/account/a;-><init>(Lcom/zhangdan/app/activities/account/LoadingActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->j:Landroid/os/Handler;

    new-instance v0, Lcom/zhangdan/app/activities/account/b;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/account/b;-><init>(Lcom/zhangdan/app/activities/account/LoadingActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->k:Lcom/zhangdan/app/receiver/f;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/account/LoadingActivity;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->g:I

    return v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/account/LoadingActivity;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->g:I

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/account/LoadingActivity;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/account/LoadingActivity;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->h:I

    return v0
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/account/LoadingActivity;I)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->c:Lcom/zhangdan/app/widget/LoadingProgressBar;

    invoke-virtual {v0, p1}, Lcom/zhangdan/app/widget/LoadingProgressBar;->a(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    div-int/lit8 v2, p1, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/account/LoadingActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/account/LoadingActivity;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->h:I

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->setContentView(I)V

    const v0, 0x7f0600c3

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/widget/AvatarView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->a:Lcom/zhangdan/app/widget/AvatarView;

    const v0, 0x7f0600c5

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f0600c6

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/widget/LoadingProgressBar;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->c:Lcom/zhangdan/app/widget/LoadingProgressBar;

    const v0, 0x7f0600c8

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0600c7

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0600c4

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const v0, 0x7f080134

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sina"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f080173

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/zhangdan/app/receiver/a;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/app/receiver/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->i:Lcom/zhangdan/app/receiver/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->i:Lcom/zhangdan/app/receiver/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->k:Lcom/zhangdan/app/receiver/f;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/f;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->a:Lcom/zhangdan/app/widget/AvatarView;

    invoke-static {p0, v0}, Lcom/zhangdan/app/e/c;->a(Landroid/content/Context;Lcom/zhangdan/app/widget/AvatarView;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/service/DownloadDataService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    const-string v1, "qq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f080174

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v0, 0x7f080175

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->i:Lcom/zhangdan/app/receiver/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->i:Lcom/zhangdan/app/receiver/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/receiver/a;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity;->i:Lcom/zhangdan/app/receiver/a;

    return-void
.end method
