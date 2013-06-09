.class final Lcom/zhangdan/app/activities/detail/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/detail/a/h;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/a/i;->a:Lcom/zhangdan/app/activities/detail/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060252

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/i;->a:Lcom/zhangdan/app/activities/detail/a/h;

    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/a/h;->a(Lcom/zhangdan/app/activities/detail/a/h;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/zhangdan/app/service/SmsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "is_scan_all"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/i;->a:Lcom/zhangdan/app/activities/detail/a/h;

    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/a/h;->a(Lcom/zhangdan/app/activities/detail/a/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method
