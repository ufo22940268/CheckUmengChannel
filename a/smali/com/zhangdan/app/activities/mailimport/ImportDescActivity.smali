.class public Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "ImportDescActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/mailimport/ImportDescActivity$CutScenesAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v2, 0x7f030031

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;->setContentView(I)V

    .line 26
    const v2, 0x7f0900b9

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/taptwo/android/widget/ViewFlow;

    .line 27
    .local v1, viewFlow:Lorg/taptwo/android/widget/ViewFlow;
    new-instance v0, Lcom/zhangdan/app/activities/mailimport/ImportDescActivity$CutScenesAdapter;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/mailimport/ImportDescActivity$CutScenesAdapter;-><init>(Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;)V

    .line 28
    .local v0, adapter:Lcom/zhangdan/app/activities/mailimport/ImportDescActivity$CutScenesAdapter;
    invoke-virtual {v1, v0}, Lorg/taptwo/android/widget/ViewFlow;->setAdapter(Landroid/widget/Adapter;)V

    .line 29
    return-void
.end method
