.class public Lcom/zhangdan/app/activities/sms/SearchSmsActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;


# instance fields
.field c:Landroid/os/Handler;

.field d:Landroid/content/BroadcastReceiver;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ProgressBar;

.field private j:I

.field private k:I

.field private l:Lcom/zhangdan/app/activities/sms/n;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    iput v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->j:I

    iput v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->k:I

    const-string v0, "\u5bfc\u5165\u5b8c\u6210\uff013\u79d2\u540e\u8df3\u8f6c\u5bfc\u5165\u8d26\u5355\u90ae\u4ef6"

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->m:Ljava/lang/String;

    new-instance v0, Lcom/zhangdan/app/activities/sms/l;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/sms/l;-><init>(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->c:Landroid/os/Handler;

    new-instance v0, Lcom/zhangdan/app/activities/sms/m;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/sms/m;-><init>(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->j:I

    return v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 6

    const/16 v5, 0x21

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x4000

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const-string v2, "0"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->j:I

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Lcom/zhangdan/app/activities/sms/n;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->l:Lcom/zhangdan/app/activities/sms/n;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->i:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic f(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->setContentView(I)V

    const v0, 0x7f06010c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f06010d

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f06010f

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->g:Landroid/widget/ListView;

    new-instance v0, Lcom/zhangdan/app/activities/sms/n;

    invoke-direct {v0, p0, p0}, Lcom/zhangdan/app/activities/sms/n;-><init>(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->l:Lcom/zhangdan/app/activities/sms/n;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->l:Lcom/zhangdan/app/activities/sms/n;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    const v0, 0x7f0600bc

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0600bd

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->i:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->e:Landroid/widget/TextView;

    const-string v1, "\u53d1\u73b00\u5f20\u4fe1\u7528\u5361"

    const-string v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "scan_finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "scan_process"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "scan_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zhangdan/app/service/SmsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "is_scan_all"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zhangdan/app/activities/WrappedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
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
