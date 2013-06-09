.class final Lcom/zhangdan/preferential/a/m;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/a/l;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/a/m;->a:Lcom/zhangdan/preferential/a/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/a/m;->a:Lcom/zhangdan/preferential/a/l;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/l;->a(Lcom/zhangdan/preferential/a/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/a/n;

    invoke-interface {v0, p2}, Lcom/zhangdan/preferential/a/n;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
