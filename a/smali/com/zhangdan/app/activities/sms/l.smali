.class final Lcom/zhangdan/app/activities/sms/l;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/l;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/l;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    const-class v2, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/l;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/l;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->finish()V

    :cond_0
    return-void
.end method
