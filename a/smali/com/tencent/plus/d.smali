.class Lcom/tencent/plus/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/plus/TouchView;


# direct methods
.method constructor <init>(Lcom/tencent/plus/TouchView;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/tencent/plus/d;->a:Lcom/tencent/plus/TouchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 275
    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    iget-object v0, p0, Lcom/tencent/plus/d;->a:Lcom/tencent/plus/TouchView;

    new-instance v1, Lcom/tencent/plus/c;

    invoke-direct {v1, p0}, Lcom/tencent/plus/c;-><init>(Lcom/tencent/plus/d;)V

    invoke-virtual {v0, v1}, Lcom/tencent/plus/TouchView;->post(Ljava/lang/Runnable;)Z

    .line 287
    iget-object v0, p0, Lcom/tencent/plus/d;->a:Lcom/tencent/plus/TouchView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/plus/TouchView;->a(Lcom/tencent/plus/TouchView;Z)Z

    .line 288
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
