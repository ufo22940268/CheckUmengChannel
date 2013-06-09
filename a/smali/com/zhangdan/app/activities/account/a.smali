.class final Lcom/zhangdan/app/activities/account/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/account/LoadingActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/account/LoadingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/account/a;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/a;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->a(Lcom/zhangdan/app/activities/account/LoadingActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->a(Lcom/zhangdan/app/activities/account/LoadingActivity;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/a;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->a(Lcom/zhangdan/app/activities/account/LoadingActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/a;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->b(Lcom/zhangdan/app/activities/account/LoadingActivity;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/a;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/a;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->b(Lcom/zhangdan/app/activities/account/LoadingActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->a(Lcom/zhangdan/app/activities/account/LoadingActivity;I)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/a;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/a;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->a(Lcom/zhangdan/app/activities/account/LoadingActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->b(Lcom/zhangdan/app/activities/account/LoadingActivity;I)V

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v2, v0, v1}, Lcom/zhangdan/app/activities/account/a;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/a;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->finish()V

    goto :goto_0
.end method
