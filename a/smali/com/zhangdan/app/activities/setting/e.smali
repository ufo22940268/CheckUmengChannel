.class final Lcom/zhangdan/app/activities/setting/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/setting/LockActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/setting/LockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/e;->a:Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/e;->a:Lcom/zhangdan/app/activities/setting/LockActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/setting/LockActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/e;->a:Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->b(Lcom/zhangdan/app/activities/setting/LockActivity;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/e;->a:Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->b(Lcom/zhangdan/app/activities/setting/LockActivity;)I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/e;->a:Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->c(Lcom/zhangdan/app/activities/setting/LockActivity;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/zhangdan/app/activities/setting/h;

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/e;->a:Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/setting/h;-><init>(Landroid/app/Activity;)V

    new-array v1, v3, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/setting/h;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/e;->a:Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->b(Lcom/zhangdan/app/activities/setting/LockActivity;)I

    move-result v0

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/e;->a:Lcom/zhangdan/app/activities/setting/LockActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/e;->a:Lcom/zhangdan/app/activities/setting/LockActivity;

    const v2, 0x7f08015c

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/setting/LockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/e;->a:Lcom/zhangdan/app/activities/setting/LockActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/a/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/e;->a:Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->d(Lcom/zhangdan/app/activities/setting/LockActivity;)Lcom/zhangdan/app/widget/LockView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/widget/LockView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/e;->a:Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->e(Lcom/zhangdan/app/activities/setting/LockActivity;)Lcom/zhangdan/app/activities/setting/g;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Lcom/zhangdan/app/activities/setting/g;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method
