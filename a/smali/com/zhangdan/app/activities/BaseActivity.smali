.class public Lcom/zhangdan/app/activities/BaseActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/zhangdan/preferential/widget/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/zhangdan/app/data/model/l;
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->c()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/zhangdan/app/data/model/l;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0, p1}, Lcom/zhangdan/app/ZhangdanApplication;->a(Lcom/zhangdan/app/data/model/l;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/zhangdan/app/c/a;
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->b()Lcom/zhangdan/app/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseActivity;->a:Lcom/zhangdan/preferential/widget/e;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/e;->show()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseActivity;->a:Lcom/zhangdan/preferential/widget/e;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/e;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/zhangdan/preferential/widget/e;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/widget/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/BaseActivity;->a:Lcom/zhangdan/preferential/widget/e;

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/umeng/a/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseActivity;->a:Lcom/zhangdan/preferential/widget/e;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/e;->dismiss()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/umeng/a/a;->b(Landroid/content/Context;)V

    return-void
.end method
