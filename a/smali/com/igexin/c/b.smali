.class final Lcom/igexin/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/igexin/c/a;


# direct methods
.method constructor <init>(Lcom/igexin/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/c/b;->a:Lcom/igexin/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/igexin/c/b;->a:Lcom/igexin/c/a;

    invoke-static {p2}, Lcom/igexin/sdk/aidl/g;->a(Landroid/os/IBinder;)Lcom/igexin/sdk/aidl/a;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/c/a;->a:Lcom/igexin/sdk/aidl/a;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/igexin/c/b;->a:Lcom/igexin/c/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/igexin/c/a;->a:Lcom/igexin/sdk/aidl/a;

    return-void
.end method
