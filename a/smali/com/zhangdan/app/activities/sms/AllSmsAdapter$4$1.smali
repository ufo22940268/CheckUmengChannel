.class Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$1;
.super Ljava/lang/Object;
.source "AllSmsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;

.field final synthetic val$data:Lcom/zhangdan/app/sms/BillData;

.field final synthetic val$dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;Lcom/zhangdan/app/widget/CustomAlertDialog;Lcom/zhangdan/app/sms/BillData;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$1;->this$1:Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;

    iput-object p2, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$1;->val$dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;

    iput-object p3, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$1;->val$data:Lcom/zhangdan/app/sms/BillData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$1;->val$dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/CustomAlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$1;->this$1:Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$400(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$1;->val$data:Lcom/zhangdan/app/sms/BillData;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/BillData;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->deleteBillData(Landroid/content/Context;J)V

    .line 305
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$1;->this$1:Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->mBillDatas:Ljava/util/List;
    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$200(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$1;->val$data:Lcom/zhangdan/app/sms/BillData;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$1;->this$1:Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    #calls: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->update()V
    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$500(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)V

    .line 307
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$1;->this$1:Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    const/4 v1, -0x1

    #setter for: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->tag:I
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$002(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;I)I

    .line 308
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$1;->this$1:Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$400(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u5220\u9664"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    return-void

    .line 302
    :catch_0
    move-exception v0

    goto :goto_0
.end method
