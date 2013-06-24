.class public Lcom/zhangdan/app/activities/handinput/HandInputBillActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "HandInputBillActivity.java"


# instance fields
.field private mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/handinput/HandInputBillActivity;->setContentView(I)V

    .line 22
    new-instance v0, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    const v1, 0x7f09003c

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/handinput/HandInputBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/handinput/HandInputBillActivity;->mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    .line 23
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 28
    iget-object v0, p0, Lcom/zhangdan/app/activities/handinput/HandInputBillActivity;->mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/zhangdan/app/activities/handinput/HandInputBillActivity;->mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->onDestroy()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/handinput/HandInputBillActivity;->mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    .line 32
    :cond_0
    return-void
.end method
