.class public final Lcom/igexin/sdk/coordinator/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/ServiceConnection;

.field private c:Lcom/igexin/sdk/aidl/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/coordinator/a;->b:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public final a(Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/coordinator/a;->b:Landroid/content/ServiceConnection;

    return-void
.end method

.method public final a(Lcom/igexin/sdk/aidl/d;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/coordinator/a;->c:Lcom/igexin/sdk/aidl/d;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/coordinator/a;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/igexin/sdk/aidl/d;
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/coordinator/a;->c:Lcom/igexin/sdk/aidl/d;

    return-object v0
.end method
