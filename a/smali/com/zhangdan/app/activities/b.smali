.class final Lcom/zhangdan/app/activities/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/BaseFragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/b;->a:Lcom/zhangdan/app/activities/BaseFragmentActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/b;->a:Lcom/zhangdan/app/activities/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->finish()V

    return-void
.end method
