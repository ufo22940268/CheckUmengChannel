.class final Lcom/igexin/sdk/coordinator/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/igexin/sdk/coordinator/SdkMsgService;


# direct methods
.method constructor <init>(Lcom/igexin/sdk/coordinator/SdkMsgService;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/coordinator/g;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/igexin/sdk/coordinator/b;->a()Lcom/igexin/sdk/coordinator/b;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/igexin/sdk/coordinator/b;->a(Ljava/lang/String;)Lcom/igexin/sdk/coordinator/a;

    move-result-object v2

    invoke-static {p2}, Lcom/igexin/sdk/aidl/e;->a(Landroid/os/IBinder;)Lcom/igexin/sdk/aidl/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/igexin/sdk/coordinator/a;->a(Lcom/igexin/sdk/aidl/d;)V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "pkgname"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/igexin/sdk/coordinator/g;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/igexin/sdk/coordinator/SdkMsgService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lsdk/b/a/a/c/a;->a()Lsdk/b/a/a/c/a;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsdk/b/a/a/c/a;->a(Ljava/lang/String;)Lcom/igexin/sdk/coordinator/c;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/igexin/sdk/coordinator/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_1

    iput v1, v2, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/igexin/sdk/coordinator/g;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    invoke-static {v0}, Lcom/igexin/sdk/coordinator/SdkMsgService;->b(Lcom/igexin/sdk/coordinator/SdkMsgService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_1
    iput v6, v2, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/igexin/sdk/coordinator/g;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    invoke-static {v0}, Lcom/igexin/sdk/coordinator/SdkMsgService;->b(Lcom/igexin/sdk/coordinator/SdkMsgService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iput v6, v2, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/igexin/sdk/coordinator/g;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    invoke-static {v0}, Lcom/igexin/sdk/coordinator/SdkMsgService;->b(Lcom/igexin/sdk/coordinator/SdkMsgService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Lcom/igexin/sdk/coordinator/b;->a()Lcom/igexin/sdk/coordinator/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/coordinator/b;->a(Ljava/lang/String;)Lcom/igexin/sdk/coordinator/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/coordinator/a;->a(Lcom/igexin/sdk/aidl/d;)V

    return-void
.end method
