.class Lcom/zhangdan/app/activities/remark/TaobaoImportActivity$3;
.super Ljava/lang/Object;
.source "TaobaoImportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity$3;->this$0:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 126
    sget v1, Lcom/zhangdan/app/service/DownloadDataService;->DOWNLOAD_DATA_FLAG:I

    if-nez v1, :cond_0

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity$3;->this$0:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    const-class v2, Lcom/zhangdan/app/service/DownloadDataService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity$3;->this$0:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 131
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity$3;->this$0:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->dismissDialog(I)V

    .line 132
    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity$3;->this$0:Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;->finish()V

    .line 133
    return-void
.end method
