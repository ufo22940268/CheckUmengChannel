.class Lcom/igexin/sdk/o;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/igexin/sdk/o;->a:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->a()V

    sget-object v0, Lsdk/b/a/a/c/d;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lsdk/b/a/a/c/d;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lsdk/b/a/a/c/d;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/igexin/sdk/p;

    invoke-direct {v0}, Lcom/igexin/sdk/p;-><init>()V

    sput-object v0, Lcom/igexin/sdk/SdkMainService;->x:Landroid/os/Handler;

    invoke-static {v2}, Lcom/igexin/sdk/SdkMainService;->a(B)B

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/sdk/o;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/igexin/sdk/SdkMainService;->a(Landroid/content/Intent;Z)V

    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
