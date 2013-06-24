.class final Lcom/umeng/update/a;
.super Ljava/lang/Object;
.source "UmengUpdateAgent.java"

# interfaces
.implements Lcom/umeng/common/net/k;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 62
    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 66
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 67
    new-instance v0, Lcom/umeng/update/UmengUpdateAgent$a;

    invoke-direct {v0}, Lcom/umeng/update/UmengUpdateAgent$a;-><init>()V

    .line 68
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/umeng/update/UmengUpdateAgent$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    :goto_0
    return-void

    .line 71
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 74
    :cond_1
    invoke-static {}, Lcom/umeng/update/UmengUpdateAgent;->a()Lcom/umeng/update/UmengDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 75
    invoke-static {}, Lcom/umeng/update/UmengUpdateAgent;->a()Lcom/umeng/update/UmengDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/umeng/update/UmengDownloadListener;->OnDownloadEnd(I)V

    .line 77
    :cond_2
    invoke-static {v1}, Lcom/umeng/update/UmengUpdateAgent;->a(Z)Z

    .line 78
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->b:Ljava/lang/String;

    const-string v1, "update end"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
