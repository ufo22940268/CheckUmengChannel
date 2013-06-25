.class public Lcom/igexin/b/a;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field a:Lcom/igexin/sdk/SdkMainService;


# direct methods
.method public constructor <init>(Lcom/igexin/sdk/SdkMainService;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/igexin/b/a;->a:Lcom/igexin/sdk/SdkMainService;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x2af9

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/igexin/sdk/SdkMainService;->a(Landroid/os/Message;)V

    return-void
.end method
