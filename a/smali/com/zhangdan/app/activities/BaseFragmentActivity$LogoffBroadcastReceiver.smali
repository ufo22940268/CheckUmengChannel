.class Lcom/zhangdan/app/activities/BaseFragmentActivity$LogoffBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/BaseFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogoffBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/BaseFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity$LogoffBroadcastReceiver;->this$0:Lcom/zhangdan/app/activities/BaseFragmentActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity$LogoffBroadcastReceiver;->this$0:Lcom/zhangdan/app/activities/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->finish()V

    .line 184
    return-void
.end method
