.class final Lcom/umeng/analytics/d$a;
.super Ljava/lang/Object;
.source "PolicyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/d;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/umeng/analytics/d$a;->a:Lcom/umeng/analytics/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d$a;->b:Landroid/content/Context;

    .line 427
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d$a;->a:Lcom/umeng/analytics/d;

    invoke-static {v0}, Lcom/umeng/analytics/d;->a(Lcom/umeng/analytics/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/d$a;->a:Lcom/umeng/analytics/d;

    iget-object v0, v0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    iget-object v2, p0, Lcom/umeng/analytics/d$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)V

    .line 433
    monitor-exit v1

    .line 437
    :goto_0
    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in ReportMessageHandler"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
