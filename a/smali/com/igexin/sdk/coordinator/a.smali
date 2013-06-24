.class public Lcom/igexin/sdk/coordinator/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/ServiceConnection;

.field private c:Lcom/igexin/sdk/aidl/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/coordinator/a;->b:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public a(Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/coordinator/a;->b:Landroid/content/ServiceConnection;

    return-void
.end method

.method public a(Lcom/igexin/sdk/aidl/b;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/coordinator/a;->c:Lcom/igexin/sdk/aidl/b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/coordinator/a;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Lcom/igexin/sdk/aidl/b;
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/coordinator/a;->c:Lcom/igexin/sdk/aidl/b;

    return-object v0
.end method
