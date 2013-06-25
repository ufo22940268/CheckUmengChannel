.class Lcom/zhangdan/app/activities/account/LoadingActivity$1;
.super Landroid/os/Handler;
.source "LoadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/account/LoadingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/account/LoadingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$1;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_2

    .line 97
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$1;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->access$012(Lcom/zhangdan/app/activities/account/LoadingActivity;I)I

    .line 98
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$1;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    #getter for: Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrProgress:I
    invoke-static {v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->access$000(Lcom/zhangdan/app/activities/account/LoadingActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$1;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    #getter for: Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrMaxProgress:I
    invoke-static {v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->access$100(Lcom/zhangdan/app/activities/account/LoadingActivity;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$1;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$1;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    #getter for: Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrMaxProgress:I
    invoke-static {v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->access$100(Lcom/zhangdan/app/activities/account/LoadingActivity;)I

    move-result v1

    #setter for: Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrProgress:I
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->access$002(Lcom/zhangdan/app/activities/account/LoadingActivity;I)I

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$1;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$1;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    #getter for: Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrProgress:I
    invoke-static {v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->access$000(Lcom/zhangdan/app/activities/account/LoadingActivity;)I

    move-result v1

    #calls: Lcom/zhangdan/app/activities/account/LoadingActivity;->setLoadingProgress(I)V
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->access$200(Lcom/zhangdan/app/activities/account/LoadingActivity;I)V

    .line 101
    const-wide/16 v0, 0x32

    invoke-virtual {p0, v2, v0, v1}, Lcom/zhangdan/app/activities/account/LoadingActivity$1;->sendEmptyMessageDelayed(IJ)Z

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$1;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->finish()V

    goto :goto_0
.end method
