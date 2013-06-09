.class final Lcom/tencent/plus/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/plus/TouchView;


# direct methods
.method constructor <init>(Lcom/tencent/plus/TouchView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/plus/e;->a:Lcom/tencent/plus/TouchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/tencent/plus/e;->a:Lcom/tencent/plus/TouchView;

    new-instance v1, Lcom/tencent/plus/d;

    invoke-direct {v1, p0}, Lcom/tencent/plus/d;-><init>(Lcom/tencent/plus/e;)V

    invoke-virtual {v0, v1}, Lcom/tencent/plus/TouchView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/tencent/plus/e;->a:Lcom/tencent/plus/TouchView;

    invoke-static {v0}, Lcom/tencent/plus/TouchView;->b(Lcom/tencent/plus/TouchView;)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
