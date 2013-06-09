.class public Lcom/zhangdan/preferential/BaseActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/zhangdan/preferential/widget/e;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/BaseActivity;->a:Lcom/zhangdan/preferential/widget/e;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/e;->show()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/BaseActivity;->a:Lcom/zhangdan/preferential/widget/e;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/e;->dismiss()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/z;->c(Landroid/app/Activity;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/zhangdan/preferential/widget/e;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/widget/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/BaseActivity;->a:Lcom/zhangdan/preferential/widget/e;

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/zhangdan/preferential/BaseActivity;->a:Lcom/zhangdan/preferential/widget/e;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/e;->dismiss()V

    invoke-static {p0}, Lcom/umeng/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0801d5

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iput-boolean v1, p0, Lcom/zhangdan/preferential/BaseActivity;->b:Z

    invoke-static {p0}, Lcom/umeng/a/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/BaseActivity;->b:Z

    return-void
.end method
