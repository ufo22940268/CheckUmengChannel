.class Lcom/zhangdan/app/activities/WrappedActivity$LogoffBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WrappedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/WrappedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogoffBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/WrappedActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/WrappedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/zhangdan/app/activities/WrappedActivity$LogoffBroadcastReceiver;->this$0:Lcom/zhangdan/app/activities/WrappedActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/zhangdan/app/activities/WrappedActivity$LogoffBroadcastReceiver;->this$0:Lcom/zhangdan/app/activities/WrappedActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/WrappedActivity;->finish()V

    .line 159
    return-void
.end method
