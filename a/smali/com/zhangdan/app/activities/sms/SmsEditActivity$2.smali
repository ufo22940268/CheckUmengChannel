.class Lcom/zhangdan/app/activities/sms/SmsEditActivity$2;
.super Ljava/lang/Object;
.source "SmsEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/sms/SmsEditActivity;->showMonth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/sms/SmsEditActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SmsEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SmsEditActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SmsEditActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->access$000(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SmsEditActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SmsEditActivity;->mBillData:Lcom/zhangdan/app/sms/BillData;
    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->access$100(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)Lcom/zhangdan/app/sms/BillData;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/sms/BillData;->setRepaymentMonth(I)V

    .line 293
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SmsEditActivity;

    #calls: Lcom/zhangdan/app/activities/sms/SmsEditActivity;->initialEditView()V
    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->access$200(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)V

    .line 294
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SmsEditActivity;

    #calls: Lcom/zhangdan/app/activities/sms/SmsEditActivity;->initialItem()V
    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsEditActivity;->access$300(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)V

    .line 295
    return-void

    .line 290
    :catch_0
    move-exception v0

    goto :goto_0
.end method
