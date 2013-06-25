.class final Lcom/umeng/update/d;
.super Ljava/lang/Object;
.source "UmengUpdateAgent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/update/UpdateResponse;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/umeng/update/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/umeng/update/d;->b:Lcom/umeng/update/UpdateResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 245
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->a(Z)Z

    .line 246
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->b:Ljava/lang/String;

    const-string v1, "update start"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/umeng/update/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/update/d;->b:Lcom/umeng/update/UpdateResponse;

    invoke-static {v0, v1}, Lcom/umeng/update/UmengUpdateAgent;->a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V

    .line 248
    return-void
.end method
