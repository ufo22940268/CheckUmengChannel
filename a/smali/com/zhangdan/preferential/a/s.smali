.class final Lcom/zhangdan/preferential/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/weibo/sdk/android/net/g;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/a/q;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/a/q;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/a/s;->a:Lcom/zhangdan/preferential/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/weibo/sdk/android/l;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/a/s;->a:Lcom/zhangdan/preferential/a/q;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/q;->b(Lcom/zhangdan/preferential/a/q;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/a/s;->a:Lcom/zhangdan/preferential/a/q;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/q;->b(Lcom/zhangdan/preferential/a/q;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
