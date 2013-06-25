.class Lcom/zhangdan/app/activities/sms/SearchSmsActivity$1;
.super Landroid/os/Handler;
.source "SearchSmsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/sms/SearchSmsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    .line 129
    .local v0, id:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 130
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    const-class v3, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-virtual {v2, v1}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->startActivity(Landroid/content/Intent;)V

    .line 132
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->finish()V

    .line 134
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
