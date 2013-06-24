.class Lcom/zhangdan/app/activities/sms/AllSmsAdapter$3;
.super Ljava/lang/Object;
.source "AllSmsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/sms/AllSmsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$3;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 277
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 278
    .local v1, pos:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$3;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->mBillDatas:Ljava/util/List;
    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$200(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/BillData;

    .line 279
    .local v0, data:Lcom/zhangdan/app/sms/BillData;
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$3;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->editListener:Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;
    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$300(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$3;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->editListener:Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;
    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$300(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;->gotoedit(Lcom/zhangdan/app/sms/BillData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v0           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v1           #pos:Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v2

    goto :goto_0
.end method
