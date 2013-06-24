.class Lcom/igexin/slavesdk/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/igexin/slavesdk/MessageManager;


# direct methods
.method constructor <init>(Lcom/igexin/slavesdk/MessageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/slavesdk/a;->a:Lcom/igexin/slavesdk/MessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/igexin/slavesdk/a;->a:Lcom/igexin/slavesdk/MessageManager;

    invoke-static {p2}, Lcom/igexin/sdk/aidl/e;->a(Landroid/os/IBinder;)Lcom/igexin/sdk/aidl/IGexinMainService;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/igexin/slavesdk/a;->a:Lcom/igexin/slavesdk/MessageManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    return-void
.end method
