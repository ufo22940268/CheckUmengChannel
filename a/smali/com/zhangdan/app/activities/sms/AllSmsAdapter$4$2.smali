.class Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$2;
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

.field final synthetic val$dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;Lcom/zhangdan/app/widget/CustomAlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$2;->this$1:Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;

    iput-object p2, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$2;->val$dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$2;->val$dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/CustomAlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    goto :goto_0
.end method
