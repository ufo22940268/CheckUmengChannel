.class final Lcom/zhangdan/app/activities/remark/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/n;->a:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/zhangdan/app/service/DownloadDataService;->a:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/n;->a:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    const-class v2, Lcom/zhangdan/app/service/DownloadDataService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/n;->a:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/n;->a:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/n;->a:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->finish()V

    return-void
.end method
