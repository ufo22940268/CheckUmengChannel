.class Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;
.super Ljava/lang/Object;
.source "CardDetailBillAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmsViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

.field tvSmsAmount:Landroid/widget/TextView;

.field tvSmsTime:Landroid/widget/TextView;

.field tvSmsTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$SmsViewHolder;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
