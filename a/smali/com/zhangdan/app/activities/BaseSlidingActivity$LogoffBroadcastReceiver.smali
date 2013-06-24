.class Lcom/zhangdan/app/activities/BaseSlidingActivity$LogoffBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseSlidingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/BaseSlidingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogoffBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/BaseSlidingActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/BaseSlidingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$LogoffBroadcastReceiver;->this$0:Lcom/zhangdan/app/activities/BaseSlidingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$LogoffBroadcastReceiver;->this$0:Lcom/zhangdan/app/activities/BaseSlidingActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->finish()V

    .line 129
    return-void
.end method
