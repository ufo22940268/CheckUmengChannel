.class final Lcom/umeng/b/g;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-static {}, Lcom/umeng/b/b;->d()Lcom/umeng/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/umeng/b/b;->d()Lcom/umeng/b/d;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/umeng/b/e;

    invoke-interface {v1, v2, v0}, Lcom/umeng/b/d;->a(ILcom/umeng/b/e;)V

    :cond_0
    return-void
.end method
