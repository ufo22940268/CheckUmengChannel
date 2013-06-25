.class public Lsdk/a/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lsdk/c/a/e/a/b;


# instance fields
.field public a:Landroid/net/ConnectivityManager;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsdk/a/a/a/a;->a:Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lsdk/a/a/a/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Integer;Lsdk/c/a/b/c;)Lsdk/c/a/b/f;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "socket"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsdk/a/a/a/a;->a:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lsdk/a/a/a/a;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lsdk/c/a/b/a/a/f;

    invoke-direct {v0, p1, p3}, Lsdk/c/a/b/a/a/f;-><init>(Ljava/lang/String;Lsdk/c/a/b/c;)V

    goto :goto_0

    :cond_2
    const-string v1, "disConnect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lsdk/c/a/b/a/a/b;

    invoke-direct {v0, p1}, Lsdk/c/a/b/a/a/b;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lsdk/c/a/e/d;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Lsdk/c/a/b/c;

    invoke-virtual {p0, p1, p2, p3}, Lsdk/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Integer;Lsdk/c/a/b/c;)Lsdk/c/a/b/f;

    move-result-object v0

    return-object v0
.end method
