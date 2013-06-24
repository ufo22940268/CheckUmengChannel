.class public Lcom/zhangdan/app/activities/mailimport/MailImportActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "MailImportActivity.java"


# static fields
.field public static final EXTRA_KEY_FIRST_LOGIN:Ljava/lang/String; = "first_login"


# instance fields
.field private mAutoImportManager:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

.field private mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

.field private mLayoutAutoImport:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method

.method private initAutoImportViews(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/MailAccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/MailAccountInfo;>;"
    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->mLayoutAutoImport:Landroid/view/View;

    .line 65
    new-instance v0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->mLayoutAutoImport:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->mAutoImportManager:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    .line 66
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->mAutoImportManager:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->init(Ljava/util/List;Ljava/lang/String;I)V

    .line 67
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    .line 51
    new-instance v2, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    const v3, 0x7f09003c

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    .line 53
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v1

    .line 54
    .local v1, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-nez v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zhangdan/app/data/db/util/MailAccountDbUtil;->loadAllMailAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 57
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/MailAccountInfo;>;"
    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->initAutoImportViews(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->initViews()V

    .line 35
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 40
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->onDestroy()V

    .line 42
    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->mAutoImportManager:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->mAutoImportManager:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->onDestroy()V

    .line 46
    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->mAutoImportManager:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    .line 48
    :cond_1
    return-void
.end method
