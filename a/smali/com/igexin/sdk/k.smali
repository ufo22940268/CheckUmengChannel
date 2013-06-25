.class Lcom/igexin/sdk/k;
.super Lsdk/b/a/a/e/d/f;


# instance fields
.field final synthetic a:Lcom/igexin/sdk/SdkMainService;


# direct methods
.method constructor <init>(Lcom/igexin/sdk/SdkMainService;J)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/k;->a:Lcom/igexin/sdk/SdkMainService;

    invoke-direct {p0, p2, p3}, Lsdk/b/a/a/e/d/f;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/igexin/sdk/k;->a:Lcom/igexin/sdk/SdkMainService;

    invoke-static {v1}, Lcom/igexin/sdk/SdkMainService;->a(Lcom/igexin/sdk/SdkMainService;)Ljava/util/Queue;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/igexin/sdk/k;->a:Lcom/igexin/sdk/SdkMainService;

    invoke-static {v1}, Lcom/igexin/sdk/SdkMainService;->a(Lcom/igexin/sdk/SdkMainService;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Queue;->removeAll(Ljava/util/Collection;)Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "im.gexin.action.updateui"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "bundle"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/igexin/sdk/k;->a:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/SdkMainService;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/igexin/sdk/k;->a:Lcom/igexin/sdk/SdkMainService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/igexin/sdk/SdkMainService;->a(Lcom/igexin/sdk/SdkMainService;Z)Z

    iget-object v0, p0, Lcom/igexin/sdk/k;->a:Lcom/igexin/sdk/SdkMainService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/igexin/sdk/SdkMainService;->a(Lcom/igexin/sdk/SdkMainService;J)J

    return-void
.end method

.method public b()I
    .locals 1

    const/high16 v0, -0x8000

    return v0
.end method
