.class Lcom/tencent/plus/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/plus/ImageActivity;


# direct methods
.method constructor <init>(Lcom/tencent/plus/ImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/tencent/plus/f;->a:Lcom/tencent/plus/ImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/plus/f;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v2}, Lcom/tencent/plus/ImageActivity;->i(Lcom/tencent/plus/ImageActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 467
    iget-object v2, p0, Lcom/tencent/plus/f;->a:Lcom/tencent/plus/ImageActivity;

    const-string v3, "10656"

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;J)V

    .line 468
    iget-object v0, p0, Lcom/tencent/plus/f;->a:Lcom/tencent/plus/ImageActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/plus/ImageActivity;->setResult(I)V

    .line 469
    iget-object v0, p0, Lcom/tencent/plus/f;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->j(Lcom/tencent/plus/ImageActivity;)V

    .line 470
    return-void
.end method
