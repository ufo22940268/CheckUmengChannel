.class final Lcom/tencent/a/v;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/tencent/tauth/b;

.field public b:Landroid/os/Bundle;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/a/v;->d:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/tencent/a/v;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/a/v;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/tencent/a/v;->a:Lcom/tencent/tauth/b;

    return-void
.end method
