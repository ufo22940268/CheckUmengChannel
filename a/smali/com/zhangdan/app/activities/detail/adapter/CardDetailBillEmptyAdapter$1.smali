.class Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$1;
.super Ljava/lang/Object;
.source "CardDetailBillEmptyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$1;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f09025d

    if-ne v1, v2, :cond_0

    .line 142
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$1;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->access$000(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/zhangdan/app/service/SmsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "is_scan_all"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$1;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->access$000(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 146
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
