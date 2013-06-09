.class final Lcom/zhangdan/app/activities/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/BaseSlidingActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/BaseSlidingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/c;->a:Lcom/zhangdan/app/activities/BaseSlidingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/c;->a:Lcom/zhangdan/app/activities/BaseSlidingActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->finish()V

    return-void
.end method
