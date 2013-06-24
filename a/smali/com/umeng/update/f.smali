.class Lcom/umeng/update/f;
.super Ljava/lang/Object;
.source "UpdateClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/update/UpdateResponse;

.field final synthetic b:Lcom/umeng/update/e;


# direct methods
.method constructor <init>(Lcom/umeng/update/e;Lcom/umeng/update/UpdateResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/umeng/update/f;->b:Lcom/umeng/update/e;

    iput-object p2, p0, Lcom/umeng/update/f;->a:Lcom/umeng/update/UpdateResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/umeng/update/f;->b:Lcom/umeng/update/e;

    iget-object v0, v0, Lcom/umeng/update/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/update/f;->a:Lcom/umeng/update/UpdateResponse;

    invoke-static {v0, v1}, Lcom/umeng/update/UmengUpdateAgent;->showUpdateDialog(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V

    .line 64
    return-void
.end method
