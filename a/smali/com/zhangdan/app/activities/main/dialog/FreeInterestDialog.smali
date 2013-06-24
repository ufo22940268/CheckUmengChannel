.class public Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;
.super Landroid/app/Dialog;
.source "FreeInterestDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;
    }
.end annotation


# instance fields
.field private mFormat:Ljava/text/DecimalFormat;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSizeSpan:Landroid/text/style/AbsoluteSizeSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    const v0, 0x7f08005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->mFormat:Ljava/text/DecimalFormat;

    .line 37
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->mSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    .line 41
    iput-object p2, p0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->mList:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->mList:Ljava/util/List;

    .line 44
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->setCanceledOnTouchOutside(Z)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;)Ljava/text/DecimalFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->mFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;)Landroid/text/style/AbsoluteSizeSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->mSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 55
    const v1, 0x7f09008e

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 56
    .local v0, listView:Landroid/widget/ListView;
    new-instance v1, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;-><init>(Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    const v1, 0x7f09008c

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030067

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->initView()V

    .line 52
    return-void
.end method
