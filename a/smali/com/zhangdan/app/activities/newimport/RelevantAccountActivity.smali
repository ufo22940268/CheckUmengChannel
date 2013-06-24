.class public Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;
.source "RelevantAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;,
        Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;
    }
.end annotation


# static fields
.field public static final KEY_MAIL_ACCOUNT:Ljava/lang/String; = "mail_account"

.field public static final KEY_MAIL_PWD:Ljava/lang/String; = "maiL_pwd"

.field public static final KEY_USERINFO_LIST:Ljava/lang/String; = "user_info_list"


# instance fields
.field private mAdapter:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

.field private mImageManager:Lcom/novoda/imageloader/core/ImageManager;

.field private mImageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

.field private mListView:Landroid/widget/ListView;

.field private mMailAccount:Ljava/lang/String;

.field private mMailPwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    .line 278
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Lcom/novoda/imageloader/core/model/ImageTagFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mImageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Lcom/novoda/imageloader/core/ImageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mImageManager:Lcom/novoda/imageloader/core/ImageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mMailAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mMailPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mAdapter:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    return-object v0
.end method

.method private initViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 77
    const v5, 0x7f0900f0

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mListView:Landroid/widget/ListView;

    .line 79
    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->getImageLoader()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mImageManager:Lcom/novoda/imageloader/core/ImageManager;

    .line 80
    const v5, 0x7f020093

    invoke-static {p0, v5}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(Landroid/content/Context;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v5

    iput-object v5, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mImageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 82
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 83
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    const-string v5, "user_info_list"

    invoke-virtual {v0, v5}, Lcom/zhangdan/app/ZhangdanApplication;->getCacheObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 84
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserInfo;>;"
    const-string v5, "user_info_list"

    invoke-virtual {v0, v5}, Lcom/zhangdan/app/ZhangdanApplication;->removeCacheObject(Ljava/lang/String;)V

    .line 86
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 87
    .local v4, textView:Landroid/widget/TextView;
    const v5, 0x7f070131

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 88
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->density:F

    .line 89
    .local v1, density:F
    const/high16 v5, 0x4120

    mul-float/2addr v5, v1

    float-to-int v3, v5

    .line 90
    .local v3, pad:I
    invoke-virtual {v4, v6, v3, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 91
    const/high16 v5, 0x4140

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 92
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 94
    iget-object v5, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 96
    new-instance v5, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    invoke-direct {v5, p0, v2}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;-><init>(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;Ljava/util/List;)V

    iput-object v5, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mAdapter:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    .line 97
    iget-object v5, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mAdapter:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mail_account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mMailAccount:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maiL_pwd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mMailPwd:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->initViews()V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onDestroy()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mImageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 74
    return-void
.end method
