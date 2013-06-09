.class public Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;->setContentView(I)V

    const v0, 0x7f0600b5

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/taptwo/android/widget/ViewFlow;

    new-instance v1, Lcom/zhangdan/app/activities/mailimport/d;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/mailimport/d;-><init>(Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;)V

    invoke-virtual {v0, v1}, Lorg/taptwo/android/widget/ViewFlow;->setAdapter(Landroid/widget/Adapter;)V

    return-void
.end method
