.class public Lcom/zhangdan/app/activities/chart/CategoryFragment;
.super Landroid/support/v4/app/Fragment;
.source "CategoryFragment.java"


# static fields
.field public static mCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Category;",
            ">;"
        }
    .end annotation
.end field

.field public static mChartSumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mChartYearList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConsumeCategoryMgr:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

.field private mMonth:I

.field private mUserName:Ljava/lang/String;

.field private mYear:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/CategoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 36
    const-string v1, "user_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mUserName:Ljava/lang/String;

    .line 37
    const-string v1, "year"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mYear:I

    .line 38
    const-string v1, "month"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mMonth:I

    .line 40
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 45
    const v1, 0x7f030078

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    invoke-direct {v1, v0, p0}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;-><init>(Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mConsumeCategoryMgr:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    .line 47
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mConsumeCategoryMgr:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    sget-object v2, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mChartSumList:Ljava/util/List;

    sget-object v3, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mChartYearList:Ljava/util/List;

    sget-object v4, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mNameList:Ljava/util/ArrayList;

    sget-object v5, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mCategoryList:Ljava/util/List;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->init(Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 48
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mConsumeCategoryMgr:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mUserName:Ljava/lang/String;

    iget v3, p0, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mYear:I

    iget v4, p0, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mMonth:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->displayCustomCategoryData(Ljava/lang/String;II)V

    .line 49
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 55
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mConsumeCategoryMgr:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mConsumeCategoryMgr:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->destroy()V

    .line 57
    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mConsumeCategoryMgr:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    .line 59
    :cond_0
    sput-object v1, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mChartSumList:Ljava/util/List;

    .line 60
    sput-object v1, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mChartYearList:Ljava/util/List;

    .line 61
    sput-object v1, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mNameList:Ljava/util/ArrayList;

    .line 62
    sput-object v1, Lcom/zhangdan/app/activities/chart/CategoryFragment;->mCategoryList:Ljava/util/List;

    .line 63
    return-void
.end method
