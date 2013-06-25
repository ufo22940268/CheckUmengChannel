.class Lcom/igexin/sdk/coordinator/g;
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
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v4, 0x2

    invoke-static {}, Lcom/igexin/sdk/coordinator/b;->a()Lcom/igexin/sdk/coordinator/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/coordinator/b;->a(Ljava/lang/String;)Lcom/igexin/sdk/coordinator/a;

    move-result-object v0

    invoke-static {p2}, Lcom/igexin/sdk/aidl/c;->a(Landroid/os/IBinder;)Lcom/igexin/sdk/aidl/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/coordinator/a;->a(Lcom/igexin/sdk/aidl/b;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pkgname"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/igexin/sdk/coordinator/g;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/igexin/sdk/coordinator/SdkMsgService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lsdk/b/a/a/c/a;->a()Lsdk/b/a/a/c/a;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lsdk/b/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/igexin/sdk/coordinator/g;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    invoke-static {v1}, Lcom/igexin/sdk/coordinator/SdkMsgService;->b(Lcom/igexin/sdk/coordinator/SdkMsgService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/igexin/sdk/coordinator/g;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    invoke-static {v1}, Lcom/igexin/sdk/coordinator/SdkMsgService;->b(Lcom/igexin/sdk/coordinator/SdkMsgService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/igexin/sdk/coordinator/g;->a:Lcom/igexin/sdk/coordinator/SdkMsgService;

    invoke-static {v1}, Lcom/igexin/sdk/coordinator/SdkMsgService;->b(Lcom/igexin/sdk/coordinator/SdkMsgService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Lcom/igexin/sdk/coordinator/b;->a()Lcom/igexin/sdk/coordinator/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/coordinator/b;->a(Ljava/lang/String;)Lcom/igexin/sdk/coordinator/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/coordinator/a;->a(Lcom/igexin/sdk/aidl/b;)V

    return-void
.end method
