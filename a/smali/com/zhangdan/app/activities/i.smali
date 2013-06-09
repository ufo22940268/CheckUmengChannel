.class final Lcom/zhangdan/app/activities/i;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/WrappedActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/WrappedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/i;->a:Lcom/zhangdan/app/activities/WrappedActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/i;->a:Lcom/zhangdan/app/activities/WrappedActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/WrappedActivity;->finish()V

    return-void
.end method
