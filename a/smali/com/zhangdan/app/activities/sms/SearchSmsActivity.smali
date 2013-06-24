.class public Lcom/zhangdan/app/activities/sms/SearchSmsActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "SearchSmsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;
    }
.end annotation


# static fields
.field public static final SMS_NUM:Ljava/lang/String; = "sum_num"

.field public static final SMS_PHONE_NUMBER:Ljava/lang/String; = "sms_phone_number"


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mEnd:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mImageViewComplete:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSearchSmsAdapter:Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;

.field private mSmsNum:I

.field private mSmsSum:I

.field private mTextViewNum:Landroid/widget/TextView;

.field private mTextViewSum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 41
    iput v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mSmsNum:I

    .line 42
    iput v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mSmsSum:I

    .line 47
    const-string v0, "\u5bfc\u5165\u5b8c\u6210\uff013\u79d2\u540e\u8df3\u8f6c\u5bfc\u5165\u8d26\u5355\u90ae\u4ef6"

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mEnd:Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$1;-><init>(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mHandler:Landroid/os/Handler;

    .line 138
    new-instance v0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;-><init>(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mSmsNum:I

    return v0
.end method

.method static synthetic access$002(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mSmsNum:I

    return p1
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mSearchSmsAdapter:Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->getSpeical(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mTextViewSum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mTextViewNum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mImageViewComplete:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mEnd:Ljava/lang/String;

    return-object v0
.end method

.method private getSpeical(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 6
    .parameter "str"
    .parameter "index"

    .prologue
    const/16 v5, 0x21

    .line 82
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 83
    .local v0, daysSpan:Landroid/text/SpannableString;
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, tag:I
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x4000

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 85
    const-string v2, "0"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 87
    :cond_0
    return-object v0
.end method

.method private initialView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 68
    const v0, 0x7f090114

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mTextViewSum:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f090115

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mTextViewNum:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f090117

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mListView:Landroid/widget/ListView;

    .line 71
    new-instance v0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;

    invoke-direct {v0, p0, p0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;-><init>(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mSearchSmsAdapter:Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;

    .line 72
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mSearchSmsAdapter:Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 74
    const v0, 0x7f0900c0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mImageViewComplete:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mImageViewComplete:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    const v0, 0x7f0900c1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 77
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mTextViewSum:Landroid/widget/TextView;

    const-string v1, "\u53d1\u73b00\u5f20\u4fe1\u7528\u5361"

    const-string v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->getSpeical(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method private startSmsService()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zhangdan/app/service/SmsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "is_scan_all"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v1, 0x7f030041

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->initialView()V

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .local v0, fliter:Landroid/content/IntentFilter;
    const-string v1, "scan_finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "scan_process"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "scan_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->startSmsService()V

    .line 60
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 109
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 116
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zhangdan/app/activities/WrappedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onPause()V

    .line 104
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onResume()V

    .line 99
    return-void
.end method
